import 'package:d_sdk/database/app_database.dart';
import 'package:drift/drift.dart';

class CachedUser {
  final String id;
  final String? name;
  final String? username;
  final String? password;
  final String? firstName;
  final String? lastname;
  final String? mobile;
  final String? token;
  final String? tokenType;
  final String? refreshToken;
  final int? tokenExpiry;
  final String? authType;
  final String baseUrl;
  final bool isLoggedIn;
  final String? email;
  final String? langKey;
  final bool? activated;
  final String? imageUrl;
  final String? checkWithServerTime;

  const CachedUser(
      {required this.id,
      this.name,
      this.username,
      this.password,
      this.firstName,
      this.lastname,
      this.mobile,
      this.token,
      this.tokenType,
      this.refreshToken,
      this.tokenExpiry,
      this.authType,
      required this.baseUrl,
      required this.isLoggedIn,
      this.email,
      this.langKey,
      this.activated,
      this.imageUrl,
      this.checkWithServerTime});

  factory CachedUser.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CachedUser(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String?>(json['name']),
      username: serializer.fromJson<String?>(json['username']),
      password: serializer.fromJson<String?>(json['password']),
      firstName: serializer.fromJson<String?>(json['firstName']),
      lastname: serializer.fromJson<String?>(json['lastname']),
      mobile: serializer.fromJson<String?>(json['mobile']),
      token: serializer.fromJson<String?>(json['token']),
      tokenType: serializer.fromJson<String?>(json['tokenType']),
      refreshToken: serializer.fromJson<String?>(json['refreshToken']),
      tokenExpiry: serializer.fromJson<int?>(json['tokenExpiry']),
      authType: serializer.fromJson<String?>(json['authType']),
      baseUrl: serializer.fromJson<String>(json['baseUrl']),
      isLoggedIn: serializer.fromJson<bool>(json['isLoggedIn']),
      email: serializer.fromJson<String?>(json['email']),
      langKey: serializer.fromJson<String?>(json['langKey']),
      activated: serializer.fromJson<bool?>(json['activated']),
      imageUrl: serializer.fromJson<String?>(json['imageUrl']),
      checkWithServerTime:
          serializer.fromJson<String?>(json['checkWithServerTime']),
    );
  }

  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String?>(name),
      'username': serializer.toJson<String?>(username),
      'password': serializer.toJson<String?>(password),
      'firstName': serializer.toJson<String?>(firstName),
      'lastname': serializer.toJson<String?>(lastname),
      'mobile': serializer.toJson<String?>(mobile),
      'token': serializer.toJson<String?>(token),
      'tokenType': serializer.toJson<String?>(tokenType),
      'refreshToken': serializer.toJson<String?>(refreshToken),
      'tokenExpiry': serializer.toJson<int?>(tokenExpiry),
      'authType': serializer.toJson<String?>(authType),
      'baseUrl': serializer.toJson<String>(baseUrl),
      'isLoggedIn': serializer.toJson<bool>(isLoggedIn),
      'email': serializer.toJson<String?>(email),
      'langKey': serializer.toJson<String?>(langKey),
      'activated': serializer.toJson<bool?>(activated),
      'imageUrl': serializer.toJson<String?>(imageUrl),
      'checkWithServerTime': serializer.toJson<String?>(checkWithServerTime),
    };
  }

  CachedUser copyWith(
          {String? id,
          bool? dirty,
          DateTime? lastModifiedDate,
          DateTime? createdDate,
          Value<String?> name = const Value.absent(),
          Value<String?> displayName = const Value.absent(),
          Value<String?> code = const Value.absent(),
          Value<String?> username = const Value.absent(),
          Value<String?> password = const Value.absent(),
          Value<String?> firstName = const Value.absent(),
          Value<String?> lastname = const Value.absent(),
          Value<String?> mobile = const Value.absent(),
          Value<String?> token = const Value.absent(),
          Value<String?> tokenType = const Value.absent(),
          Value<String?> refreshToken = const Value.absent(),
          Value<int?> tokenExpiry = const Value.absent(),
          Value<String?> authType = const Value.absent(),
          String? baseUrl,
          bool? isLoggedIn,
          Value<String?> email = const Value.absent(),
          Value<String?> langKey = const Value.absent(),
          Value<bool?> activated = const Value.absent(),
          Value<String?> imageUrl = const Value.absent(),
          Value<String?> checkWithServerTime = const Value.absent()}) =>
      CachedUser(
        id: id ?? this.id,
        name: name.present ? name.value : this.name,
        username: username.present ? username.value : this.username,
        password: password.present ? password.value : this.password,
        firstName: firstName.present ? firstName.value : this.firstName,
        lastname: lastname.present ? lastname.value : this.lastname,
        mobile: mobile.present ? mobile.value : this.mobile,
        token: token.present ? token.value : this.token,
        tokenType: tokenType.present ? tokenType.value : this.tokenType,
        refreshToken:
            refreshToken.present ? refreshToken.value : this.refreshToken,
        tokenExpiry: tokenExpiry.present ? tokenExpiry.value : this.tokenExpiry,
        authType: authType.present ? authType.value : this.authType,
        baseUrl: baseUrl ?? this.baseUrl,
        isLoggedIn: isLoggedIn ?? this.isLoggedIn,
        email: email.present ? email.value : this.email,
        langKey: langKey.present ? langKey.value : this.langKey,
        activated: activated.present ? activated.value : this.activated,
        imageUrl: imageUrl.present ? imageUrl.value : this.imageUrl,
        checkWithServerTime: checkWithServerTime.present
            ? checkWithServerTime.value
            : this.checkWithServerTime,
      );

  CachedUser copyWithCompanion(UsersCompanion data) {
    return CachedUser(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      username: data.username.present ? data.username.value : this.username,
      password: data.password.present ? data.password.value : this.password,
      firstName: data.firstName.present ? data.firstName.value : this.firstName,
      lastname: data.lastname.present ? data.lastname.value : this.lastname,
      mobile: data.mobile.present ? data.mobile.value : this.mobile,
      token: data.token.present ? data.token.value : this.token,
      tokenType: data.tokenType.present ? data.tokenType.value : this.tokenType,
      refreshToken: data.refreshToken.present
          ? data.refreshToken.value
          : this.refreshToken,
      tokenExpiry:
          data.tokenExpiry.present ? data.tokenExpiry.value : this.tokenExpiry,
      authType: data.authType.present ? data.authType.value : this.authType,
      baseUrl: data.baseUrl.present ? data.baseUrl.value : this.baseUrl,
      isLoggedIn:
          data.isLoggedIn.present ? data.isLoggedIn.value : this.isLoggedIn,
      email: data.email.present ? data.email.value : this.email,
      langKey: data.langKey.present ? data.langKey.value : this.langKey,
      activated: data.activated.present ? data.activated.value : this.activated,
      imageUrl: data.imageUrl.present ? data.imageUrl.value : this.imageUrl,
      checkWithServerTime: data.checkWithServerTime.present
          ? data.checkWithServerTime.value
          : this.checkWithServerTime,
    );
  }

  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('username: $username, ')
          ..write('password: $password, ')
          ..write('firstName: $firstName, ')
          ..write('lastname: $lastname, ')
          ..write('mobile: $mobile, ')
          ..write('token: $token, ')
          ..write('tokenType: $tokenType, ')
          ..write('refreshToken: $refreshToken, ')
          ..write('tokenExpiry: $tokenExpiry, ')
          ..write('authType: $authType, ')
          ..write('baseUrl: $baseUrl, ')
          ..write('isLoggedIn: $isLoggedIn, ')
          ..write('email: $email, ')
          ..write('langKey: $langKey, ')
          ..write('activated: $activated, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('checkWithServerTime: $checkWithServerTime')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        id,
        name,
        username,
        password,
        firstName,
        lastname,
        mobile,
        token,
        tokenType,
        refreshToken,
        tokenExpiry,
        authType,
        baseUrl,
        isLoggedIn,
        email,
        langKey,
        activated,
        imageUrl,
        checkWithServerTime
      ]);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is User &&
          other.id == this.id &&
          other.name == this.name &&
          other.username == this.username &&
          other.password == this.password &&
          other.firstName == this.firstName &&
          other.lastname == this.lastname &&
          other.mobile == this.mobile &&
          other.token == this.token &&
          other.tokenType == this.tokenType &&
          other.refreshToken == this.refreshToken &&
          other.tokenExpiry == this.tokenExpiry &&
          other.authType == this.authType &&
          other.baseUrl == this.baseUrl &&
          other.isLoggedIn == this.isLoggedIn &&
          other.email == this.email &&
          other.langKey == this.langKey &&
          other.activated == this.activated &&
          other.imageUrl == this.imageUrl &&
          other.checkWithServerTime == this.checkWithServerTime);
}
