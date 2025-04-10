import 'dart:convert';

import 'package:d_sdk/core/auth/user_detail.dart';
import 'package:d_sdk/core/cache/cache.dart';
import 'package:d_sdk/core/user_session/session_storage_manager.dart';
import 'package:d_sdk/core/utilities/list_extensions.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: UserSessionRepository)
class SdkUserSessionRepository implements UserSessionRepository {
  final CacheStorage _cacheStorage;

  SdkUserSessionRepository({required CacheStorage cacheStorage})
      : _cacheStorage = cacheStorage;

  @override
  Future<CachedUserDetail?> loadCurrentUser() async {
    final String? currentUserName = await _cacheStorage.fetch(
      CacheKeys.userKey,
    );

    final String? cachedListString =
        await _cacheStorage.fetch(CacheKeys.cachedUsersKey);

    List<CachedUserDetail> cachedList = [];
    if (cachedListString != null) {
      final List<dynamic> decoded = jsonDecode(cachedListString);
      cachedList.addAll(decoded.map((json) => CachedUserDetail.fromJson(json)));
    }

    if ((currentUserName ?? '').isEmpty || cachedList.isEmpty) return null;

    return cachedList.firstOrNullWhere((u) => currentUserName == u.username);
  }

  @override
  Future<void> storeCurrentUser(UserDetail user) async {
    // save current User on top
    await _cacheStorage.save(
      key: CacheKeys.userKey,
      value: user.username,
    );

    // update loggedIn users cache
    return _updateLoggedInUsersCache(user);
  }

  @override
  Future<List<UserDetail>> getCachedUsers() async {
    final cachedListString =
        await _cacheStorage.fetch(CacheKeys.cachedUsersKey);
    return cachedListString
            ?.let((list) => jsonDecode(cachedListString))
            ?.map<CachedUserDetail>(CachedUserDetail.fromJson) ??
        <CachedUserDetail>[];
  }

  Future<void> _updateLoggedInUsersCache(UserDetail user) async {
    final List<UserDetail> cachedList = await getCachedUsers();

    final updated =
        cachedList.where((u) => u.username != user.username).toList()
          ..add(user)
          ..map((u) => u.toJson());

    await _cacheStorage.save(
      key: CacheKeys.cachedUsersKey,
      value: jsonEncode(updated),
    );
  }

  @override
  Future<void> removeCurrentCachedUser() {
    return _cacheStorage.delete(CacheKeys.cachedUsersKey);
  }
}
