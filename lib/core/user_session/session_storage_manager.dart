import 'package:d_sdk/auth/authenticated_user_detail.dart';
import 'package:d_sdk/auth/user_detail.dart';
import 'package:d_sdk/core/cache/cached_user_detail.dart';

abstract class UserSessionRepository {
  String? getCurrentDbName();

  Future<AuthUserCachedData?> loadCurrentCachedUserData();

  Future<void> cacheCurrentAuthUserData(AuthUserCachedData user);

  Future<List<AuthUserCachedData>> getCachedAuthUsers();

  Future<void> logoutCurrentAuthCachedUser();
}
