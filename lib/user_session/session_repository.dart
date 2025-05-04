import 'package:d_sdk/user_session/session_context.dart';

abstract class SessionRepository {
  Future<void> updateActiveSessionTokenPair(TokenPair tokenPair);

  Future<void> updateActiveSession(SessionContext session);

  Future<SessionContext?> getActiveSession();

  Future<void> clearActiveSession();
}
