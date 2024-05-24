import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/modules/auth/user/entities/user_authority.entity.dart';
import 'package:d2_remote/modules/auth/user/entities/user_organisation_unit.entity.dart';
import 'package:d2_remote/modules/auth/user/entities/user_role.entity.dart';
import 'package:d2_remote/modules/auth/user/entities/user_team.entity.dart';
import 'package:d2_remote/modules/metadata/organisation_unit/entities/organisation_unit.entity.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';

@AnnotationReflectable
@Entity(tableName: 'dUser', apiResourceName: 'account')
class DUser extends IdentifiableEntity {
  @Column(nullable: true)
  final String? username;

  @Column(nullable: true)
  final String? password;

  @Column()
  final String firstName;

  @Column(nullable: true)
  final String? surname;

  @Column(nullable: true)
  final String? email;

  @Column(nullable: true)
  final String? langKey;

  @Column(nullable: true)
  bool? activated;

  @Column(nullable: true)
  final String? imageUrl;

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

  @Column(nullable: true)
  final String? teiSearchOrganisationUnits;

  @OneToMany(table: OrganisationUnit)
  List<OrganisationUnit>? organisationUnits;

  @OneToMany(table: UserTeam)
  List<UserTeam>? teams;

  @OneToMany(table: UserAuthority)
  List<UserAuthority>? authorities;

  @OneToMany(table: UserRole)
  List<UserRole>? roles;

  @Column(nullable: true)
  final dynamic dataViewOrganisationUnits;

  @Column(nullable: true)
  final String? programs;

  @Column(nullable: true)
  final String? dataSets;

  @Column()
  bool isLoggedIn;

  DUser(
      {required String id,
      this.username,
      this.password,
      required this.firstName,
      required this.surname,
      required String name,
      required this.baseUrl,
      String? shortName,
      String? displayName,
      String? code,
      String? created,
      String? lastUpdated,
      this.teiSearchOrganisationUnits,
      this.organisationUnits,
      this.teams,
      this.authorities,
      this.roles,
      this.dataViewOrganisationUnits,
      this.programs,
      this.dataSets,
      this.token,
      this.tokenType,
      this.refreshToken,
      this.tokenExpiry,
      this.authType,
      this.phoneNumber,
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
        baseUrl: jsonData['baseUrl'] ?? '',
        created: jsonData['created'],
        lastUpdated: jsonData['lastUpdated'],
        teiSearchOrganisationUnits:
            jsonData['teiSearchOrganisationUnits'].toString(),
        organisationUnits: jsonData['organisationUnits'],
        teams: jsonData['teams'],
        authorities: (jsonData['authorities'] as List<dynamic>?)
            ?.map((authority) => UserAuthority(
                  id: '${jsonData['id']}_$authority',
                  name: '${jsonData['id']}_$authority',
                  authority: authority,
                  user: jsonData['uid'],
                  dirty: jsonData['dirty'] ?? false,
                ))
            .toList(),
        roles: (jsonData['roles'] ?? [])
            .map<UserRole>((role) => UserRole(
                id: role['id'],
                name: role['name'],
                user: role['user'],
                dirty: role['dirty'] ?? false))
            .toList(),
        dataViewOrganisationUnits: jsonData['dataViewOrganisationUnits'],
        programs: jsonData['programs'].toString(),
        dataSets: jsonData['datasets'].toString(),
        isLoggedIn: jsonData['isLoggedIn'],
        email: jsonData['email'],
        activated: jsonData['activated'],
        imageUrl: jsonData['imageUrl'],
        langKey: jsonData['langKey'],
        dirty: jsonData['dirty']);
  }

  factory DUser.fromApi(Map<String, dynamic> jsonData) {
    return DUser(
        id: jsonData['id'],
        username: jsonData['username'],
        password: jsonData['password'],
        firstName: jsonData['firstName'],
        surname: jsonData['surname'],
        name: jsonData['name'],
        phoneNumber: jsonData['phoneNumber'],
        baseUrl: jsonData['baseUrl'],
        created: jsonData['created'],
        lastUpdated: jsonData['lastUpdated'],
        token: jsonData['token'],
        tokenType: jsonData['tokenType'],
        refreshToken: jsonData['refreshToken'],
        tokenExpiry: jsonData['tokenExpiry'],
        authType: jsonData['authType'],
        teiSearchOrganisationUnits:
            jsonData['teiSearchOrganisationUnits'].toString(),
        organisationUnits: jsonData['organisationUnits']
            .map<UserOrganisationUnit>((orgUnit) => UserOrganisationUnit(
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
        authorities: (jsonData['authorities'] as List<dynamic>?)
            ?.map((authority) => UserAuthority(
                  id: '${jsonData['id']}_$authority',
                  name: '${jsonData['id']}_$authority',
                  authority: authority,
                  user: jsonData['uid'],
                  dirty: jsonData['dirty'] ?? false,
                ))
            .toList(),
        roles: (jsonData['userRoles'] ?? [])
            .map<UserRole>((role) => UserRole(
                id: '${jsonData['id']}_${role['id']}',
                name: role['name'],
                user: jsonData['id'],
                dirty: jsonData['dirty'] ?? true))
            .toList(),
        dataViewOrganisationUnits: jsonData['dataViewOrganisationUnits'],
        programs: jsonData['programs'] != null
            ? jsonData['programs'].toString()
            : null,
        dataSets: jsonData['datasets'] != null
            ? jsonData['datasets'].toString()
            : null,
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
    data['teiSearchOrganisationUnits'] = this.teiSearchOrganisationUnits;
    data['organisationUnits'] = this.organisationUnits;
    data['teams'] = this.teams;
    data['authorities'] =
        this.authorities?.map((authority) => authority.authority).toList();
    data['roles'] = this.roles;
    data['dataViewOrganisationUnits'] = this.dataViewOrganisationUnits;
    data['programs'] = this.programs;
    data['isLoggedIn'] = this.isLoggedIn;
    data['baseUrl'] = this.baseUrl;
    data['dirty'] = this.dirty;

    return data;
  }
}
