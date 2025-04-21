import 'package:d_sdk/user_session/session_context.dart';

abstract class SessionRepository {
  // Future<bool> hasValidActiveSession();

  Future<void> updateActiveSessionTokenPair(TokenPair tokenPair);

  Future<void> updateActiveSession(SessionContext session);

  // Future<void> updateSessionRegister(SessionContext session);

  Future<SessionContext?> getActiveSession();

  // Future<List<SessionContext>> getAllSessions();
  //
  // Future<void> deactivateSession();

  Future<void> clearActiveSession();
}
