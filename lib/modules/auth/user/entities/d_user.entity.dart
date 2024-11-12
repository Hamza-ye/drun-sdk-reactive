import 'package:d2_remote/core/annotations/index.dart';
import 'package:d2_remote/modules/auth/user/entities/d_user_authority.entity.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';

@AnnotationReflectable
@Entity(tableName: 'user', apiResourceName: 'users')
class DUser extends IdentifiableEntity {
  @Column(nullable: true)
  final String? username;

  @Column(nullable: true)
  final String? password;

  @Column(nullable: true)
  final String? firstName;

  @Column(nullable: true)
  final String? surname;

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

  @Column(nullable: true)
  String? checkWithServerTime;

  DUser(
      {required String? id,
      String? uid,
      this.username,
      this.password,
      String? name,
      required this.baseUrl,
      this.phoneNumber,
      this.token,
      this.tokenType,
      this.refreshToken,
      this.tokenExpiry,
      this.authType,
      String? shortName,
      String? displayName,
      String? code,
      String? createdDate,
      String? lastModifiedDate,
      this.firstName,
      this.surname,
      this.authorities,
      required this.isLoggedIn,
      // NMC
      this.email,
      this.activated,
      this.imageUrl,
      this.langKey,
      this.checkWithServerTime,
      required bool dirty})
      : super(
            id: id,
            uid: uid,
            name: name,
            dirty: dirty,
            createdDate: createdDate,
            lastModifiedDate: lastModifiedDate);

  factory DUser.fromJson(Map<String, dynamic> jsonData) {
    return DUser(
        id: jsonData['id'],
        uid: jsonData['uid'],
        username: jsonData['username'],
        password: jsonData['password'],
        firstName: jsonData['firstName'],
        surname: jsonData['lastName'],
        token: jsonData['token'],
        tokenType: jsonData['tokenType'],
        refreshToken: jsonData['refreshToken'],
        tokenExpiry: jsonData['tokenExpiry'],
        authType: jsonData['authType'],
        name: jsonData['name'],
        phoneNumber: jsonData['mobile'],
        baseUrl: jsonData['baseUrl'],
        authorities: (jsonData['authorities'] ?? [])
            .map<DUserAuthority>((authority) => DUserAuthority(
                id: authority['uid'],
                uid: authority['uid'],
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
        createdDate: jsonData['createdDate'],
        lastModifiedDate:
            jsonData['checkWithServerTime'] ?? jsonData['lastModifiedDate'],
        checkWithServerTime: jsonData['checkWithServerTime'],
        dirty: jsonData['dirty']);
  }

  factory DUser.fromApi(Map<String, dynamic> jsonData) {
    return DUser(
        id: jsonData['id'].toString(),
        uid: jsonData['uid'],
        username: jsonData['username'],
        password: jsonData['password'],
        firstName: jsonData['firstName'],
        surname: jsonData['lastName'],
        name: jsonData['username'],
        phoneNumber: jsonData['phoneNumber'],
        baseUrl: jsonData['baseUrl'],
        token: jsonData['token'],
        tokenType: jsonData['tokenType'],
        refreshToken: jsonData['refreshToken'],
        tokenExpiry: jsonData['tokenExpiry'],
        authType: jsonData['authType'],
        authorities: (jsonData['authorities'] ?? [])
            .map<DUserAuthority>((authority) => DUserAuthority(
                uid: '${jsonData['uid']}_$authority',
                name: '${jsonData['uid']}_$authority',
                id: jsonData['uid'] ?? 0,
                authority: authority,
                user: jsonData['uid'].toString(),
                dirty: jsonData['dirty'] ?? false))
            .toList(),
        email: jsonData['email'],
        activated: jsonData['activated'],
        imageUrl: jsonData['imageUrl'],
        langKey: jsonData['langKey'],
        isLoggedIn: jsonData['isLoggedIn'],
        createdDate: jsonData['createdDate'],
        lastModifiedDate:
            jsonData['checkWithServerTime'] ?? jsonData['lastModifiedDate'],
        checkWithServerTime: jsonData['checkWithServerTime'],
        dirty: jsonData['dirty'] ?? false);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['id'] = this.id;
    data['uid'] = this.uid;
    data['name'] = this.name;
    data['firstName'] = this.firstName;
    data['surname'] = this.surname;
    data['username'] = this.username;
    data['password'] = this.password;
    data['phoneNumber'] = this.phoneNumber;
    data['token'] = this.token;
    data['tokenType'] = this.tokenType;
    data['refreshToken'] = this.refreshToken;
    data['mobile'] = this.phoneNumber;
    data['tokenExpiry'] = this.tokenExpiry;
    data['authType'] = this.authType;
    data['authorities'] = this.authorities;
    data['isLoggedIn'] = this.isLoggedIn;
    data['baseUrl'] = this.baseUrl;

    data['email'] = this.email;
    data['activated'] = this.activated;
    data['imageUrl'] = this.imageUrl;
    data['langKey'] = this.langKey;
    data['createdDate'] = this.createdDate;
    data['lastModifiedDate'] = this.lastModifiedDate;
    data['checkWithServerTime'] = this.checkWithServerTime;

    data['dirty'] = this.dirty;

    return data;
  }
}
