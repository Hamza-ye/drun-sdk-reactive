import 'package:d_sdk/core/auth/user_detail.dart';
import 'package:d_sdk/core/cache/cached_user_detail.dart';

abstract class UserSessionRepository {
  Future<CachedUserDetail?> loadCurrentUser();

  Future<void> storeCurrentUser(UserDetail user);

  Future<List<UserDetail>> getCachedUsers();

  Future<void> removeCurrentCachedUser();
}
