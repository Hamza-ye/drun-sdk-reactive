// import 'package:d2_remote/core/d2_remote_configuration.dart';
// import 'package:d2_remote/d2_remote.dart';
//
// class DRunManager {
//   DRun? dRun;
//
//   static final DRunManager _instance = DRunManager._internal();
//
//   // using a factory is important
//   // because it promises to return _an_ object of this type
//   // but it doesn't promise to make a new one.
//   factory DRunManager() {
//     return _instance;
//   }
//
//   // This named constructor is the "real" constructor
//   // It'll be called exactly once, by the static property assignment above
//   // it's also private, so it can only be called in this class
//   DRunManager._internal() {
//     // initialization logic
//   }
//
//   DRun? getDRun() {
//     if (dRun == null) throw Exception("DRun is not instantiated yet");
//     return dRun;
//   }
//
//   bool isD2Instantiated() {
//     return dRun != null;
//   }
//
//   Future<DRun> instantiateDRun(DRunConfiguration d2Config) {
//     return DRun.logIn(username: username, password: password, url: url)
//   }
// }
