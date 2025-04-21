// import 'package:d_sdk/auth/auth_manager.dart';
// import 'package:d_sdk/core/exception/session_init_exception.dart';
// import 'package:d_sdk/database/database.dart';
// import 'package:d_sdk/datasource/abstract_datasource.dart';
// import 'package:d_sdk/di/injection.dart';
// import 'package:d_sdk/user_session/user_session.dart';
// import 'package:fast_immutable_collections/fast_immutable_collections.dart';
// import 'package:get_it/get_it.dart';
// import 'package:injectable/injectable.dart';
//
// @Injectable(scope: SessionContextFactory.SessionContext.sessionScopeName)
// class SessionContextFactory {
//   SessionContextFactory(
//       {required SessionRepository repository})
//       : _repository = repository;
//
//
//   @FactoryMethod(preResolve: true)
//   static Future<SessionContext> init(
//       SessionRepository sessionRepository) async {
//     final session = await sessionRepository.getActiveSession();
//     throwIf(session == null, SessionInitException());
//     return session!;
//   }
//
//   // static const String scopeName = 'session';
//
//   final SessionRepository _repository;
//
//
//   // SessionContext get currentSession => _session;
//
//   // TokenPair? getTokenPair() => _session.getTokenPair();
//
//   Future<void> saveTokenPair(TokenPair tokenPair) async {
//     // _session = _session.copyWith(
//     //     accessToken: tokenPair.accessToken,
//     //     refreshToken: tokenPair.refreshToken);
//     // await _repository.updateActiveSessionTokenPair(tokenPair);
//   }
//
//   // bool get isAccessTokenValid => _session.isAccessTokenValid;
//
//   Future<void> clearTokenPair() async {
//     // _session = SessionContext.fromMap(
//     //     {..._session.toMap(), 'accessToken': null, 'refreshToken': null});
//     // await _repository.updateSessionRegister(_session);
//   }
//
//   /// On login/switch
//   /// after this everything will be resolved from GetIt (db, client, repos)
//   /// uses the new context.
//   static void pushSessionScope(SessionContext context) {
//     // _initSessionScope(context,
//     //     dispose: () => appLocator<DbManager>().closeDatabase());
//   }
//
//   /// On logout/cleanup:
//   static Future<void> popActiveSessionScope() async {
//     await appLocator<AuthManager>().logout();
//     await appLocator.popScopesTill(SessionContext.sessionScopeName);
//     await appLocator<SessionRepository>().deactivateSession();
//   }
//
//   // initializes the registration of sessionScope-scope dependencies inside of GetIt
//   // static GetIt _initSessionScope(
//   //   SessionContext context, {
//   //   ScopeDisposeFunc? dispose,
//   // }) {
//   //   return GetItHelper(appLocator).initScope(
//   //     'sessionScope',
//   //     dispose: dispose,
//   //     init: (GetItHelper gh) {
//   //       final dio = gh<Dio>();
//   //       gh.lazySingleton<DbManager>(() => DbManager(context: context));
//   //
//   //       gh.lazySingleton<SessionScope>(() => SessionScope(
//   //           session: context, repository: gh<SessionRepository>()));
//   //
//   //       gh.factory<Dio>(() {
//   //         final authDio = Dio(dio.options);
//   //         authDio.interceptors.add(AuthInterceptor(
//   //             sessionScope: gh<SessionScope>(), baseUrl: dio.options.baseUrl));
//   //         return authDio;
//   //       });
//   //
//   //       ///// init db repositories
//   //       setupSdkLocator();
//   //       ///////////////////////////////
//   //
//   //       gh.lazySingleton<SyncProgressNotifier>(
//   //         () => SyncProgressNotifier(),
//   //         dispose: (i) => i.dispose(),
//   //       );
//   //
//   //       gh.factory<SyncExecutor>(() => SyncExecutor(
//   //           dataSources: IMap.fromIterable(
//   //               appLocator.getAll<AbstractDatasource<dynamic>>(),
//   //               keyMapper: (r) => r.apiResourceName,
//   //               valueMapper: (r) => r),
//   //           progressNotifier: gh<SyncProgressNotifier>()));
//   //       gh.factory<LoadHomeItems>(
//   //           () => LoadHomeItems(dbManager: gh<DbManager>()));
//   //       gh.factory<SyncCoordinator>(() => SyncCoordinator(
//   //             gh<SyncMetadataRepository>(),
//   //             gh<SyncScheduler>(),
//   //             gh<SyncExecutor>(),
//   //           ));
//   //     },
//   //   );
//   // }
// }
