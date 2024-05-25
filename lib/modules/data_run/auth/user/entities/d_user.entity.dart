import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/modules/auth/user/entities/user_organisation_unit.entity.dart';
import 'package:d2_remote/modules/auth/user/entities/user_team.entity.dart';
import 'package:d2_remote/modules/data_run/auth/user/entities/d_user_authority.entity.dart';
import 'package:d2_remote/modules/data_run/auth/user/entities/d_user_organisation_unit.entity.dart';
import 'package:d2_remote/modules/data_run/auth/user/entities/d_user_team.entity.dart';
import 'package:d2_remote/modules/data_run/village_location/entities/d_organisation_unit.entity.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';

@AnnotationReflectable
@Entity(tableName: 'dUser', apiResourceName: 'account')
class DUser extends IdentifiableEntity {
  @Column(nullable: true)
  @Column()
  final String firstName;

  @Column(nullable: true)
  final String? surname;

  @Column(nullable: true)
  final String? username;

  @Column(nullable: true)
  final String? password;

  @Column(nullable: true)
  final String? phoneNumber;

  @Column(nullable: true)
  final String? token;

  @Column(nullable: true)
  final String? tokenType;

  @Column(nullable: true)
  final String? refreshToken;

  @Column(nullable: true)
  final int? tokenExpiry;

  @Column(nullable: true)
  final String? authType;

  @Column()
  final String baseUrl;

  @OneToMany(table: DOrganisationUnit)
  List<DOrganisationUnit>? organisationUnits;

  @OneToMany(table: DUserTeam)
  List<DUserTeam>? teams;

  @OneToMany(table: DUserAuthority)
  List<DUserAuthority>? authorities;

  @Column()
  bool isLoggedIn;

  // NMC
  @Column(nullable: true)
  final String? email;

  @Column(nullable: true)
  final String? langKey;

  @Column(nullable: true)
  bool? activated;

  @Column(nullable: true)
  final String? imageUrl;

  DUser(
      {required String id,
      required String name,
      required this.baseUrl,
      this.username,
      this.password,
      this.phoneNumber,
      this.token,
      this.tokenType,
      this.refreshToken,
      this.tokenExpiry,
      this.authType,
      String? shortName,
      String? displayName,
      String? code,
      String? created,
      String? lastUpdated,
      required this.firstName,
      required this.surname,
      this.organisationUnits,
      this.teams,
      this.authorities,
      required this.isLoggedIn,
      // NMC
      this.email,
      this.activated,
      this.imageUrl,
      this.langKey,
      required bool dirty})
      : super(
            id: id,
            name: name,
            dirty: dirty,
            created: created,
            lastUpdated: lastUpdated);

  factory DUser.fromJson(Map<String, dynamic> jsonData) {
    return DUser(
        id: jsonData['id'],
        username: jsonData['login'],
        password: jsonData['password'],
        firstName: jsonData['firstName'],
        surname: jsonData['lastName'],
        token: jsonData['token'],
        tokenType: jsonData['tokenType'],
        refreshToken: jsonData['refreshToken'],
        tokenExpiry: jsonData['tokenExpiry'],
        authType: jsonData['authType'],
        name: jsonData['name'],
        phoneNumber: jsonData['phoneNumber'],
        baseUrl: jsonData['baseUrl'],
        created: jsonData['created'],
        lastUpdated: jsonData['lastUpdated'],
        organisationUnits: jsonData['organisationUnits'],
        teams: jsonData['teams'],
        authorities: (jsonData['authorities'] ?? [])
            .map<DUserAuthority>((authority) => DUserAuthority(
                id: authority['id'],
                name: authority['name'],
                authority: authority['authority'],
                user: authority['user'],
                dirty: authority['dirty'] ?? false))
            .toList(),
        isLoggedIn: jsonData['isLoggedIn'],
        email: jsonData['email'],
        activated: jsonData['activated'],
        imageUrl: jsonData['imageUrl'],
        langKey: jsonData['langKey'],
        dirty: jsonData['dirty']);
  }

  factory DUser.fromApi(Map<String, dynamic> jsonData) {
    return DUser(
        id: jsonData['id'].toString(),
        username: jsonData['username'],
        password: jsonData['password'],
        firstName: jsonData['firstName'],
        surname: jsonData['lastName'],
        name: jsonData['name'] ?? jsonData['username'],
        phoneNumber: jsonData['phoneNumber'],
        baseUrl: jsonData['baseUrl'],
        created: jsonData['created'],
        lastUpdated: jsonData['lastUpdated'],
        token: jsonData['token'],
        tokenType: jsonData['tokenType'],
        refreshToken: jsonData['refreshToken'],
        tokenExpiry: jsonData['tokenExpiry'],
        authType: jsonData['authType'],
        organisationUnits: jsonData['organisationUnits']
            ?.map<UserOrganisationUnit>((orgUnit) => DUserOrganisationUnit(
                id: '${jsonData['id']}_${orgUnit['id']}',
                name: '${jsonData['id']}_${orgUnit['id']}',
                orgUnit: orgUnit['id'],
                user: jsonData['id'],
                type: 'DATA_VIEW',
                dirty: jsonData['dirty'] ?? false))
            .toList(),
        teams: jsonData['teams']
                ?.map<UserTeam>((team) => UserTeam(
                    id: '${jsonData['id']}_${team['id']}',
                    name: '${jsonData['id']}_${team['id']}',
                    team: team['id'],
                    user: jsonData['id'],
                    dirty: jsonData['dirty'] ?? false))
                .toList() ??
            [],
        authorities: (jsonData['authorities'] ?? [])
            .map<DUserAuthority>((authority) => DUserAuthority(
                id: '${jsonData['id']}_$authority',
                name: '${jsonData['id']}_$authority',
                authority: authority,
                user: jsonData['id'].toString(),
                dirty: jsonData['dirty'] ?? false))
            .toList(),
        email: jsonData['email'],
        activated: jsonData['activated'],
        imageUrl: jsonData['imageUrl'],
        langKey: jsonData['langKey'],
        isLoggedIn: jsonData['isLoggedIn'],
        dirty: jsonData['dirty'] ?? false);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['id'] = this.id;
    data['name'] = this.name;
    data['firstName'] = this.firstName;
    data['surname'] = this.surname;
    data['username'] = this.username;
    data['password'] = this.password;
    data['phoneNumber'] = this.phoneNumber;
    data['created'] = this.created;
    data['lastUpdated'] = this.lastUpdated;
    data['token'] = this.token;
    data['tokenType'] = this.tokenType;
    data['refreshToken'] = this.refreshToken;
    data['phoneNumber'] = this.phoneNumber;
    data['tokenExpiry'] = this.tokenExpiry;
    data['authType'] = this.authType;
    data['organisationUnits'] = this.organisationUnits;
    data['teams'] = this.teams;
    data['authorities'] = this.authorities;
    data['isLoggedIn'] = this.isLoggedIn;
    data['baseUrl'] = this.baseUrl;

    data['email'] = this.email;
    data['activated'] = this.activated;
    data['imageUrl'] = this.imageUrl;
    data['langKey'] = this.langKey;

    data['dirty'] = this.dirty;

    return data;
  }
}
