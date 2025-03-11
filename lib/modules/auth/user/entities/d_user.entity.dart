import 'package:d2_remote/modules/auth/user/entities/d_user_authority.entity.dart';
import 'package:d2_remote/shared/entities/identifiable.entity.dart';

import 'package:d2_remote/core/annotations/index.dart' as legacy;

@legacy.AnnotationReflectable
@legacy.Entity(tableName: 'user', apiResourceName: 'users')
class User extends IdentifiableEntity {
  @legacy.Column(nullable: true)
  final String? username;

  @legacy.Column(nullable: true)
  final String? password;

  @legacy.Column(nullable: true)
  final String? firstName;

  @legacy.Column(nullable: true)
  final String? surname;

  @legacy.Column(nullable: true)
  final String? phoneNumber;

  @legacy.Column(nullable: true)
  final String? token;

  @legacy.Column(nullable: true)
  final String? tokenType;

  @legacy.Column(nullable: true)
  final String? refreshToken;

  @legacy.Column(nullable: true)
  final int? tokenExpiry;

  @legacy.Column(nullable: true)
  final String? authType;

  @legacy.Column()
  final String baseUrl;

  @legacy.OneToMany(table: UserAuthority)
  List<UserAuthority>? authorities;

  @legacy.Column()
  bool isLoggedIn;

  // NMC
  @legacy.Column(nullable: true)
  final String? email;

  @legacy.Column(nullable: true)
  final String? langKey;

  @legacy.Column(nullable: true)
  bool? activated;

  @legacy.Column(nullable: true)
  final String? imageUrl;

  @legacy.Column(nullable: true)
  String? checkWithServerTime;

  User(
      {required String? id,
      // String? uid,
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
            // uid: uid,
            name: name,
            dirty: dirty,
            createdDate: createdDate,
            lastModifiedDate: lastModifiedDate);

  factory User.fromJson(Map<String, dynamic> jsonData) {
    final List<UserAuthority> authorities = jsonData['authorities']
            is List<UserAuthority>
        ? jsonData['authorities']
        : (jsonData['authorities'] ?? []).map<UserAuthority>((authority) {
            final auth =
                authority is UserAuthority ? authority.toJson() : authority;
            return UserAuthority(
                id: auth['uid'] ?? auth['id'].toString(),
                // id: auth['uid'],
                // uid: auth['uid'] ?? auth['id'].toString(),
                name: auth['name'],
                authority: auth['authority'],
                user: auth['user'],
                dirty: auth['dirty'] ?? false);
          }).toList();
    return User(
        id: jsonData['uid'] ?? jsonData['id'].toString(),
        // uid: jsonData['uid'],
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
        authorities: authorities,
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

  factory User.fromApi(Map<String, dynamic> jsonData) {
    return User(
        id: jsonData['uid'],
        // uid: jsonData['uid'],
        username: jsonData['username'],
        password: jsonData['password'],
        firstName: jsonData['firstName'],
        surname: jsonData['lastName'],
        name: jsonData['username'],
        phoneNumber: jsonData['mobile'],
        baseUrl: jsonData['baseUrl'],
        token: jsonData['token'],
        tokenType: jsonData['tokenType'],
        refreshToken: jsonData['refreshToken'],
        tokenExpiry: jsonData['tokenExpiry'],
        authType: jsonData['authType'],
        authorities: (jsonData['authorities'] ?? [])
            .map<UserAuthority>((authority) => UserAuthority(
                id: '${jsonData['uid']}_$authority',
                name: '${jsonData['uid']}_$authority',
                // id: jsonData['uid'] ?? 0,
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
    data['uid'] = this.id;
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
