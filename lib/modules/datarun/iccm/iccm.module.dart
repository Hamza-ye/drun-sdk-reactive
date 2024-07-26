import 'package:d2_remote/modules/datarun/iccm/queries/chv_register.query.dart';
import 'package:d2_remote/modules/datarun/iccm/queries/chv_session.query.dart';
import 'package:d2_remote/modules/datarun/iccm/queries/chv_supply.query.dart';

class IccmModule {
  static createTables() async {
    await ChvRegisterQuery().createTable();
    await ChvSessionQuery().createTable();
    await ChvSupplyQuery().createTable();
  }

  ChvRegisterQuery get chvRegister => ChvRegisterQuery();

  ChvSessionQuery get chvSession => ChvSessionQuery();

  ChvSupplyQuery get chvSupply => ChvSupplyQuery();
}
