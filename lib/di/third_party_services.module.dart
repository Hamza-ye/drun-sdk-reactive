import 'package:d_sdk/core/exception/session_init_exception.dart';
import 'package:d_sdk/user_session/session_context.dart';
import 'package:d_sdk/user_session/session_storage_manager.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

@module
abstract class ThirdPartyServicesModule {
  @preResolve
  @Injectable(scope: SessionContext.activeSessionScope)
  Future<SessionContext> getSessionScope(SessionRepository repo) async {
    final session = await repo.getActiveSession();
    throwIf(session == null, SessionInitException());
    return session!;
  }
}
