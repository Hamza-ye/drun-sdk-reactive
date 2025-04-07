// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $UsersTable extends Users with TableInfo<$UsersTable, User> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UsersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lastModifiedDateMeta =
      const VerificationMeta('lastModifiedDate');
  @override
  late final GeneratedColumn<DateTime> lastModifiedDate =
      GeneratedColumn<DateTime>('last_modified_date', aliasedName, false,
          type: DriftSqlType.dateTime,
          requiredDuringInsert: false,
          defaultValue: currentDateAndTime);
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  static const VerificationMeta _usernameMeta =
      const VerificationMeta('username');
  @override
  late final GeneratedColumn<String> username = GeneratedColumn<String>(
      'username', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _passwordMeta =
      const VerificationMeta('password');
  @override
  late final GeneratedColumn<String> password = GeneratedColumn<String>(
      'password', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _firstNameMeta =
      const VerificationMeta('firstName');
  @override
  late final GeneratedColumn<String> firstName = GeneratedColumn<String>(
      'first_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _lastnameMeta =
      const VerificationMeta('lastname');
  @override
  late final GeneratedColumn<String> lastname = GeneratedColumn<String>(
      'lastname', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _mobileMeta = const VerificationMeta('mobile');
  @override
  late final GeneratedColumn<String> mobile = GeneratedColumn<String>(
      'mobile', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _langKeyMeta =
      const VerificationMeta('langKey');
  @override
  late final GeneratedColumn<String> langKey = GeneratedColumn<String>(
      'lang_key', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('ar'));
  static const VerificationMeta _activatedMeta =
      const VerificationMeta('activated');
  @override
  late final GeneratedColumn<bool> activated = GeneratedColumn<bool>(
      'activated', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("activated" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _imageUrlMeta =
      const VerificationMeta('imageUrl');
  @override
  late final GeneratedColumn<String> imageUrl = GeneratedColumn<String>(
      'image_url', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _authoritiesMeta =
      const VerificationMeta('authorities');
  @override
  late final GeneratedColumnWithTypeConverter<List<String>, String>
      authorities = GeneratedColumn<String>('authorities', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<String>>($UsersTable.$converterauthorities);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        lastModifiedDate,
        createdDate,
        username,
        password,
        firstName,
        lastname,
        mobile,
        email,
        langKey,
        activated,
        imageUrl,
        authorities
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'users';
  @override
  VerificationContext validateIntegrity(Insertable<User> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('last_modified_date')) {
      context.handle(
          _lastModifiedDateMeta,
          lastModifiedDate.isAcceptableOrUnknown(
              data['last_modified_date']!, _lastModifiedDateMeta));
    }
    if (data.containsKey('created_date')) {
      context.handle(
          _createdDateMeta,
          createdDate.isAcceptableOrUnknown(
              data['created_date']!, _createdDateMeta));
    }
    if (data.containsKey('username')) {
      context.handle(_usernameMeta,
          username.isAcceptableOrUnknown(data['username']!, _usernameMeta));
    } else if (isInserting) {
      context.missing(_usernameMeta);
    }
    if (data.containsKey('password')) {
      context.handle(_passwordMeta,
          password.isAcceptableOrUnknown(data['password']!, _passwordMeta));
    } else if (isInserting) {
      context.missing(_passwordMeta);
    }
    if (data.containsKey('first_name')) {
      context.handle(_firstNameMeta,
          firstName.isAcceptableOrUnknown(data['first_name']!, _firstNameMeta));
    }
    if (data.containsKey('lastname')) {
      context.handle(_lastnameMeta,
          lastname.isAcceptableOrUnknown(data['lastname']!, _lastnameMeta));
    }
    if (data.containsKey('mobile')) {
      context.handle(_mobileMeta,
          mobile.isAcceptableOrUnknown(data['mobile']!, _mobileMeta));
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    }
    if (data.containsKey('lang_key')) {
      context.handle(_langKeyMeta,
          langKey.isAcceptableOrUnknown(data['lang_key']!, _langKeyMeta));
    }
    if (data.containsKey('activated')) {
      context.handle(_activatedMeta,
          activated.isAcceptableOrUnknown(data['activated']!, _activatedMeta));
    }
    if (data.containsKey('image_url')) {
      context.handle(_imageUrlMeta,
          imageUrl.isAcceptableOrUnknown(data['image_url']!, _imageUrlMeta));
    }
    context.handle(_authoritiesMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  User map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return User(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      lastModifiedDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}last_modified_date'])!,
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date'])!,
      username: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}username'])!,
      password: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}password'])!,
      firstName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}first_name']),
      lastname: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}lastname']),
      mobile: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}mobile']),
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email']),
      langKey: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}lang_key'])!,
      activated: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}activated'])!,
      imageUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image_url']),
      authorities: $UsersTable.$converterauthorities.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}authorities'])),
    );
  }

  @override
  $UsersTable createAlias(String alias) {
    return $UsersTable(attachedDatabase, alias);
  }

  static TypeConverter<List<String>, String?> $converterauthorities =
      const ListConverter<String>();
}

class User extends DataClass implements Insertable<User> {
  final String id;
  final DateTime lastModifiedDate;
  final DateTime createdDate;
  final String username;
  final String password;
  final String? firstName;
  final String? lastname;
  final String? mobile;
  final String? email;
  final String langKey;
  final bool activated;
  final String? imageUrl;
  final List<String> authorities;
  const User(
      {required this.id,
      required this.lastModifiedDate,
      required this.createdDate,
      required this.username,
      required this.password,
      this.firstName,
      this.lastname,
      this.mobile,
      this.email,
      required this.langKey,
      required this.activated,
      this.imageUrl,
      required this.authorities});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['last_modified_date'] = Variable<DateTime>(lastModifiedDate);
    map['created_date'] = Variable<DateTime>(createdDate);
    map['username'] = Variable<String>(username);
    map['password'] = Variable<String>(password);
    if (!nullToAbsent || firstName != null) {
      map['first_name'] = Variable<String>(firstName);
    }
    if (!nullToAbsent || lastname != null) {
      map['lastname'] = Variable<String>(lastname);
    }
    if (!nullToAbsent || mobile != null) {
      map['mobile'] = Variable<String>(mobile);
    }
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String>(email);
    }
    map['lang_key'] = Variable<String>(langKey);
    map['activated'] = Variable<bool>(activated);
    if (!nullToAbsent || imageUrl != null) {
      map['image_url'] = Variable<String>(imageUrl);
    }
    {
      map['authorities'] = Variable<String>(
          $UsersTable.$converterauthorities.toSql(authorities));
    }
    return map;
  }

  UsersCompanion toCompanion(bool nullToAbsent) {
    return UsersCompanion(
      id: Value(id),
      lastModifiedDate: Value(lastModifiedDate),
      createdDate: Value(createdDate),
      username: Value(username),
      password: Value(password),
      firstName: firstName == null && nullToAbsent
          ? const Value.absent()
          : Value(firstName),
      lastname: lastname == null && nullToAbsent
          ? const Value.absent()
          : Value(lastname),
      mobile:
          mobile == null && nullToAbsent ? const Value.absent() : Value(mobile),
      email:
          email == null && nullToAbsent ? const Value.absent() : Value(email),
      langKey: Value(langKey),
      activated: Value(activated),
      imageUrl: imageUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(imageUrl),
      authorities: Value(authorities),
    );
  }

  factory User.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return User(
      id: serializer.fromJson<String>(json['id']),
      lastModifiedDate: serializer.fromJson<DateTime>(json['lastModifiedDate']),
      createdDate: serializer.fromJson<DateTime>(json['createdDate']),
      username: serializer.fromJson<String>(json['username']),
      password: serializer.fromJson<String>(json['password']),
      firstName: serializer.fromJson<String?>(json['firstName']),
      lastname: serializer.fromJson<String?>(json['lastname']),
      mobile: serializer.fromJson<String?>(json['mobile']),
      email: serializer.fromJson<String?>(json['email']),
      langKey: serializer.fromJson<String>(json['langKey']),
      activated: serializer.fromJson<bool>(json['activated']),
      imageUrl: serializer.fromJson<String?>(json['imageUrl']),
      authorities: serializer.fromJson<List<String>>(json['authorities']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'lastModifiedDate': serializer.toJson<DateTime>(lastModifiedDate),
      'createdDate': serializer.toJson<DateTime>(createdDate),
      'username': serializer.toJson<String>(username),
      'password': serializer.toJson<String>(password),
      'firstName': serializer.toJson<String?>(firstName),
      'lastname': serializer.toJson<String?>(lastname),
      'mobile': serializer.toJson<String?>(mobile),
      'email': serializer.toJson<String?>(email),
      'langKey': serializer.toJson<String>(langKey),
      'activated': serializer.toJson<bool>(activated),
      'imageUrl': serializer.toJson<String?>(imageUrl),
      'authorities': serializer.toJson<List<String>>(authorities),
    };
  }

  User copyWith(
          {String? id,
          DateTime? lastModifiedDate,
          DateTime? createdDate,
          String? username,
          String? password,
          Value<String?> firstName = const Value.absent(),
          Value<String?> lastname = const Value.absent(),
          Value<String?> mobile = const Value.absent(),
          Value<String?> email = const Value.absent(),
          String? langKey,
          bool? activated,
          Value<String?> imageUrl = const Value.absent(),
          List<String>? authorities}) =>
      User(
        id: id ?? this.id,
        lastModifiedDate: lastModifiedDate ?? this.lastModifiedDate,
        createdDate: createdDate ?? this.createdDate,
        username: username ?? this.username,
        password: password ?? this.password,
        firstName: firstName.present ? firstName.value : this.firstName,
        lastname: lastname.present ? lastname.value : this.lastname,
        mobile: mobile.present ? mobile.value : this.mobile,
        email: email.present ? email.value : this.email,
        langKey: langKey ?? this.langKey,
        activated: activated ?? this.activated,
        imageUrl: imageUrl.present ? imageUrl.value : this.imageUrl,
        authorities: authorities ?? this.authorities,
      );
  User copyWithCompanion(UsersCompanion data) {
    return User(
      id: data.id.present ? data.id.value : this.id,
      lastModifiedDate: data.lastModifiedDate.present
          ? data.lastModifiedDate.value
          : this.lastModifiedDate,
      createdDate:
          data.createdDate.present ? data.createdDate.value : this.createdDate,
      username: data.username.present ? data.username.value : this.username,
      password: data.password.present ? data.password.value : this.password,
      firstName: data.firstName.present ? data.firstName.value : this.firstName,
      lastname: data.lastname.present ? data.lastname.value : this.lastname,
      mobile: data.mobile.present ? data.mobile.value : this.mobile,
      email: data.email.present ? data.email.value : this.email,
      langKey: data.langKey.present ? data.langKey.value : this.langKey,
      activated: data.activated.present ? data.activated.value : this.activated,
      imageUrl: data.imageUrl.present ? data.imageUrl.value : this.imageUrl,
      authorities:
          data.authorities.present ? data.authorities.value : this.authorities,
    );
  }

  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('id: $id, ')
          ..write('lastModifiedDate: $lastModifiedDate, ')
          ..write('createdDate: $createdDate, ')
          ..write('username: $username, ')
          ..write('password: $password, ')
          ..write('firstName: $firstName, ')
          ..write('lastname: $lastname, ')
          ..write('mobile: $mobile, ')
          ..write('email: $email, ')
          ..write('langKey: $langKey, ')
          ..write('activated: $activated, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('authorities: $authorities')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      lastModifiedDate,
      createdDate,
      username,
      password,
      firstName,
      lastname,
      mobile,
      email,
      langKey,
      activated,
      imageUrl,
      authorities);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is User &&
          other.id == this.id &&
          other.lastModifiedDate == this.lastModifiedDate &&
          other.createdDate == this.createdDate &&
          other.username == this.username &&
          other.password == this.password &&
          other.firstName == this.firstName &&
          other.lastname == this.lastname &&
          other.mobile == this.mobile &&
          other.email == this.email &&
          other.langKey == this.langKey &&
          other.activated == this.activated &&
          other.imageUrl == this.imageUrl &&
          other.authorities == this.authorities);
}

class UsersCompanion extends UpdateCompanion<User> {
  final Value<String> id;
  final Value<DateTime> lastModifiedDate;
  final Value<DateTime> createdDate;
  final Value<String> username;
  final Value<String> password;
  final Value<String?> firstName;
  final Value<String?> lastname;
  final Value<String?> mobile;
  final Value<String?> email;
  final Value<String> langKey;
  final Value<bool> activated;
  final Value<String?> imageUrl;
  final Value<List<String>> authorities;
  final Value<int> rowid;
  const UsersCompanion({
    this.id = const Value.absent(),
    this.lastModifiedDate = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.username = const Value.absent(),
    this.password = const Value.absent(),
    this.firstName = const Value.absent(),
    this.lastname = const Value.absent(),
    this.mobile = const Value.absent(),
    this.email = const Value.absent(),
    this.langKey = const Value.absent(),
    this.activated = const Value.absent(),
    this.imageUrl = const Value.absent(),
    this.authorities = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UsersCompanion.insert({
    required String id,
    this.lastModifiedDate = const Value.absent(),
    this.createdDate = const Value.absent(),
    required String username,
    required String password,
    this.firstName = const Value.absent(),
    this.lastname = const Value.absent(),
    this.mobile = const Value.absent(),
    this.email = const Value.absent(),
    this.langKey = const Value.absent(),
    this.activated = const Value.absent(),
    this.imageUrl = const Value.absent(),
    this.authorities = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        username = Value(username),
        password = Value(password);
  static Insertable<User> custom({
    Expression<String>? id,
    Expression<DateTime>? lastModifiedDate,
    Expression<DateTime>? createdDate,
    Expression<String>? username,
    Expression<String>? password,
    Expression<String>? firstName,
    Expression<String>? lastname,
    Expression<String>? mobile,
    Expression<String>? email,
    Expression<String>? langKey,
    Expression<bool>? activated,
    Expression<String>? imageUrl,
    Expression<String>? authorities,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (lastModifiedDate != null) 'last_modified_date': lastModifiedDate,
      if (createdDate != null) 'created_date': createdDate,
      if (username != null) 'username': username,
      if (password != null) 'password': password,
      if (firstName != null) 'first_name': firstName,
      if (lastname != null) 'lastname': lastname,
      if (mobile != null) 'mobile': mobile,
      if (email != null) 'email': email,
      if (langKey != null) 'lang_key': langKey,
      if (activated != null) 'activated': activated,
      if (imageUrl != null) 'image_url': imageUrl,
      if (authorities != null) 'authorities': authorities,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UsersCompanion copyWith(
      {Value<String>? id,
      Value<DateTime>? lastModifiedDate,
      Value<DateTime>? createdDate,
      Value<String>? username,
      Value<String>? password,
      Value<String?>? firstName,
      Value<String?>? lastname,
      Value<String?>? mobile,
      Value<String?>? email,
      Value<String>? langKey,
      Value<bool>? activated,
      Value<String?>? imageUrl,
      Value<List<String>>? authorities,
      Value<int>? rowid}) {
    return UsersCompanion(
      id: id ?? this.id,
      lastModifiedDate: lastModifiedDate ?? this.lastModifiedDate,
      createdDate: createdDate ?? this.createdDate,
      username: username ?? this.username,
      password: password ?? this.password,
      firstName: firstName ?? this.firstName,
      lastname: lastname ?? this.lastname,
      mobile: mobile ?? this.mobile,
      email: email ?? this.email,
      langKey: langKey ?? this.langKey,
      activated: activated ?? this.activated,
      imageUrl: imageUrl ?? this.imageUrl,
      authorities: authorities ?? this.authorities,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (lastModifiedDate.present) {
      map['last_modified_date'] = Variable<DateTime>(lastModifiedDate.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (username.present) {
      map['username'] = Variable<String>(username.value);
    }
    if (password.present) {
      map['password'] = Variable<String>(password.value);
    }
    if (firstName.present) {
      map['first_name'] = Variable<String>(firstName.value);
    }
    if (lastname.present) {
      map['lastname'] = Variable<String>(lastname.value);
    }
    if (mobile.present) {
      map['mobile'] = Variable<String>(mobile.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (langKey.present) {
      map['lang_key'] = Variable<String>(langKey.value);
    }
    if (activated.present) {
      map['activated'] = Variable<bool>(activated.value);
    }
    if (imageUrl.present) {
      map['image_url'] = Variable<String>(imageUrl.value);
    }
    if (authorities.present) {
      map['authorities'] = Variable<String>(
          $UsersTable.$converterauthorities.toSql(authorities.value));
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsersCompanion(')
          ..write('id: $id, ')
          ..write('lastModifiedDate: $lastModifiedDate, ')
          ..write('createdDate: $createdDate, ')
          ..write('username: $username, ')
          ..write('password: $password, ')
          ..write('firstName: $firstName, ')
          ..write('lastname: $lastname, ')
          ..write('mobile: $mobile, ')
          ..write('email: $email, ')
          ..write('langKey: $langKey, ')
          ..write('activated: $activated, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('authorities: $authorities, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $OrgUnitsTable extends OrgUnits with TableInfo<$OrgUnitsTable, OrgUnit> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OrgUnitsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lastModifiedDateMeta =
      const VerificationMeta('lastModifiedDate');
  @override
  late final GeneratedColumn<DateTime> lastModifiedDate =
      GeneratedColumn<DateTime>('last_modified_date', aliasedName, false,
          type: DriftSqlType.dateTime,
          requiredDuringInsert: false,
          defaultValue: currentDateAndTime);
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _displayNameMeta =
      const VerificationMeta('displayName');
  @override
  late final GeneratedColumn<String> displayName = GeneratedColumn<String>(
      'display_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String> code = GeneratedColumn<String>(
      'code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _translationsMeta =
      const VerificationMeta('translations');
  @override
  late final GeneratedColumnWithTypeConverter<List<Translation>?, String>
      translations = GeneratedColumn<String>('translations', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<Translation>?>(
              $OrgUnitsTable.$convertertranslationsn);
  static const VerificationMeta _pathMeta = const VerificationMeta('path');
  @override
  late final GeneratedColumn<String> path = GeneratedColumn<String>(
      'path', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _labelMeta = const VerificationMeta('label');
  @override
  late final GeneratedColumnWithTypeConverter<Map<String, String>, String>
      label = GeneratedColumn<String>('label', aliasedName, false,
              type: DriftSqlType.string,
              requiredDuringInsert: false,
              defaultValue: Constant('{}'))
          .withConverter<Map<String, String>>($OrgUnitsTable.$converterlabel);
  static const VerificationMeta _parentMeta = const VerificationMeta('parent');
  @override
  late final GeneratedColumn<String> parent = GeneratedColumn<String>(
      'parent', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _ancestorsMeta =
      const VerificationMeta('ancestors');
  @override
  late final GeneratedColumn<String> ancestors = GeneratedColumn<String>(
      'ancestors', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _geometryMeta =
      const VerificationMeta('geometry');
  @override
  late final GeneratedColumn<String> geometry = GeneratedColumn<String>(
      'geometry', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _scopeMeta = const VerificationMeta('scope');
  @override
  late final GeneratedColumn<String> scope = GeneratedColumn<String>(
      'scope', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        lastModifiedDate,
        createdDate,
        name,
        displayName,
        code,
        translations,
        path,
        label,
        parent,
        ancestors,
        geometry,
        scope
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'org_units';
  @override
  VerificationContext validateIntegrity(Insertable<OrgUnit> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('last_modified_date')) {
      context.handle(
          _lastModifiedDateMeta,
          lastModifiedDate.isAcceptableOrUnknown(
              data['last_modified_date']!, _lastModifiedDateMeta));
    }
    if (data.containsKey('created_date')) {
      context.handle(
          _createdDateMeta,
          createdDate.isAcceptableOrUnknown(
              data['created_date']!, _createdDateMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('display_name')) {
      context.handle(
          _displayNameMeta,
          displayName.isAcceptableOrUnknown(
              data['display_name']!, _displayNameMeta));
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    }
    context.handle(_translationsMeta, const VerificationResult.success());
    if (data.containsKey('path')) {
      context.handle(
          _pathMeta, path.isAcceptableOrUnknown(data['path']!, _pathMeta));
    }
    context.handle(_labelMeta, const VerificationResult.success());
    if (data.containsKey('parent')) {
      context.handle(_parentMeta,
          parent.isAcceptableOrUnknown(data['parent']!, _parentMeta));
    }
    if (data.containsKey('ancestors')) {
      context.handle(_ancestorsMeta,
          ancestors.isAcceptableOrUnknown(data['ancestors']!, _ancestorsMeta));
    }
    if (data.containsKey('geometry')) {
      context.handle(_geometryMeta,
          geometry.isAcceptableOrUnknown(data['geometry']!, _geometryMeta));
    }
    if (data.containsKey('scope')) {
      context.handle(
          _scopeMeta, scope.isAcceptableOrUnknown(data['scope']!, _scopeMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  OrgUnit map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return OrgUnit(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      lastModifiedDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}last_modified_date'])!,
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      displayName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}display_name']),
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code']),
      translations: $OrgUnitsTable.$convertertranslationsn.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}translations'])),
      path: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}path']),
      label: $OrgUnitsTable.$converterlabel.fromSql(attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}label'])!),
      parent: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}parent']),
      ancestors: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ancestors']),
      geometry: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}geometry']),
      scope: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}scope']),
    );
  }

  @override
  $OrgUnitsTable createAlias(String alias) {
    return $OrgUnitsTable(attachedDatabase, alias);
  }

  static TypeConverter<List<Translation>, String> $convertertranslations =
      const TranslationConverter();
  static TypeConverter<List<Translation>?, String?> $convertertranslationsn =
      NullAwareTypeConverter.wrap($convertertranslations);
  static TypeConverter<Map<String, String>, String> $converterlabel =
      const MapConverter<String>();
}

class OrgUnit extends DataClass implements Insertable<OrgUnit> {
  final String id;
  final DateTime lastModifiedDate;
  final DateTime createdDate;
  final String? name;
  final String? displayName;
  final String? code;

  /// List of Translations
  final List<Translation>? translations;
  final String? path;
  final Map<String, String> label;
  final String? parent;
  final String? ancestors;
  final String? geometry;
  final String? scope;
  const OrgUnit(
      {required this.id,
      required this.lastModifiedDate,
      required this.createdDate,
      this.name,
      this.displayName,
      this.code,
      this.translations,
      this.path,
      required this.label,
      this.parent,
      this.ancestors,
      this.geometry,
      this.scope});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['last_modified_date'] = Variable<DateTime>(lastModifiedDate);
    map['created_date'] = Variable<DateTime>(createdDate);
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || displayName != null) {
      map['display_name'] = Variable<String>(displayName);
    }
    if (!nullToAbsent || code != null) {
      map['code'] = Variable<String>(code);
    }
    if (!nullToAbsent || translations != null) {
      map['translations'] = Variable<String>(
          $OrgUnitsTable.$convertertranslationsn.toSql(translations));
    }
    if (!nullToAbsent || path != null) {
      map['path'] = Variable<String>(path);
    }
    {
      map['label'] =
          Variable<String>($OrgUnitsTable.$converterlabel.toSql(label));
    }
    if (!nullToAbsent || parent != null) {
      map['parent'] = Variable<String>(parent);
    }
    if (!nullToAbsent || ancestors != null) {
      map['ancestors'] = Variable<String>(ancestors);
    }
    if (!nullToAbsent || geometry != null) {
      map['geometry'] = Variable<String>(geometry);
    }
    if (!nullToAbsent || scope != null) {
      map['scope'] = Variable<String>(scope);
    }
    return map;
  }

  OrgUnitsCompanion toCompanion(bool nullToAbsent) {
    return OrgUnitsCompanion(
      id: Value(id),
      lastModifiedDate: Value(lastModifiedDate),
      createdDate: Value(createdDate),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      displayName: displayName == null && nullToAbsent
          ? const Value.absent()
          : Value(displayName),
      code: code == null && nullToAbsent ? const Value.absent() : Value(code),
      translations: translations == null && nullToAbsent
          ? const Value.absent()
          : Value(translations),
      path: path == null && nullToAbsent ? const Value.absent() : Value(path),
      label: Value(label),
      parent:
          parent == null && nullToAbsent ? const Value.absent() : Value(parent),
      ancestors: ancestors == null && nullToAbsent
          ? const Value.absent()
          : Value(ancestors),
      geometry: geometry == null && nullToAbsent
          ? const Value.absent()
          : Value(geometry),
      scope:
          scope == null && nullToAbsent ? const Value.absent() : Value(scope),
    );
  }

  factory OrgUnit.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OrgUnit(
      id: serializer.fromJson<String>(json['id']),
      lastModifiedDate: serializer.fromJson<DateTime>(json['lastModifiedDate']),
      createdDate: serializer.fromJson<DateTime>(json['createdDate']),
      name: serializer.fromJson<String?>(json['name']),
      displayName: serializer.fromJson<String?>(json['displayName']),
      code: serializer.fromJson<String?>(json['code']),
      translations:
          serializer.fromJson<List<Translation>?>(json['translations']),
      path: serializer.fromJson<String?>(json['path']),
      label: serializer.fromJson<Map<String, String>>(json['label']),
      parent: serializer.fromJson<String?>(json['parent']),
      ancestors: serializer.fromJson<String?>(json['ancestors']),
      geometry: serializer.fromJson<String?>(json['geometry']),
      scope: serializer.fromJson<String?>(json['scope']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'lastModifiedDate': serializer.toJson<DateTime>(lastModifiedDate),
      'createdDate': serializer.toJson<DateTime>(createdDate),
      'name': serializer.toJson<String?>(name),
      'displayName': serializer.toJson<String?>(displayName),
      'code': serializer.toJson<String?>(code),
      'translations': serializer.toJson<List<Translation>?>(translations),
      'path': serializer.toJson<String?>(path),
      'label': serializer.toJson<Map<String, String>>(label),
      'parent': serializer.toJson<String?>(parent),
      'ancestors': serializer.toJson<String?>(ancestors),
      'geometry': serializer.toJson<String?>(geometry),
      'scope': serializer.toJson<String?>(scope),
    };
  }

  OrgUnit copyWith(
          {String? id,
          DateTime? lastModifiedDate,
          DateTime? createdDate,
          Value<String?> name = const Value.absent(),
          Value<String?> displayName = const Value.absent(),
          Value<String?> code = const Value.absent(),
          Value<List<Translation>?> translations = const Value.absent(),
          Value<String?> path = const Value.absent(),
          Map<String, String>? label,
          Value<String?> parent = const Value.absent(),
          Value<String?> ancestors = const Value.absent(),
          Value<String?> geometry = const Value.absent(),
          Value<String?> scope = const Value.absent()}) =>
      OrgUnit(
        id: id ?? this.id,
        lastModifiedDate: lastModifiedDate ?? this.lastModifiedDate,
        createdDate: createdDate ?? this.createdDate,
        name: name.present ? name.value : this.name,
        displayName: displayName.present ? displayName.value : this.displayName,
        code: code.present ? code.value : this.code,
        translations:
            translations.present ? translations.value : this.translations,
        path: path.present ? path.value : this.path,
        label: label ?? this.label,
        parent: parent.present ? parent.value : this.parent,
        ancestors: ancestors.present ? ancestors.value : this.ancestors,
        geometry: geometry.present ? geometry.value : this.geometry,
        scope: scope.present ? scope.value : this.scope,
      );
  OrgUnit copyWithCompanion(OrgUnitsCompanion data) {
    return OrgUnit(
      id: data.id.present ? data.id.value : this.id,
      lastModifiedDate: data.lastModifiedDate.present
          ? data.lastModifiedDate.value
          : this.lastModifiedDate,
      createdDate:
          data.createdDate.present ? data.createdDate.value : this.createdDate,
      name: data.name.present ? data.name.value : this.name,
      displayName:
          data.displayName.present ? data.displayName.value : this.displayName,
      code: data.code.present ? data.code.value : this.code,
      translations: data.translations.present
          ? data.translations.value
          : this.translations,
      path: data.path.present ? data.path.value : this.path,
      label: data.label.present ? data.label.value : this.label,
      parent: data.parent.present ? data.parent.value : this.parent,
      ancestors: data.ancestors.present ? data.ancestors.value : this.ancestors,
      geometry: data.geometry.present ? data.geometry.value : this.geometry,
      scope: data.scope.present ? data.scope.value : this.scope,
    );
  }

  @override
  String toString() {
    return (StringBuffer('OrgUnit(')
          ..write('id: $id, ')
          ..write('lastModifiedDate: $lastModifiedDate, ')
          ..write('createdDate: $createdDate, ')
          ..write('name: $name, ')
          ..write('displayName: $displayName, ')
          ..write('code: $code, ')
          ..write('translations: $translations, ')
          ..write('path: $path, ')
          ..write('label: $label, ')
          ..write('parent: $parent, ')
          ..write('ancestors: $ancestors, ')
          ..write('geometry: $geometry, ')
          ..write('scope: $scope')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      lastModifiedDate,
      createdDate,
      name,
      displayName,
      code,
      translations,
      path,
      label,
      parent,
      ancestors,
      geometry,
      scope);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OrgUnit &&
          other.id == this.id &&
          other.lastModifiedDate == this.lastModifiedDate &&
          other.createdDate == this.createdDate &&
          other.name == this.name &&
          other.displayName == this.displayName &&
          other.code == this.code &&
          other.translations == this.translations &&
          other.path == this.path &&
          other.label == this.label &&
          other.parent == this.parent &&
          other.ancestors == this.ancestors &&
          other.geometry == this.geometry &&
          other.scope == this.scope);
}

class OrgUnitsCompanion extends UpdateCompanion<OrgUnit> {
  final Value<String> id;
  final Value<DateTime> lastModifiedDate;
  final Value<DateTime> createdDate;
  final Value<String?> name;
  final Value<String?> displayName;
  final Value<String?> code;
  final Value<List<Translation>?> translations;
  final Value<String?> path;
  final Value<Map<String, String>> label;
  final Value<String?> parent;
  final Value<String?> ancestors;
  final Value<String?> geometry;
  final Value<String?> scope;
  final Value<int> rowid;
  const OrgUnitsCompanion({
    this.id = const Value.absent(),
    this.lastModifiedDate = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.name = const Value.absent(),
    this.displayName = const Value.absent(),
    this.code = const Value.absent(),
    this.translations = const Value.absent(),
    this.path = const Value.absent(),
    this.label = const Value.absent(),
    this.parent = const Value.absent(),
    this.ancestors = const Value.absent(),
    this.geometry = const Value.absent(),
    this.scope = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  OrgUnitsCompanion.insert({
    required String id,
    this.lastModifiedDate = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.name = const Value.absent(),
    this.displayName = const Value.absent(),
    this.code = const Value.absent(),
    this.translations = const Value.absent(),
    this.path = const Value.absent(),
    this.label = const Value.absent(),
    this.parent = const Value.absent(),
    this.ancestors = const Value.absent(),
    this.geometry = const Value.absent(),
    this.scope = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id);
  static Insertable<OrgUnit> custom({
    Expression<String>? id,
    Expression<DateTime>? lastModifiedDate,
    Expression<DateTime>? createdDate,
    Expression<String>? name,
    Expression<String>? displayName,
    Expression<String>? code,
    Expression<String>? translations,
    Expression<String>? path,
    Expression<String>? label,
    Expression<String>? parent,
    Expression<String>? ancestors,
    Expression<String>? geometry,
    Expression<String>? scope,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (lastModifiedDate != null) 'last_modified_date': lastModifiedDate,
      if (createdDate != null) 'created_date': createdDate,
      if (name != null) 'name': name,
      if (displayName != null) 'display_name': displayName,
      if (code != null) 'code': code,
      if (translations != null) 'translations': translations,
      if (path != null) 'path': path,
      if (label != null) 'label': label,
      if (parent != null) 'parent': parent,
      if (ancestors != null) 'ancestors': ancestors,
      if (geometry != null) 'geometry': geometry,
      if (scope != null) 'scope': scope,
      if (rowid != null) 'rowid': rowid,
    });
  }

  OrgUnitsCompanion copyWith(
      {Value<String>? id,
      Value<DateTime>? lastModifiedDate,
      Value<DateTime>? createdDate,
      Value<String?>? name,
      Value<String?>? displayName,
      Value<String?>? code,
      Value<List<Translation>?>? translations,
      Value<String?>? path,
      Value<Map<String, String>>? label,
      Value<String?>? parent,
      Value<String?>? ancestors,
      Value<String?>? geometry,
      Value<String?>? scope,
      Value<int>? rowid}) {
    return OrgUnitsCompanion(
      id: id ?? this.id,
      lastModifiedDate: lastModifiedDate ?? this.lastModifiedDate,
      createdDate: createdDate ?? this.createdDate,
      name: name ?? this.name,
      displayName: displayName ?? this.displayName,
      code: code ?? this.code,
      translations: translations ?? this.translations,
      path: path ?? this.path,
      label: label ?? this.label,
      parent: parent ?? this.parent,
      ancestors: ancestors ?? this.ancestors,
      geometry: geometry ?? this.geometry,
      scope: scope ?? this.scope,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (lastModifiedDate.present) {
      map['last_modified_date'] = Variable<DateTime>(lastModifiedDate.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (displayName.present) {
      map['display_name'] = Variable<String>(displayName.value);
    }
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (translations.present) {
      map['translations'] = Variable<String>(
          $OrgUnitsTable.$convertertranslationsn.toSql(translations.value));
    }
    if (path.present) {
      map['path'] = Variable<String>(path.value);
    }
    if (label.present) {
      map['label'] =
          Variable<String>($OrgUnitsTable.$converterlabel.toSql(label.value));
    }
    if (parent.present) {
      map['parent'] = Variable<String>(parent.value);
    }
    if (ancestors.present) {
      map['ancestors'] = Variable<String>(ancestors.value);
    }
    if (geometry.present) {
      map['geometry'] = Variable<String>(geometry.value);
    }
    if (scope.present) {
      map['scope'] = Variable<String>(scope.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OrgUnitsCompanion(')
          ..write('id: $id, ')
          ..write('lastModifiedDate: $lastModifiedDate, ')
          ..write('createdDate: $createdDate, ')
          ..write('name: $name, ')
          ..write('displayName: $displayName, ')
          ..write('code: $code, ')
          ..write('translations: $translations, ')
          ..write('path: $path, ')
          ..write('label: $label, ')
          ..write('parent: $parent, ')
          ..write('ancestors: $ancestors, ')
          ..write('geometry: $geometry, ')
          ..write('scope: $scope, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $OuLevelsTable extends OuLevels with TableInfo<$OuLevelsTable, OuLevel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OuLevelsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lastModifiedDateMeta =
      const VerificationMeta('lastModifiedDate');
  @override
  late final GeneratedColumn<DateTime> lastModifiedDate =
      GeneratedColumn<DateTime>('last_modified_date', aliasedName, false,
          type: DriftSqlType.dateTime,
          requiredDuringInsert: false,
          defaultValue: currentDateAndTime);
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _displayNameMeta =
      const VerificationMeta('displayName');
  @override
  late final GeneratedColumn<String> displayName = GeneratedColumn<String>(
      'display_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String> code = GeneratedColumn<String>(
      'code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _translationsMeta =
      const VerificationMeta('translations');
  @override
  late final GeneratedColumnWithTypeConverter<List<Translation>?, String>
      translations = GeneratedColumn<String>('translations', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<Translation>?>(
              $OuLevelsTable.$convertertranslationsn);
  static const VerificationMeta _levelMeta = const VerificationMeta('level');
  @override
  late final GeneratedColumn<int> level = GeneratedColumn<int>(
      'level', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _offlineLevelsMeta =
      const VerificationMeta('offlineLevels');
  @override
  late final GeneratedColumn<int> offlineLevels = GeneratedColumn<int>(
      'offline_levels', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        lastModifiedDate,
        createdDate,
        name,
        displayName,
        code,
        translations,
        level,
        offlineLevels
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'ou_levels';
  @override
  VerificationContext validateIntegrity(Insertable<OuLevel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('last_modified_date')) {
      context.handle(
          _lastModifiedDateMeta,
          lastModifiedDate.isAcceptableOrUnknown(
              data['last_modified_date']!, _lastModifiedDateMeta));
    }
    if (data.containsKey('created_date')) {
      context.handle(
          _createdDateMeta,
          createdDate.isAcceptableOrUnknown(
              data['created_date']!, _createdDateMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('display_name')) {
      context.handle(
          _displayNameMeta,
          displayName.isAcceptableOrUnknown(
              data['display_name']!, _displayNameMeta));
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    }
    context.handle(_translationsMeta, const VerificationResult.success());
    if (data.containsKey('level')) {
      context.handle(
          _levelMeta, level.isAcceptableOrUnknown(data['level']!, _levelMeta));
    } else if (isInserting) {
      context.missing(_levelMeta);
    }
    if (data.containsKey('offline_levels')) {
      context.handle(
          _offlineLevelsMeta,
          offlineLevels.isAcceptableOrUnknown(
              data['offline_levels']!, _offlineLevelsMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  OuLevel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return OuLevel(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      lastModifiedDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}last_modified_date'])!,
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      displayName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}display_name']),
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code']),
      translations: $OuLevelsTable.$convertertranslationsn.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}translations'])),
      level: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}level'])!,
      offlineLevels: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}offline_levels']),
    );
  }

  @override
  $OuLevelsTable createAlias(String alias) {
    return $OuLevelsTable(attachedDatabase, alias);
  }

  static TypeConverter<List<Translation>, String> $convertertranslations =
      const TranslationConverter();
  static TypeConverter<List<Translation>?, String?> $convertertranslationsn =
      NullAwareTypeConverter.wrap($convertertranslations);
}

class OuLevel extends DataClass implements Insertable<OuLevel> {
  final String id;
  final DateTime lastModifiedDate;
  final DateTime createdDate;
  final String? name;
  final String? displayName;
  final String? code;

  /// List of Translations
  final List<Translation>? translations;
  final int level;
  final int? offlineLevels;
  const OuLevel(
      {required this.id,
      required this.lastModifiedDate,
      required this.createdDate,
      this.name,
      this.displayName,
      this.code,
      this.translations,
      required this.level,
      this.offlineLevels});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['last_modified_date'] = Variable<DateTime>(lastModifiedDate);
    map['created_date'] = Variable<DateTime>(createdDate);
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || displayName != null) {
      map['display_name'] = Variable<String>(displayName);
    }
    if (!nullToAbsent || code != null) {
      map['code'] = Variable<String>(code);
    }
    if (!nullToAbsent || translations != null) {
      map['translations'] = Variable<String>(
          $OuLevelsTable.$convertertranslationsn.toSql(translations));
    }
    map['level'] = Variable<int>(level);
    if (!nullToAbsent || offlineLevels != null) {
      map['offline_levels'] = Variable<int>(offlineLevels);
    }
    return map;
  }

  OuLevelsCompanion toCompanion(bool nullToAbsent) {
    return OuLevelsCompanion(
      id: Value(id),
      lastModifiedDate: Value(lastModifiedDate),
      createdDate: Value(createdDate),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      displayName: displayName == null && nullToAbsent
          ? const Value.absent()
          : Value(displayName),
      code: code == null && nullToAbsent ? const Value.absent() : Value(code),
      translations: translations == null && nullToAbsent
          ? const Value.absent()
          : Value(translations),
      level: Value(level),
      offlineLevels: offlineLevels == null && nullToAbsent
          ? const Value.absent()
          : Value(offlineLevels),
    );
  }

  factory OuLevel.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OuLevel(
      id: serializer.fromJson<String>(json['id']),
      lastModifiedDate: serializer.fromJson<DateTime>(json['lastModifiedDate']),
      createdDate: serializer.fromJson<DateTime>(json['createdDate']),
      name: serializer.fromJson<String?>(json['name']),
      displayName: serializer.fromJson<String?>(json['displayName']),
      code: serializer.fromJson<String?>(json['code']),
      translations:
          serializer.fromJson<List<Translation>?>(json['translations']),
      level: serializer.fromJson<int>(json['level']),
      offlineLevels: serializer.fromJson<int?>(json['offlineLevels']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'lastModifiedDate': serializer.toJson<DateTime>(lastModifiedDate),
      'createdDate': serializer.toJson<DateTime>(createdDate),
      'name': serializer.toJson<String?>(name),
      'displayName': serializer.toJson<String?>(displayName),
      'code': serializer.toJson<String?>(code),
      'translations': serializer.toJson<List<Translation>?>(translations),
      'level': serializer.toJson<int>(level),
      'offlineLevels': serializer.toJson<int?>(offlineLevels),
    };
  }

  OuLevel copyWith(
          {String? id,
          DateTime? lastModifiedDate,
          DateTime? createdDate,
          Value<String?> name = const Value.absent(),
          Value<String?> displayName = const Value.absent(),
          Value<String?> code = const Value.absent(),
          Value<List<Translation>?> translations = const Value.absent(),
          int? level,
          Value<int?> offlineLevels = const Value.absent()}) =>
      OuLevel(
        id: id ?? this.id,
        lastModifiedDate: lastModifiedDate ?? this.lastModifiedDate,
        createdDate: createdDate ?? this.createdDate,
        name: name.present ? name.value : this.name,
        displayName: displayName.present ? displayName.value : this.displayName,
        code: code.present ? code.value : this.code,
        translations:
            translations.present ? translations.value : this.translations,
        level: level ?? this.level,
        offlineLevels:
            offlineLevels.present ? offlineLevels.value : this.offlineLevels,
      );
  OuLevel copyWithCompanion(OuLevelsCompanion data) {
    return OuLevel(
      id: data.id.present ? data.id.value : this.id,
      lastModifiedDate: data.lastModifiedDate.present
          ? data.lastModifiedDate.value
          : this.lastModifiedDate,
      createdDate:
          data.createdDate.present ? data.createdDate.value : this.createdDate,
      name: data.name.present ? data.name.value : this.name,
      displayName:
          data.displayName.present ? data.displayName.value : this.displayName,
      code: data.code.present ? data.code.value : this.code,
      translations: data.translations.present
          ? data.translations.value
          : this.translations,
      level: data.level.present ? data.level.value : this.level,
      offlineLevels: data.offlineLevels.present
          ? data.offlineLevels.value
          : this.offlineLevels,
    );
  }

  @override
  String toString() {
    return (StringBuffer('OuLevel(')
          ..write('id: $id, ')
          ..write('lastModifiedDate: $lastModifiedDate, ')
          ..write('createdDate: $createdDate, ')
          ..write('name: $name, ')
          ..write('displayName: $displayName, ')
          ..write('code: $code, ')
          ..write('translations: $translations, ')
          ..write('level: $level, ')
          ..write('offlineLevels: $offlineLevels')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, lastModifiedDate, createdDate, name,
      displayName, code, translations, level, offlineLevels);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OuLevel &&
          other.id == this.id &&
          other.lastModifiedDate == this.lastModifiedDate &&
          other.createdDate == this.createdDate &&
          other.name == this.name &&
          other.displayName == this.displayName &&
          other.code == this.code &&
          other.translations == this.translations &&
          other.level == this.level &&
          other.offlineLevels == this.offlineLevels);
}

class OuLevelsCompanion extends UpdateCompanion<OuLevel> {
  final Value<String> id;
  final Value<DateTime> lastModifiedDate;
  final Value<DateTime> createdDate;
  final Value<String?> name;
  final Value<String?> displayName;
  final Value<String?> code;
  final Value<List<Translation>?> translations;
  final Value<int> level;
  final Value<int?> offlineLevels;
  final Value<int> rowid;
  const OuLevelsCompanion({
    this.id = const Value.absent(),
    this.lastModifiedDate = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.name = const Value.absent(),
    this.displayName = const Value.absent(),
    this.code = const Value.absent(),
    this.translations = const Value.absent(),
    this.level = const Value.absent(),
    this.offlineLevels = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  OuLevelsCompanion.insert({
    required String id,
    this.lastModifiedDate = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.name = const Value.absent(),
    this.displayName = const Value.absent(),
    this.code = const Value.absent(),
    this.translations = const Value.absent(),
    required int level,
    this.offlineLevels = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        level = Value(level);
  static Insertable<OuLevel> custom({
    Expression<String>? id,
    Expression<DateTime>? lastModifiedDate,
    Expression<DateTime>? createdDate,
    Expression<String>? name,
    Expression<String>? displayName,
    Expression<String>? code,
    Expression<String>? translations,
    Expression<int>? level,
    Expression<int>? offlineLevels,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (lastModifiedDate != null) 'last_modified_date': lastModifiedDate,
      if (createdDate != null) 'created_date': createdDate,
      if (name != null) 'name': name,
      if (displayName != null) 'display_name': displayName,
      if (code != null) 'code': code,
      if (translations != null) 'translations': translations,
      if (level != null) 'level': level,
      if (offlineLevels != null) 'offline_levels': offlineLevels,
      if (rowid != null) 'rowid': rowid,
    });
  }

  OuLevelsCompanion copyWith(
      {Value<String>? id,
      Value<DateTime>? lastModifiedDate,
      Value<DateTime>? createdDate,
      Value<String?>? name,
      Value<String?>? displayName,
      Value<String?>? code,
      Value<List<Translation>?>? translations,
      Value<int>? level,
      Value<int?>? offlineLevels,
      Value<int>? rowid}) {
    return OuLevelsCompanion(
      id: id ?? this.id,
      lastModifiedDate: lastModifiedDate ?? this.lastModifiedDate,
      createdDate: createdDate ?? this.createdDate,
      name: name ?? this.name,
      displayName: displayName ?? this.displayName,
      code: code ?? this.code,
      translations: translations ?? this.translations,
      level: level ?? this.level,
      offlineLevels: offlineLevels ?? this.offlineLevels,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (lastModifiedDate.present) {
      map['last_modified_date'] = Variable<DateTime>(lastModifiedDate.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (displayName.present) {
      map['display_name'] = Variable<String>(displayName.value);
    }
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (translations.present) {
      map['translations'] = Variable<String>(
          $OuLevelsTable.$convertertranslationsn.toSql(translations.value));
    }
    if (level.present) {
      map['level'] = Variable<int>(level.value);
    }
    if (offlineLevels.present) {
      map['offline_levels'] = Variable<int>(offlineLevels.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OuLevelsCompanion(')
          ..write('id: $id, ')
          ..write('lastModifiedDate: $lastModifiedDate, ')
          ..write('createdDate: $createdDate, ')
          ..write('name: $name, ')
          ..write('displayName: $displayName, ')
          ..write('code: $code, ')
          ..write('translations: $translations, ')
          ..write('level: $level, ')
          ..write('offlineLevels: $offlineLevels, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ProjectsTable extends Projects with TableInfo<$ProjectsTable, Project> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProjectsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lastModifiedDateMeta =
      const VerificationMeta('lastModifiedDate');
  @override
  late final GeneratedColumn<DateTime> lastModifiedDate =
      GeneratedColumn<DateTime>('last_modified_date', aliasedName, false,
          type: DriftSqlType.dateTime,
          requiredDuringInsert: false,
          defaultValue: currentDateAndTime);
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _displayNameMeta =
      const VerificationMeta('displayName');
  @override
  late final GeneratedColumn<String> displayName = GeneratedColumn<String>(
      'display_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String> code = GeneratedColumn<String>(
      'code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _translationsMeta =
      const VerificationMeta('translations');
  @override
  late final GeneratedColumnWithTypeConverter<List<Translation>?, String>
      translations = GeneratedColumn<String>('translations', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<Translation>?>(
              $ProjectsTable.$convertertranslationsn);
  static const VerificationMeta _disabledMeta =
      const VerificationMeta('disabled');
  @override
  late final GeneratedColumn<bool> disabled = GeneratedColumn<bool>(
      'disabled', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("disabled" IN (0, 1))'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        lastModifiedDate,
        createdDate,
        name,
        displayName,
        code,
        translations,
        disabled
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'projects';
  @override
  VerificationContext validateIntegrity(Insertable<Project> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('last_modified_date')) {
      context.handle(
          _lastModifiedDateMeta,
          lastModifiedDate.isAcceptableOrUnknown(
              data['last_modified_date']!, _lastModifiedDateMeta));
    }
    if (data.containsKey('created_date')) {
      context.handle(
          _createdDateMeta,
          createdDate.isAcceptableOrUnknown(
              data['created_date']!, _createdDateMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('display_name')) {
      context.handle(
          _displayNameMeta,
          displayName.isAcceptableOrUnknown(
              data['display_name']!, _displayNameMeta));
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    }
    context.handle(_translationsMeta, const VerificationResult.success());
    if (data.containsKey('disabled')) {
      context.handle(_disabledMeta,
          disabled.isAcceptableOrUnknown(data['disabled']!, _disabledMeta));
    } else if (isInserting) {
      context.missing(_disabledMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Project map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Project(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      lastModifiedDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}last_modified_date'])!,
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      displayName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}display_name']),
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code']),
      translations: $ProjectsTable.$convertertranslationsn.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}translations'])),
      disabled: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}disabled'])!,
    );
  }

  @override
  $ProjectsTable createAlias(String alias) {
    return $ProjectsTable(attachedDatabase, alias);
  }

  static TypeConverter<List<Translation>, String> $convertertranslations =
      const TranslationConverter();
  static TypeConverter<List<Translation>?, String?> $convertertranslationsn =
      NullAwareTypeConverter.wrap($convertertranslations);
}

class Project extends DataClass implements Insertable<Project> {
  final String id;
  final DateTime lastModifiedDate;
  final DateTime createdDate;
  final String? name;
  final String? displayName;
  final String? code;

  /// List of Translations
  final List<Translation>? translations;
  final bool disabled;
  const Project(
      {required this.id,
      required this.lastModifiedDate,
      required this.createdDate,
      this.name,
      this.displayName,
      this.code,
      this.translations,
      required this.disabled});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['last_modified_date'] = Variable<DateTime>(lastModifiedDate);
    map['created_date'] = Variable<DateTime>(createdDate);
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || displayName != null) {
      map['display_name'] = Variable<String>(displayName);
    }
    if (!nullToAbsent || code != null) {
      map['code'] = Variable<String>(code);
    }
    if (!nullToAbsent || translations != null) {
      map['translations'] = Variable<String>(
          $ProjectsTable.$convertertranslationsn.toSql(translations));
    }
    map['disabled'] = Variable<bool>(disabled);
    return map;
  }

  ProjectsCompanion toCompanion(bool nullToAbsent) {
    return ProjectsCompanion(
      id: Value(id),
      lastModifiedDate: Value(lastModifiedDate),
      createdDate: Value(createdDate),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      displayName: displayName == null && nullToAbsent
          ? const Value.absent()
          : Value(displayName),
      code: code == null && nullToAbsent ? const Value.absent() : Value(code),
      translations: translations == null && nullToAbsent
          ? const Value.absent()
          : Value(translations),
      disabled: Value(disabled),
    );
  }

  factory Project.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Project(
      id: serializer.fromJson<String>(json['id']),
      lastModifiedDate: serializer.fromJson<DateTime>(json['lastModifiedDate']),
      createdDate: serializer.fromJson<DateTime>(json['createdDate']),
      name: serializer.fromJson<String?>(json['name']),
      displayName: serializer.fromJson<String?>(json['displayName']),
      code: serializer.fromJson<String?>(json['code']),
      translations:
          serializer.fromJson<List<Translation>?>(json['translations']),
      disabled: serializer.fromJson<bool>(json['disabled']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'lastModifiedDate': serializer.toJson<DateTime>(lastModifiedDate),
      'createdDate': serializer.toJson<DateTime>(createdDate),
      'name': serializer.toJson<String?>(name),
      'displayName': serializer.toJson<String?>(displayName),
      'code': serializer.toJson<String?>(code),
      'translations': serializer.toJson<List<Translation>?>(translations),
      'disabled': serializer.toJson<bool>(disabled),
    };
  }

  Project copyWith(
          {String? id,
          DateTime? lastModifiedDate,
          DateTime? createdDate,
          Value<String?> name = const Value.absent(),
          Value<String?> displayName = const Value.absent(),
          Value<String?> code = const Value.absent(),
          Value<List<Translation>?> translations = const Value.absent(),
          bool? disabled}) =>
      Project(
        id: id ?? this.id,
        lastModifiedDate: lastModifiedDate ?? this.lastModifiedDate,
        createdDate: createdDate ?? this.createdDate,
        name: name.present ? name.value : this.name,
        displayName: displayName.present ? displayName.value : this.displayName,
        code: code.present ? code.value : this.code,
        translations:
            translations.present ? translations.value : this.translations,
        disabled: disabled ?? this.disabled,
      );
  Project copyWithCompanion(ProjectsCompanion data) {
    return Project(
      id: data.id.present ? data.id.value : this.id,
      lastModifiedDate: data.lastModifiedDate.present
          ? data.lastModifiedDate.value
          : this.lastModifiedDate,
      createdDate:
          data.createdDate.present ? data.createdDate.value : this.createdDate,
      name: data.name.present ? data.name.value : this.name,
      displayName:
          data.displayName.present ? data.displayName.value : this.displayName,
      code: data.code.present ? data.code.value : this.code,
      translations: data.translations.present
          ? data.translations.value
          : this.translations,
      disabled: data.disabled.present ? data.disabled.value : this.disabled,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Project(')
          ..write('id: $id, ')
          ..write('lastModifiedDate: $lastModifiedDate, ')
          ..write('createdDate: $createdDate, ')
          ..write('name: $name, ')
          ..write('displayName: $displayName, ')
          ..write('code: $code, ')
          ..write('translations: $translations, ')
          ..write('disabled: $disabled')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, lastModifiedDate, createdDate, name,
      displayName, code, translations, disabled);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Project &&
          other.id == this.id &&
          other.lastModifiedDate == this.lastModifiedDate &&
          other.createdDate == this.createdDate &&
          other.name == this.name &&
          other.displayName == this.displayName &&
          other.code == this.code &&
          other.translations == this.translations &&
          other.disabled == this.disabled);
}

class ProjectsCompanion extends UpdateCompanion<Project> {
  final Value<String> id;
  final Value<DateTime> lastModifiedDate;
  final Value<DateTime> createdDate;
  final Value<String?> name;
  final Value<String?> displayName;
  final Value<String?> code;
  final Value<List<Translation>?> translations;
  final Value<bool> disabled;
  final Value<int> rowid;
  const ProjectsCompanion({
    this.id = const Value.absent(),
    this.lastModifiedDate = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.name = const Value.absent(),
    this.displayName = const Value.absent(),
    this.code = const Value.absent(),
    this.translations = const Value.absent(),
    this.disabled = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ProjectsCompanion.insert({
    required String id,
    this.lastModifiedDate = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.name = const Value.absent(),
    this.displayName = const Value.absent(),
    this.code = const Value.absent(),
    this.translations = const Value.absent(),
    required bool disabled,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        disabled = Value(disabled);
  static Insertable<Project> custom({
    Expression<String>? id,
    Expression<DateTime>? lastModifiedDate,
    Expression<DateTime>? createdDate,
    Expression<String>? name,
    Expression<String>? displayName,
    Expression<String>? code,
    Expression<String>? translations,
    Expression<bool>? disabled,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (lastModifiedDate != null) 'last_modified_date': lastModifiedDate,
      if (createdDate != null) 'created_date': createdDate,
      if (name != null) 'name': name,
      if (displayName != null) 'display_name': displayName,
      if (code != null) 'code': code,
      if (translations != null) 'translations': translations,
      if (disabled != null) 'disabled': disabled,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ProjectsCompanion copyWith(
      {Value<String>? id,
      Value<DateTime>? lastModifiedDate,
      Value<DateTime>? createdDate,
      Value<String?>? name,
      Value<String?>? displayName,
      Value<String?>? code,
      Value<List<Translation>?>? translations,
      Value<bool>? disabled,
      Value<int>? rowid}) {
    return ProjectsCompanion(
      id: id ?? this.id,
      lastModifiedDate: lastModifiedDate ?? this.lastModifiedDate,
      createdDate: createdDate ?? this.createdDate,
      name: name ?? this.name,
      displayName: displayName ?? this.displayName,
      code: code ?? this.code,
      translations: translations ?? this.translations,
      disabled: disabled ?? this.disabled,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (lastModifiedDate.present) {
      map['last_modified_date'] = Variable<DateTime>(lastModifiedDate.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (displayName.present) {
      map['display_name'] = Variable<String>(displayName.value);
    }
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (translations.present) {
      map['translations'] = Variable<String>(
          $ProjectsTable.$convertertranslationsn.toSql(translations.value));
    }
    if (disabled.present) {
      map['disabled'] = Variable<bool>(disabled.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProjectsCompanion(')
          ..write('id: $id, ')
          ..write('lastModifiedDate: $lastModifiedDate, ')
          ..write('createdDate: $createdDate, ')
          ..write('name: $name, ')
          ..write('displayName: $displayName, ')
          ..write('code: $code, ')
          ..write('translations: $translations, ')
          ..write('disabled: $disabled, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ActivitiesTable extends Activities
    with TableInfo<$ActivitiesTable, Activity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ActivitiesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lastModifiedDateMeta =
      const VerificationMeta('lastModifiedDate');
  @override
  late final GeneratedColumn<DateTime> lastModifiedDate =
      GeneratedColumn<DateTime>('last_modified_date', aliasedName, false,
          type: DriftSqlType.dateTime,
          requiredDuringInsert: false,
          defaultValue: currentDateAndTime);
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _displayNameMeta =
      const VerificationMeta('displayName');
  @override
  late final GeneratedColumn<String> displayName = GeneratedColumn<String>(
      'display_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String> code = GeneratedColumn<String>(
      'code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _translationsMeta =
      const VerificationMeta('translations');
  @override
  late final GeneratedColumnWithTypeConverter<List<Translation>?, String>
      translations = GeneratedColumn<String>('translations', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<Translation>?>(
              $ActivitiesTable.$convertertranslationsn);
  static const VerificationMeta _projectMeta =
      const VerificationMeta('project');
  @override
  late final GeneratedColumn<String> project = GeneratedColumn<String>(
      'project', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES projects (id)'));
  static const VerificationMeta _disabledMeta =
      const VerificationMeta('disabled');
  @override
  late final GeneratedColumn<bool> disabled = GeneratedColumn<bool>(
      'disabled', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("disabled" IN (0, 1))'));
  static const VerificationMeta _startDateMeta =
      const VerificationMeta('startDate');
  @override
  late final GeneratedColumn<DateTime> startDate = GeneratedColumn<DateTime>(
      'start_date', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _endDateMeta =
      const VerificationMeta('endDate');
  @override
  late final GeneratedColumn<DateTime> endDate = GeneratedColumn<DateTime>(
      'end_date', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        lastModifiedDate,
        createdDate,
        name,
        displayName,
        code,
        translations,
        project,
        disabled,
        startDate,
        endDate,
        description
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'activities';
  @override
  VerificationContext validateIntegrity(Insertable<Activity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('last_modified_date')) {
      context.handle(
          _lastModifiedDateMeta,
          lastModifiedDate.isAcceptableOrUnknown(
              data['last_modified_date']!, _lastModifiedDateMeta));
    }
    if (data.containsKey('created_date')) {
      context.handle(
          _createdDateMeta,
          createdDate.isAcceptableOrUnknown(
              data['created_date']!, _createdDateMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('display_name')) {
      context.handle(
          _displayNameMeta,
          displayName.isAcceptableOrUnknown(
              data['display_name']!, _displayNameMeta));
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    }
    context.handle(_translationsMeta, const VerificationResult.success());
    if (data.containsKey('project')) {
      context.handle(_projectMeta,
          project.isAcceptableOrUnknown(data['project']!, _projectMeta));
    } else if (isInserting) {
      context.missing(_projectMeta);
    }
    if (data.containsKey('disabled')) {
      context.handle(_disabledMeta,
          disabled.isAcceptableOrUnknown(data['disabled']!, _disabledMeta));
    } else if (isInserting) {
      context.missing(_disabledMeta);
    }
    if (data.containsKey('start_date')) {
      context.handle(_startDateMeta,
          startDate.isAcceptableOrUnknown(data['start_date']!, _startDateMeta));
    }
    if (data.containsKey('end_date')) {
      context.handle(_endDateMeta,
          endDate.isAcceptableOrUnknown(data['end_date']!, _endDateMeta));
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Activity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Activity(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      lastModifiedDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}last_modified_date'])!,
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      displayName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}display_name']),
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code']),
      translations: $ActivitiesTable.$convertertranslationsn.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}translations'])),
      project: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}project'])!,
      disabled: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}disabled'])!,
      startDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}start_date']),
      endDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}end_date']),
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
    );
  }

  @override
  $ActivitiesTable createAlias(String alias) {
    return $ActivitiesTable(attachedDatabase, alias);
  }

  static TypeConverter<List<Translation>, String> $convertertranslations =
      const TranslationConverter();
  static TypeConverter<List<Translation>?, String?> $convertertranslationsn =
      NullAwareTypeConverter.wrap($convertertranslations);
}

class Activity extends DataClass implements Insertable<Activity> {
  final String id;
  final DateTime lastModifiedDate;
  final DateTime createdDate;
  final String? name;
  final String? displayName;
  final String? code;

  /// List of Translations
  final List<Translation>? translations;
  final String project;
  final bool disabled;
  final DateTime? startDate;
  final DateTime? endDate;
  final String? description;
  const Activity(
      {required this.id,
      required this.lastModifiedDate,
      required this.createdDate,
      this.name,
      this.displayName,
      this.code,
      this.translations,
      required this.project,
      required this.disabled,
      this.startDate,
      this.endDate,
      this.description});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['last_modified_date'] = Variable<DateTime>(lastModifiedDate);
    map['created_date'] = Variable<DateTime>(createdDate);
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || displayName != null) {
      map['display_name'] = Variable<String>(displayName);
    }
    if (!nullToAbsent || code != null) {
      map['code'] = Variable<String>(code);
    }
    if (!nullToAbsent || translations != null) {
      map['translations'] = Variable<String>(
          $ActivitiesTable.$convertertranslationsn.toSql(translations));
    }
    map['project'] = Variable<String>(project);
    map['disabled'] = Variable<bool>(disabled);
    if (!nullToAbsent || startDate != null) {
      map['start_date'] = Variable<DateTime>(startDate);
    }
    if (!nullToAbsent || endDate != null) {
      map['end_date'] = Variable<DateTime>(endDate);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    return map;
  }

  ActivitiesCompanion toCompanion(bool nullToAbsent) {
    return ActivitiesCompanion(
      id: Value(id),
      lastModifiedDate: Value(lastModifiedDate),
      createdDate: Value(createdDate),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      displayName: displayName == null && nullToAbsent
          ? const Value.absent()
          : Value(displayName),
      code: code == null && nullToAbsent ? const Value.absent() : Value(code),
      translations: translations == null && nullToAbsent
          ? const Value.absent()
          : Value(translations),
      project: Value(project),
      disabled: Value(disabled),
      startDate: startDate == null && nullToAbsent
          ? const Value.absent()
          : Value(startDate),
      endDate: endDate == null && nullToAbsent
          ? const Value.absent()
          : Value(endDate),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
    );
  }

  factory Activity.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Activity(
      id: serializer.fromJson<String>(json['id']),
      lastModifiedDate: serializer.fromJson<DateTime>(json['lastModifiedDate']),
      createdDate: serializer.fromJson<DateTime>(json['createdDate']),
      name: serializer.fromJson<String?>(json['name']),
      displayName: serializer.fromJson<String?>(json['displayName']),
      code: serializer.fromJson<String?>(json['code']),
      translations:
          serializer.fromJson<List<Translation>?>(json['translations']),
      project: serializer.fromJson<String>(json['project']),
      disabled: serializer.fromJson<bool>(json['disabled']),
      startDate: serializer.fromJson<DateTime?>(json['startDate']),
      endDate: serializer.fromJson<DateTime?>(json['endDate']),
      description: serializer.fromJson<String?>(json['description']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'lastModifiedDate': serializer.toJson<DateTime>(lastModifiedDate),
      'createdDate': serializer.toJson<DateTime>(createdDate),
      'name': serializer.toJson<String?>(name),
      'displayName': serializer.toJson<String?>(displayName),
      'code': serializer.toJson<String?>(code),
      'translations': serializer.toJson<List<Translation>?>(translations),
      'project': serializer.toJson<String>(project),
      'disabled': serializer.toJson<bool>(disabled),
      'startDate': serializer.toJson<DateTime?>(startDate),
      'endDate': serializer.toJson<DateTime?>(endDate),
      'description': serializer.toJson<String?>(description),
    };
  }

  Activity copyWith(
          {String? id,
          DateTime? lastModifiedDate,
          DateTime? createdDate,
          Value<String?> name = const Value.absent(),
          Value<String?> displayName = const Value.absent(),
          Value<String?> code = const Value.absent(),
          Value<List<Translation>?> translations = const Value.absent(),
          String? project,
          bool? disabled,
          Value<DateTime?> startDate = const Value.absent(),
          Value<DateTime?> endDate = const Value.absent(),
          Value<String?> description = const Value.absent()}) =>
      Activity(
        id: id ?? this.id,
        lastModifiedDate: lastModifiedDate ?? this.lastModifiedDate,
        createdDate: createdDate ?? this.createdDate,
        name: name.present ? name.value : this.name,
        displayName: displayName.present ? displayName.value : this.displayName,
        code: code.present ? code.value : this.code,
        translations:
            translations.present ? translations.value : this.translations,
        project: project ?? this.project,
        disabled: disabled ?? this.disabled,
        startDate: startDate.present ? startDate.value : this.startDate,
        endDate: endDate.present ? endDate.value : this.endDate,
        description: description.present ? description.value : this.description,
      );
  Activity copyWithCompanion(ActivitiesCompanion data) {
    return Activity(
      id: data.id.present ? data.id.value : this.id,
      lastModifiedDate: data.lastModifiedDate.present
          ? data.lastModifiedDate.value
          : this.lastModifiedDate,
      createdDate:
          data.createdDate.present ? data.createdDate.value : this.createdDate,
      name: data.name.present ? data.name.value : this.name,
      displayName:
          data.displayName.present ? data.displayName.value : this.displayName,
      code: data.code.present ? data.code.value : this.code,
      translations: data.translations.present
          ? data.translations.value
          : this.translations,
      project: data.project.present ? data.project.value : this.project,
      disabled: data.disabled.present ? data.disabled.value : this.disabled,
      startDate: data.startDate.present ? data.startDate.value : this.startDate,
      endDate: data.endDate.present ? data.endDate.value : this.endDate,
      description:
          data.description.present ? data.description.value : this.description,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Activity(')
          ..write('id: $id, ')
          ..write('lastModifiedDate: $lastModifiedDate, ')
          ..write('createdDate: $createdDate, ')
          ..write('name: $name, ')
          ..write('displayName: $displayName, ')
          ..write('code: $code, ')
          ..write('translations: $translations, ')
          ..write('project: $project, ')
          ..write('disabled: $disabled, ')
          ..write('startDate: $startDate, ')
          ..write('endDate: $endDate, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      lastModifiedDate,
      createdDate,
      name,
      displayName,
      code,
      translations,
      project,
      disabled,
      startDate,
      endDate,
      description);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Activity &&
          other.id == this.id &&
          other.lastModifiedDate == this.lastModifiedDate &&
          other.createdDate == this.createdDate &&
          other.name == this.name &&
          other.displayName == this.displayName &&
          other.code == this.code &&
          other.translations == this.translations &&
          other.project == this.project &&
          other.disabled == this.disabled &&
          other.startDate == this.startDate &&
          other.endDate == this.endDate &&
          other.description == this.description);
}

class ActivitiesCompanion extends UpdateCompanion<Activity> {
  final Value<String> id;
  final Value<DateTime> lastModifiedDate;
  final Value<DateTime> createdDate;
  final Value<String?> name;
  final Value<String?> displayName;
  final Value<String?> code;
  final Value<List<Translation>?> translations;
  final Value<String> project;
  final Value<bool> disabled;
  final Value<DateTime?> startDate;
  final Value<DateTime?> endDate;
  final Value<String?> description;
  final Value<int> rowid;
  const ActivitiesCompanion({
    this.id = const Value.absent(),
    this.lastModifiedDate = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.name = const Value.absent(),
    this.displayName = const Value.absent(),
    this.code = const Value.absent(),
    this.translations = const Value.absent(),
    this.project = const Value.absent(),
    this.disabled = const Value.absent(),
    this.startDate = const Value.absent(),
    this.endDate = const Value.absent(),
    this.description = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ActivitiesCompanion.insert({
    required String id,
    this.lastModifiedDate = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.name = const Value.absent(),
    this.displayName = const Value.absent(),
    this.code = const Value.absent(),
    this.translations = const Value.absent(),
    required String project,
    required bool disabled,
    this.startDate = const Value.absent(),
    this.endDate = const Value.absent(),
    this.description = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        project = Value(project),
        disabled = Value(disabled);
  static Insertable<Activity> custom({
    Expression<String>? id,
    Expression<DateTime>? lastModifiedDate,
    Expression<DateTime>? createdDate,
    Expression<String>? name,
    Expression<String>? displayName,
    Expression<String>? code,
    Expression<String>? translations,
    Expression<String>? project,
    Expression<bool>? disabled,
    Expression<DateTime>? startDate,
    Expression<DateTime>? endDate,
    Expression<String>? description,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (lastModifiedDate != null) 'last_modified_date': lastModifiedDate,
      if (createdDate != null) 'created_date': createdDate,
      if (name != null) 'name': name,
      if (displayName != null) 'display_name': displayName,
      if (code != null) 'code': code,
      if (translations != null) 'translations': translations,
      if (project != null) 'project': project,
      if (disabled != null) 'disabled': disabled,
      if (startDate != null) 'start_date': startDate,
      if (endDate != null) 'end_date': endDate,
      if (description != null) 'description': description,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ActivitiesCompanion copyWith(
      {Value<String>? id,
      Value<DateTime>? lastModifiedDate,
      Value<DateTime>? createdDate,
      Value<String?>? name,
      Value<String?>? displayName,
      Value<String?>? code,
      Value<List<Translation>?>? translations,
      Value<String>? project,
      Value<bool>? disabled,
      Value<DateTime?>? startDate,
      Value<DateTime?>? endDate,
      Value<String?>? description,
      Value<int>? rowid}) {
    return ActivitiesCompanion(
      id: id ?? this.id,
      lastModifiedDate: lastModifiedDate ?? this.lastModifiedDate,
      createdDate: createdDate ?? this.createdDate,
      name: name ?? this.name,
      displayName: displayName ?? this.displayName,
      code: code ?? this.code,
      translations: translations ?? this.translations,
      project: project ?? this.project,
      disabled: disabled ?? this.disabled,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      description: description ?? this.description,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (lastModifiedDate.present) {
      map['last_modified_date'] = Variable<DateTime>(lastModifiedDate.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (displayName.present) {
      map['display_name'] = Variable<String>(displayName.value);
    }
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (translations.present) {
      map['translations'] = Variable<String>(
          $ActivitiesTable.$convertertranslationsn.toSql(translations.value));
    }
    if (project.present) {
      map['project'] = Variable<String>(project.value);
    }
    if (disabled.present) {
      map['disabled'] = Variable<bool>(disabled.value);
    }
    if (startDate.present) {
      map['start_date'] = Variable<DateTime>(startDate.value);
    }
    if (endDate.present) {
      map['end_date'] = Variable<DateTime>(endDate.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ActivitiesCompanion(')
          ..write('id: $id, ')
          ..write('lastModifiedDate: $lastModifiedDate, ')
          ..write('createdDate: $createdDate, ')
          ..write('name: $name, ')
          ..write('displayName: $displayName, ')
          ..write('code: $code, ')
          ..write('translations: $translations, ')
          ..write('project: $project, ')
          ..write('disabled: $disabled, ')
          ..write('startDate: $startDate, ')
          ..write('endDate: $endDate, ')
          ..write('description: $description, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $TeamsTable extends Teams with TableInfo<$TeamsTable, Team> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TeamsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lastModifiedDateMeta =
      const VerificationMeta('lastModifiedDate');
  @override
  late final GeneratedColumn<DateTime> lastModifiedDate =
      GeneratedColumn<DateTime>('last_modified_date', aliasedName, false,
          type: DriftSqlType.dateTime,
          requiredDuringInsert: false,
          defaultValue: currentDateAndTime);
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _displayNameMeta =
      const VerificationMeta('displayName');
  @override
  late final GeneratedColumn<String> displayName = GeneratedColumn<String>(
      'display_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String> code = GeneratedColumn<String>(
      'code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _translationsMeta =
      const VerificationMeta('translations');
  @override
  late final GeneratedColumnWithTypeConverter<List<Translation>?, String>
      translations = GeneratedColumn<String>('translations', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<Translation>?>(
              $TeamsTable.$convertertranslationsn);
  static const VerificationMeta _activityMeta =
      const VerificationMeta('activity');
  @override
  late final GeneratedColumn<String> activity = GeneratedColumn<String>(
      'activity', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES activities (id)'));
  static const VerificationMeta _disabledMeta =
      const VerificationMeta('disabled');
  @override
  late final GeneratedColumn<bool> disabled = GeneratedColumn<bool>(
      'disabled', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("disabled" IN (0, 1))'),
      defaultValue: const Constant(true));
  static const VerificationMeta _deleteClientDataMeta =
      const VerificationMeta('deleteClientData');
  @override
  late final GeneratedColumn<bool> deleteClientData = GeneratedColumn<bool>(
      'delete_client_data', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("delete_client_data" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _propertiesMeta =
      const VerificationMeta('properties');
  @override
  late final GeneratedColumnWithTypeConverter<Map<String, Object?>?, String>
      properties = GeneratedColumn<String>('properties', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<Map<String, Object?>?>(
              $TeamsTable.$converterpropertiesn);
  static const VerificationMeta _formPermissionsMeta =
      const VerificationMeta('formPermissions');
  @override
  late final GeneratedColumnWithTypeConverter<List<TeamFormPermission>, String>
      formPermissions = GeneratedColumn<String>(
              'form_permissions', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<TeamFormPermission>>(
              $TeamsTable.$converterformPermissions);
  static const VerificationMeta _scopeMeta = const VerificationMeta('scope');
  @override
  late final GeneratedColumnWithTypeConverter<EntityScope?, String> scope =
      GeneratedColumn<String>('scope', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<EntityScope?>($TeamsTable.$converterscopen);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        lastModifiedDate,
        createdDate,
        name,
        displayName,
        code,
        translations,
        activity,
        disabled,
        deleteClientData,
        properties,
        formPermissions,
        scope
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'teams';
  @override
  VerificationContext validateIntegrity(Insertable<Team> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('last_modified_date')) {
      context.handle(
          _lastModifiedDateMeta,
          lastModifiedDate.isAcceptableOrUnknown(
              data['last_modified_date']!, _lastModifiedDateMeta));
    }
    if (data.containsKey('created_date')) {
      context.handle(
          _createdDateMeta,
          createdDate.isAcceptableOrUnknown(
              data['created_date']!, _createdDateMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('display_name')) {
      context.handle(
          _displayNameMeta,
          displayName.isAcceptableOrUnknown(
              data['display_name']!, _displayNameMeta));
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    }
    context.handle(_translationsMeta, const VerificationResult.success());
    if (data.containsKey('activity')) {
      context.handle(_activityMeta,
          activity.isAcceptableOrUnknown(data['activity']!, _activityMeta));
    } else if (isInserting) {
      context.missing(_activityMeta);
    }
    if (data.containsKey('disabled')) {
      context.handle(_disabledMeta,
          disabled.isAcceptableOrUnknown(data['disabled']!, _disabledMeta));
    }
    if (data.containsKey('delete_client_data')) {
      context.handle(
          _deleteClientDataMeta,
          deleteClientData.isAcceptableOrUnknown(
              data['delete_client_data']!, _deleteClientDataMeta));
    }
    context.handle(_propertiesMeta, const VerificationResult.success());
    context.handle(_formPermissionsMeta, const VerificationResult.success());
    context.handle(_scopeMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Team map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Team(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      lastModifiedDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}last_modified_date'])!,
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      displayName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}display_name']),
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code']),
      translations: $TeamsTable.$convertertranslationsn.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}translations'])),
      activity: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}activity'])!,
      disabled: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}disabled'])!,
      deleteClientData: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}delete_client_data'])!,
      properties: $TeamsTable.$converterpropertiesn.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}properties'])),
      formPermissions: $TeamsTable.$converterformPermissions.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}form_permissions'])),
      scope: $TeamsTable.$converterscopen.fromSql(attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}scope'])),
    );
  }

  @override
  $TeamsTable createAlias(String alias) {
    return $TeamsTable(attachedDatabase, alias);
  }

  static TypeConverter<List<Translation>, String> $convertertranslations =
      const TranslationConverter();
  static TypeConverter<List<Translation>?, String?> $convertertranslationsn =
      NullAwareTypeConverter.wrap($convertertranslations);
  static TypeConverter<Map<String, Object?>, String> $converterproperties =
      const MapConverter<Object?>();
  static TypeConverter<Map<String, Object?>?, String?> $converterpropertiesn =
      NullAwareTypeConverter.wrap($converterproperties);
  static TypeConverter<List<TeamFormPermission>, String?>
      $converterformPermissions = const TeamFormPermissionListConverter();
  static JsonTypeConverter2<EntityScope, String, String> $converterscope =
      const EnumNameConverter(EntityScope.values);
  static JsonTypeConverter2<EntityScope?, String?, String?> $converterscopen =
      JsonTypeConverter2.asNullable($converterscope);
}

class Team extends DataClass implements Insertable<Team> {
  final String id;
  final DateTime lastModifiedDate;
  final DateTime createdDate;
  final String? name;
  final String? displayName;
  final String? code;

  /// List of Translations
  final List<Translation>? translations;
  final String activity;

  /// Boolean columns with defaults.
  final bool disabled;
  final bool deleteClientData;

  /// Properties stored as a JSON string.
  final Map<String, Object?>? properties;

  /// Form permissions stored as JSON representing a list of TeamFormPermission.
  final List<TeamFormPermission> formPermissions;

  /// Scope stored as text with a converter.
  final EntityScope? scope;
  const Team(
      {required this.id,
      required this.lastModifiedDate,
      required this.createdDate,
      this.name,
      this.displayName,
      this.code,
      this.translations,
      required this.activity,
      required this.disabled,
      required this.deleteClientData,
      this.properties,
      required this.formPermissions,
      this.scope});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['last_modified_date'] = Variable<DateTime>(lastModifiedDate);
    map['created_date'] = Variable<DateTime>(createdDate);
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || displayName != null) {
      map['display_name'] = Variable<String>(displayName);
    }
    if (!nullToAbsent || code != null) {
      map['code'] = Variable<String>(code);
    }
    if (!nullToAbsent || translations != null) {
      map['translations'] = Variable<String>(
          $TeamsTable.$convertertranslationsn.toSql(translations));
    }
    map['activity'] = Variable<String>(activity);
    map['disabled'] = Variable<bool>(disabled);
    map['delete_client_data'] = Variable<bool>(deleteClientData);
    if (!nullToAbsent || properties != null) {
      map['properties'] =
          Variable<String>($TeamsTable.$converterpropertiesn.toSql(properties));
    }
    {
      map['form_permissions'] = Variable<String>(
          $TeamsTable.$converterformPermissions.toSql(formPermissions));
    }
    if (!nullToAbsent || scope != null) {
      map['scope'] =
          Variable<String>($TeamsTable.$converterscopen.toSql(scope));
    }
    return map;
  }

  TeamsCompanion toCompanion(bool nullToAbsent) {
    return TeamsCompanion(
      id: Value(id),
      lastModifiedDate: Value(lastModifiedDate),
      createdDate: Value(createdDate),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      displayName: displayName == null && nullToAbsent
          ? const Value.absent()
          : Value(displayName),
      code: code == null && nullToAbsent ? const Value.absent() : Value(code),
      translations: translations == null && nullToAbsent
          ? const Value.absent()
          : Value(translations),
      activity: Value(activity),
      disabled: Value(disabled),
      deleteClientData: Value(deleteClientData),
      properties: properties == null && nullToAbsent
          ? const Value.absent()
          : Value(properties),
      formPermissions: Value(formPermissions),
      scope:
          scope == null && nullToAbsent ? const Value.absent() : Value(scope),
    );
  }

  factory Team.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Team(
      id: serializer.fromJson<String>(json['id']),
      lastModifiedDate: serializer.fromJson<DateTime>(json['lastModifiedDate']),
      createdDate: serializer.fromJson<DateTime>(json['createdDate']),
      name: serializer.fromJson<String?>(json['name']),
      displayName: serializer.fromJson<String?>(json['displayName']),
      code: serializer.fromJson<String?>(json['code']),
      translations:
          serializer.fromJson<List<Translation>?>(json['translations']),
      activity: serializer.fromJson<String>(json['activity']),
      disabled: serializer.fromJson<bool>(json['disabled']),
      deleteClientData: serializer.fromJson<bool>(json['deleteClientData']),
      properties:
          serializer.fromJson<Map<String, Object?>?>(json['properties']),
      formPermissions: serializer
          .fromJson<List<TeamFormPermission>>(json['formPermissions']),
      scope: $TeamsTable.$converterscopen
          .fromJson(serializer.fromJson<String?>(json['scope'])),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'lastModifiedDate': serializer.toJson<DateTime>(lastModifiedDate),
      'createdDate': serializer.toJson<DateTime>(createdDate),
      'name': serializer.toJson<String?>(name),
      'displayName': serializer.toJson<String?>(displayName),
      'code': serializer.toJson<String?>(code),
      'translations': serializer.toJson<List<Translation>?>(translations),
      'activity': serializer.toJson<String>(activity),
      'disabled': serializer.toJson<bool>(disabled),
      'deleteClientData': serializer.toJson<bool>(deleteClientData),
      'properties': serializer.toJson<Map<String, Object?>?>(properties),
      'formPermissions':
          serializer.toJson<List<TeamFormPermission>>(formPermissions),
      'scope': serializer
          .toJson<String?>($TeamsTable.$converterscopen.toJson(scope)),
    };
  }

  Team copyWith(
          {String? id,
          DateTime? lastModifiedDate,
          DateTime? createdDate,
          Value<String?> name = const Value.absent(),
          Value<String?> displayName = const Value.absent(),
          Value<String?> code = const Value.absent(),
          Value<List<Translation>?> translations = const Value.absent(),
          String? activity,
          bool? disabled,
          bool? deleteClientData,
          Value<Map<String, Object?>?> properties = const Value.absent(),
          List<TeamFormPermission>? formPermissions,
          Value<EntityScope?> scope = const Value.absent()}) =>
      Team(
        id: id ?? this.id,
        lastModifiedDate: lastModifiedDate ?? this.lastModifiedDate,
        createdDate: createdDate ?? this.createdDate,
        name: name.present ? name.value : this.name,
        displayName: displayName.present ? displayName.value : this.displayName,
        code: code.present ? code.value : this.code,
        translations:
            translations.present ? translations.value : this.translations,
        activity: activity ?? this.activity,
        disabled: disabled ?? this.disabled,
        deleteClientData: deleteClientData ?? this.deleteClientData,
        properties: properties.present ? properties.value : this.properties,
        formPermissions: formPermissions ?? this.formPermissions,
        scope: scope.present ? scope.value : this.scope,
      );
  Team copyWithCompanion(TeamsCompanion data) {
    return Team(
      id: data.id.present ? data.id.value : this.id,
      lastModifiedDate: data.lastModifiedDate.present
          ? data.lastModifiedDate.value
          : this.lastModifiedDate,
      createdDate:
          data.createdDate.present ? data.createdDate.value : this.createdDate,
      name: data.name.present ? data.name.value : this.name,
      displayName:
          data.displayName.present ? data.displayName.value : this.displayName,
      code: data.code.present ? data.code.value : this.code,
      translations: data.translations.present
          ? data.translations.value
          : this.translations,
      activity: data.activity.present ? data.activity.value : this.activity,
      disabled: data.disabled.present ? data.disabled.value : this.disabled,
      deleteClientData: data.deleteClientData.present
          ? data.deleteClientData.value
          : this.deleteClientData,
      properties:
          data.properties.present ? data.properties.value : this.properties,
      formPermissions: data.formPermissions.present
          ? data.formPermissions.value
          : this.formPermissions,
      scope: data.scope.present ? data.scope.value : this.scope,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Team(')
          ..write('id: $id, ')
          ..write('lastModifiedDate: $lastModifiedDate, ')
          ..write('createdDate: $createdDate, ')
          ..write('name: $name, ')
          ..write('displayName: $displayName, ')
          ..write('code: $code, ')
          ..write('translations: $translations, ')
          ..write('activity: $activity, ')
          ..write('disabled: $disabled, ')
          ..write('deleteClientData: $deleteClientData, ')
          ..write('properties: $properties, ')
          ..write('formPermissions: $formPermissions, ')
          ..write('scope: $scope')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      lastModifiedDate,
      createdDate,
      name,
      displayName,
      code,
      translations,
      activity,
      disabled,
      deleteClientData,
      properties,
      formPermissions,
      scope);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Team &&
          other.id == this.id &&
          other.lastModifiedDate == this.lastModifiedDate &&
          other.createdDate == this.createdDate &&
          other.name == this.name &&
          other.displayName == this.displayName &&
          other.code == this.code &&
          other.translations == this.translations &&
          other.activity == this.activity &&
          other.disabled == this.disabled &&
          other.deleteClientData == this.deleteClientData &&
          other.properties == this.properties &&
          other.formPermissions == this.formPermissions &&
          other.scope == this.scope);
}

class TeamsCompanion extends UpdateCompanion<Team> {
  final Value<String> id;
  final Value<DateTime> lastModifiedDate;
  final Value<DateTime> createdDate;
  final Value<String?> name;
  final Value<String?> displayName;
  final Value<String?> code;
  final Value<List<Translation>?> translations;
  final Value<String> activity;
  final Value<bool> disabled;
  final Value<bool> deleteClientData;
  final Value<Map<String, Object?>?> properties;
  final Value<List<TeamFormPermission>> formPermissions;
  final Value<EntityScope?> scope;
  final Value<int> rowid;
  const TeamsCompanion({
    this.id = const Value.absent(),
    this.lastModifiedDate = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.name = const Value.absent(),
    this.displayName = const Value.absent(),
    this.code = const Value.absent(),
    this.translations = const Value.absent(),
    this.activity = const Value.absent(),
    this.disabled = const Value.absent(),
    this.deleteClientData = const Value.absent(),
    this.properties = const Value.absent(),
    this.formPermissions = const Value.absent(),
    this.scope = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  TeamsCompanion.insert({
    required String id,
    this.lastModifiedDate = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.name = const Value.absent(),
    this.displayName = const Value.absent(),
    this.code = const Value.absent(),
    this.translations = const Value.absent(),
    required String activity,
    this.disabled = const Value.absent(),
    this.deleteClientData = const Value.absent(),
    this.properties = const Value.absent(),
    this.formPermissions = const Value.absent(),
    this.scope = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        activity = Value(activity);
  static Insertable<Team> custom({
    Expression<String>? id,
    Expression<DateTime>? lastModifiedDate,
    Expression<DateTime>? createdDate,
    Expression<String>? name,
    Expression<String>? displayName,
    Expression<String>? code,
    Expression<String>? translations,
    Expression<String>? activity,
    Expression<bool>? disabled,
    Expression<bool>? deleteClientData,
    Expression<String>? properties,
    Expression<String>? formPermissions,
    Expression<String>? scope,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (lastModifiedDate != null) 'last_modified_date': lastModifiedDate,
      if (createdDate != null) 'created_date': createdDate,
      if (name != null) 'name': name,
      if (displayName != null) 'display_name': displayName,
      if (code != null) 'code': code,
      if (translations != null) 'translations': translations,
      if (activity != null) 'activity': activity,
      if (disabled != null) 'disabled': disabled,
      if (deleteClientData != null) 'delete_client_data': deleteClientData,
      if (properties != null) 'properties': properties,
      if (formPermissions != null) 'form_permissions': formPermissions,
      if (scope != null) 'scope': scope,
      if (rowid != null) 'rowid': rowid,
    });
  }

  TeamsCompanion copyWith(
      {Value<String>? id,
      Value<DateTime>? lastModifiedDate,
      Value<DateTime>? createdDate,
      Value<String?>? name,
      Value<String?>? displayName,
      Value<String?>? code,
      Value<List<Translation>?>? translations,
      Value<String>? activity,
      Value<bool>? disabled,
      Value<bool>? deleteClientData,
      Value<Map<String, Object?>?>? properties,
      Value<List<TeamFormPermission>>? formPermissions,
      Value<EntityScope?>? scope,
      Value<int>? rowid}) {
    return TeamsCompanion(
      id: id ?? this.id,
      lastModifiedDate: lastModifiedDate ?? this.lastModifiedDate,
      createdDate: createdDate ?? this.createdDate,
      name: name ?? this.name,
      displayName: displayName ?? this.displayName,
      code: code ?? this.code,
      translations: translations ?? this.translations,
      activity: activity ?? this.activity,
      disabled: disabled ?? this.disabled,
      deleteClientData: deleteClientData ?? this.deleteClientData,
      properties: properties ?? this.properties,
      formPermissions: formPermissions ?? this.formPermissions,
      scope: scope ?? this.scope,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (lastModifiedDate.present) {
      map['last_modified_date'] = Variable<DateTime>(lastModifiedDate.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (displayName.present) {
      map['display_name'] = Variable<String>(displayName.value);
    }
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (translations.present) {
      map['translations'] = Variable<String>(
          $TeamsTable.$convertertranslationsn.toSql(translations.value));
    }
    if (activity.present) {
      map['activity'] = Variable<String>(activity.value);
    }
    if (disabled.present) {
      map['disabled'] = Variable<bool>(disabled.value);
    }
    if (deleteClientData.present) {
      map['delete_client_data'] = Variable<bool>(deleteClientData.value);
    }
    if (properties.present) {
      map['properties'] = Variable<String>(
          $TeamsTable.$converterpropertiesn.toSql(properties.value));
    }
    if (formPermissions.present) {
      map['form_permissions'] = Variable<String>(
          $TeamsTable.$converterformPermissions.toSql(formPermissions.value));
    }
    if (scope.present) {
      map['scope'] =
          Variable<String>($TeamsTable.$converterscopen.toSql(scope.value));
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TeamsCompanion(')
          ..write('id: $id, ')
          ..write('lastModifiedDate: $lastModifiedDate, ')
          ..write('createdDate: $createdDate, ')
          ..write('name: $name, ')
          ..write('displayName: $displayName, ')
          ..write('code: $code, ')
          ..write('translations: $translations, ')
          ..write('activity: $activity, ')
          ..write('disabled: $disabled, ')
          ..write('deleteClientData: $deleteClientData, ')
          ..write('properties: $properties, ')
          ..write('formPermissions: $formPermissions, ')
          ..write('scope: $scope, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $AssignmentsTable extends Assignments
    with TableInfo<$AssignmentsTable, Assignment> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AssignmentsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lastModifiedDateMeta =
      const VerificationMeta('lastModifiedDate');
  @override
  late final GeneratedColumn<DateTime> lastModifiedDate =
      GeneratedColumn<DateTime>('last_modified_date', aliasedName, false,
          type: DriftSqlType.dateTime,
          requiredDuringInsert: false,
          defaultValue: currentDateAndTime);
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  static const VerificationMeta _activityMeta =
      const VerificationMeta('activity');
  @override
  late final GeneratedColumn<String> activity = GeneratedColumn<String>(
      'activity', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES activities (id)'));
  static const VerificationMeta _teamMeta = const VerificationMeta('team');
  @override
  late final GeneratedColumn<String> team = GeneratedColumn<String>(
      'team', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES teams (id)'));
  static const VerificationMeta _orgUnitMeta =
      const VerificationMeta('orgUnit');
  @override
  late final GeneratedColumn<String> orgUnit = GeneratedColumn<String>(
      'org_unit', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES org_units (id)'));
  static const VerificationMeta _parentMeta = const VerificationMeta('parent');
  @override
  late final GeneratedColumn<String> parent = GeneratedColumn<String>(
      'parent', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES assignments (id)'));
  static const VerificationMeta _startDayMeta =
      const VerificationMeta('startDay');
  @override
  late final GeneratedColumn<int> startDay = GeneratedColumn<int>(
      'start_day', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _startDateMeta =
      const VerificationMeta('startDate');
  @override
  late final GeneratedColumn<DateTime> startDate = GeneratedColumn<DateTime>(
      'start_date', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumnWithTypeConverter<AssignmentStatus?, String>
      status = GeneratedColumn<String>('status', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<AssignmentStatus?>(
              $AssignmentsTable.$converterstatusn);
  static const VerificationMeta _allocatedResourcesMeta =
      const VerificationMeta('allocatedResources');
  @override
  late final GeneratedColumnWithTypeConverter<Map<String, Object?>, String>
      allocatedResources = GeneratedColumn<String>(
              'allocated_resources', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<Map<String, Object?>>(
              $AssignmentsTable.$converterallocatedResources);
  static const VerificationMeta _formsMeta = const VerificationMeta('forms');
  @override
  late final GeneratedColumnWithTypeConverter<List<String>, String> forms =
      GeneratedColumn<String>('forms', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<String>>($AssignmentsTable.$converterforms);
  static const VerificationMeta _scopeMeta = const VerificationMeta('scope');
  @override
  late final GeneratedColumnWithTypeConverter<EntityScope?, String> scope =
      GeneratedColumn<String>('scope', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<EntityScope?>($AssignmentsTable.$converterscopen);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        lastModifiedDate,
        createdDate,
        activity,
        team,
        orgUnit,
        parent,
        startDay,
        startDate,
        status,
        allocatedResources,
        forms,
        scope
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'assignments';
  @override
  VerificationContext validateIntegrity(Insertable<Assignment> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('last_modified_date')) {
      context.handle(
          _lastModifiedDateMeta,
          lastModifiedDate.isAcceptableOrUnknown(
              data['last_modified_date']!, _lastModifiedDateMeta));
    }
    if (data.containsKey('created_date')) {
      context.handle(
          _createdDateMeta,
          createdDate.isAcceptableOrUnknown(
              data['created_date']!, _createdDateMeta));
    }
    if (data.containsKey('activity')) {
      context.handle(_activityMeta,
          activity.isAcceptableOrUnknown(data['activity']!, _activityMeta));
    } else if (isInserting) {
      context.missing(_activityMeta);
    }
    if (data.containsKey('team')) {
      context.handle(
          _teamMeta, team.isAcceptableOrUnknown(data['team']!, _teamMeta));
    } else if (isInserting) {
      context.missing(_teamMeta);
    }
    if (data.containsKey('org_unit')) {
      context.handle(_orgUnitMeta,
          orgUnit.isAcceptableOrUnknown(data['org_unit']!, _orgUnitMeta));
    } else if (isInserting) {
      context.missing(_orgUnitMeta);
    }
    if (data.containsKey('parent')) {
      context.handle(_parentMeta,
          parent.isAcceptableOrUnknown(data['parent']!, _parentMeta));
    }
    if (data.containsKey('start_day')) {
      context.handle(_startDayMeta,
          startDay.isAcceptableOrUnknown(data['start_day']!, _startDayMeta));
    }
    if (data.containsKey('start_date')) {
      context.handle(_startDateMeta,
          startDate.isAcceptableOrUnknown(data['start_date']!, _startDateMeta));
    }
    context.handle(_statusMeta, const VerificationResult.success());
    context.handle(_allocatedResourcesMeta, const VerificationResult.success());
    context.handle(_formsMeta, const VerificationResult.success());
    context.handle(_scopeMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Assignment map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Assignment(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      lastModifiedDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}last_modified_date'])!,
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date'])!,
      activity: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}activity'])!,
      team: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}team'])!,
      orgUnit: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}org_unit'])!,
      parent: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}parent']),
      startDay: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}start_day']),
      startDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}start_date']),
      status: $AssignmentsTable.$converterstatusn.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status'])),
      allocatedResources: $AssignmentsTable.$converterallocatedResources
          .fromSql(attachedDatabase.typeMapping.read(DriftSqlType.string,
              data['${effectivePrefix}allocated_resources'])),
      forms: $AssignmentsTable.$converterforms.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}forms'])),
      scope: $AssignmentsTable.$converterscopen.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}scope'])),
    );
  }

  @override
  $AssignmentsTable createAlias(String alias) {
    return $AssignmentsTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<AssignmentStatus, String, String> $converterstatus =
      const EnumNameConverter(AssignmentStatus.values);
  static JsonTypeConverter2<AssignmentStatus?, String?, String?>
      $converterstatusn = JsonTypeConverter2.asNullable($converterstatus);
  static TypeConverter<Map<String, Object?>, String?>
      $converterallocatedResources = const AllocatedResourcesConverter();
  static TypeConverter<List<String>, String?> $converterforms =
      const ListConverter<String>();
  static JsonTypeConverter2<EntityScope, String, String> $converterscope =
      const EnumNameConverter(EntityScope.values);
  static JsonTypeConverter2<EntityScope?, String?, String?> $converterscopen =
      JsonTypeConverter2.asNullable($converterscope);
}

class Assignment extends DataClass implements Insertable<Assignment> {
  final String id;
  final DateTime lastModifiedDate;
  final DateTime createdDate;
  final String activity;
  final String team;
  final String orgUnit;

  /// Parent reference (stored as a text foreign key, if applicable)
  final String? parent;

  /// Start day as integer, nullable
  final int? startDay;

  /// Start date as text (ISO string, for example)
  final DateTime? startDate;

  /// Assignment status stored as text via a converter
  final AssignmentStatus? status;

  /// allocatedResources stored as JSON string
  final Map<String, Object?> allocatedResources;

  /// forms stored as JSON string representing a List<String>
  final List<String> forms;

  /// scope stored as text via a converter
  final EntityScope? scope;
  const Assignment(
      {required this.id,
      required this.lastModifiedDate,
      required this.createdDate,
      required this.activity,
      required this.team,
      required this.orgUnit,
      this.parent,
      this.startDay,
      this.startDate,
      this.status,
      required this.allocatedResources,
      required this.forms,
      this.scope});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['last_modified_date'] = Variable<DateTime>(lastModifiedDate);
    map['created_date'] = Variable<DateTime>(createdDate);
    map['activity'] = Variable<String>(activity);
    map['team'] = Variable<String>(team);
    map['org_unit'] = Variable<String>(orgUnit);
    if (!nullToAbsent || parent != null) {
      map['parent'] = Variable<String>(parent);
    }
    if (!nullToAbsent || startDay != null) {
      map['start_day'] = Variable<int>(startDay);
    }
    if (!nullToAbsent || startDate != null) {
      map['start_date'] = Variable<DateTime>(startDate);
    }
    if (!nullToAbsent || status != null) {
      map['status'] =
          Variable<String>($AssignmentsTable.$converterstatusn.toSql(status));
    }
    {
      map['allocated_resources'] = Variable<String>($AssignmentsTable
          .$converterallocatedResources
          .toSql(allocatedResources));
    }
    {
      map['forms'] =
          Variable<String>($AssignmentsTable.$converterforms.toSql(forms));
    }
    if (!nullToAbsent || scope != null) {
      map['scope'] =
          Variable<String>($AssignmentsTable.$converterscopen.toSql(scope));
    }
    return map;
  }

  AssignmentsCompanion toCompanion(bool nullToAbsent) {
    return AssignmentsCompanion(
      id: Value(id),
      lastModifiedDate: Value(lastModifiedDate),
      createdDate: Value(createdDate),
      activity: Value(activity),
      team: Value(team),
      orgUnit: Value(orgUnit),
      parent:
          parent == null && nullToAbsent ? const Value.absent() : Value(parent),
      startDay: startDay == null && nullToAbsent
          ? const Value.absent()
          : Value(startDay),
      startDate: startDate == null && nullToAbsent
          ? const Value.absent()
          : Value(startDate),
      status:
          status == null && nullToAbsent ? const Value.absent() : Value(status),
      allocatedResources: Value(allocatedResources),
      forms: Value(forms),
      scope:
          scope == null && nullToAbsent ? const Value.absent() : Value(scope),
    );
  }

  factory Assignment.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Assignment(
      id: serializer.fromJson<String>(json['id']),
      lastModifiedDate: serializer.fromJson<DateTime>(json['lastModifiedDate']),
      createdDate: serializer.fromJson<DateTime>(json['createdDate']),
      activity: serializer.fromJson<String>(json['activity']),
      team: serializer.fromJson<String>(json['team']),
      orgUnit: serializer.fromJson<String>(json['orgUnit']),
      parent: serializer.fromJson<String?>(json['parent']),
      startDay: serializer.fromJson<int?>(json['startDay']),
      startDate: serializer.fromJson<DateTime?>(json['startDate']),
      status: $AssignmentsTable.$converterstatusn
          .fromJson(serializer.fromJson<String?>(json['status'])),
      allocatedResources:
          serializer.fromJson<Map<String, Object?>>(json['allocatedResources']),
      forms: serializer.fromJson<List<String>>(json['forms']),
      scope: $AssignmentsTable.$converterscopen
          .fromJson(serializer.fromJson<String?>(json['scope'])),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'lastModifiedDate': serializer.toJson<DateTime>(lastModifiedDate),
      'createdDate': serializer.toJson<DateTime>(createdDate),
      'activity': serializer.toJson<String>(activity),
      'team': serializer.toJson<String>(team),
      'orgUnit': serializer.toJson<String>(orgUnit),
      'parent': serializer.toJson<String?>(parent),
      'startDay': serializer.toJson<int?>(startDay),
      'startDate': serializer.toJson<DateTime?>(startDate),
      'status': serializer
          .toJson<String?>($AssignmentsTable.$converterstatusn.toJson(status)),
      'allocatedResources':
          serializer.toJson<Map<String, Object?>>(allocatedResources),
      'forms': serializer.toJson<List<String>>(forms),
      'scope': serializer
          .toJson<String?>($AssignmentsTable.$converterscopen.toJson(scope)),
    };
  }

  Assignment copyWith(
          {String? id,
          DateTime? lastModifiedDate,
          DateTime? createdDate,
          String? activity,
          String? team,
          String? orgUnit,
          Value<String?> parent = const Value.absent(),
          Value<int?> startDay = const Value.absent(),
          Value<DateTime?> startDate = const Value.absent(),
          Value<AssignmentStatus?> status = const Value.absent(),
          Map<String, Object?>? allocatedResources,
          List<String>? forms,
          Value<EntityScope?> scope = const Value.absent()}) =>
      Assignment(
        id: id ?? this.id,
        lastModifiedDate: lastModifiedDate ?? this.lastModifiedDate,
        createdDate: createdDate ?? this.createdDate,
        activity: activity ?? this.activity,
        team: team ?? this.team,
        orgUnit: orgUnit ?? this.orgUnit,
        parent: parent.present ? parent.value : this.parent,
        startDay: startDay.present ? startDay.value : this.startDay,
        startDate: startDate.present ? startDate.value : this.startDate,
        status: status.present ? status.value : this.status,
        allocatedResources: allocatedResources ?? this.allocatedResources,
        forms: forms ?? this.forms,
        scope: scope.present ? scope.value : this.scope,
      );
  Assignment copyWithCompanion(AssignmentsCompanion data) {
    return Assignment(
      id: data.id.present ? data.id.value : this.id,
      lastModifiedDate: data.lastModifiedDate.present
          ? data.lastModifiedDate.value
          : this.lastModifiedDate,
      createdDate:
          data.createdDate.present ? data.createdDate.value : this.createdDate,
      activity: data.activity.present ? data.activity.value : this.activity,
      team: data.team.present ? data.team.value : this.team,
      orgUnit: data.orgUnit.present ? data.orgUnit.value : this.orgUnit,
      parent: data.parent.present ? data.parent.value : this.parent,
      startDay: data.startDay.present ? data.startDay.value : this.startDay,
      startDate: data.startDate.present ? data.startDate.value : this.startDate,
      status: data.status.present ? data.status.value : this.status,
      allocatedResources: data.allocatedResources.present
          ? data.allocatedResources.value
          : this.allocatedResources,
      forms: data.forms.present ? data.forms.value : this.forms,
      scope: data.scope.present ? data.scope.value : this.scope,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Assignment(')
          ..write('id: $id, ')
          ..write('lastModifiedDate: $lastModifiedDate, ')
          ..write('createdDate: $createdDate, ')
          ..write('activity: $activity, ')
          ..write('team: $team, ')
          ..write('orgUnit: $orgUnit, ')
          ..write('parent: $parent, ')
          ..write('startDay: $startDay, ')
          ..write('startDate: $startDate, ')
          ..write('status: $status, ')
          ..write('allocatedResources: $allocatedResources, ')
          ..write('forms: $forms, ')
          ..write('scope: $scope')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      lastModifiedDate,
      createdDate,
      activity,
      team,
      orgUnit,
      parent,
      startDay,
      startDate,
      status,
      allocatedResources,
      forms,
      scope);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Assignment &&
          other.id == this.id &&
          other.lastModifiedDate == this.lastModifiedDate &&
          other.createdDate == this.createdDate &&
          other.activity == this.activity &&
          other.team == this.team &&
          other.orgUnit == this.orgUnit &&
          other.parent == this.parent &&
          other.startDay == this.startDay &&
          other.startDate == this.startDate &&
          other.status == this.status &&
          other.allocatedResources == this.allocatedResources &&
          other.forms == this.forms &&
          other.scope == this.scope);
}

class AssignmentsCompanion extends UpdateCompanion<Assignment> {
  final Value<String> id;
  final Value<DateTime> lastModifiedDate;
  final Value<DateTime> createdDate;
  final Value<String> activity;
  final Value<String> team;
  final Value<String> orgUnit;
  final Value<String?> parent;
  final Value<int?> startDay;
  final Value<DateTime?> startDate;
  final Value<AssignmentStatus?> status;
  final Value<Map<String, Object?>> allocatedResources;
  final Value<List<String>> forms;
  final Value<EntityScope?> scope;
  final Value<int> rowid;
  const AssignmentsCompanion({
    this.id = const Value.absent(),
    this.lastModifiedDate = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.activity = const Value.absent(),
    this.team = const Value.absent(),
    this.orgUnit = const Value.absent(),
    this.parent = const Value.absent(),
    this.startDay = const Value.absent(),
    this.startDate = const Value.absent(),
    this.status = const Value.absent(),
    this.allocatedResources = const Value.absent(),
    this.forms = const Value.absent(),
    this.scope = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  AssignmentsCompanion.insert({
    required String id,
    this.lastModifiedDate = const Value.absent(),
    this.createdDate = const Value.absent(),
    required String activity,
    required String team,
    required String orgUnit,
    this.parent = const Value.absent(),
    this.startDay = const Value.absent(),
    this.startDate = const Value.absent(),
    this.status = const Value.absent(),
    this.allocatedResources = const Value.absent(),
    this.forms = const Value.absent(),
    this.scope = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        activity = Value(activity),
        team = Value(team),
        orgUnit = Value(orgUnit);
  static Insertable<Assignment> custom({
    Expression<String>? id,
    Expression<DateTime>? lastModifiedDate,
    Expression<DateTime>? createdDate,
    Expression<String>? activity,
    Expression<String>? team,
    Expression<String>? orgUnit,
    Expression<String>? parent,
    Expression<int>? startDay,
    Expression<DateTime>? startDate,
    Expression<String>? status,
    Expression<String>? allocatedResources,
    Expression<String>? forms,
    Expression<String>? scope,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (lastModifiedDate != null) 'last_modified_date': lastModifiedDate,
      if (createdDate != null) 'created_date': createdDate,
      if (activity != null) 'activity': activity,
      if (team != null) 'team': team,
      if (orgUnit != null) 'org_unit': orgUnit,
      if (parent != null) 'parent': parent,
      if (startDay != null) 'start_day': startDay,
      if (startDate != null) 'start_date': startDate,
      if (status != null) 'status': status,
      if (allocatedResources != null) 'allocated_resources': allocatedResources,
      if (forms != null) 'forms': forms,
      if (scope != null) 'scope': scope,
      if (rowid != null) 'rowid': rowid,
    });
  }

  AssignmentsCompanion copyWith(
      {Value<String>? id,
      Value<DateTime>? lastModifiedDate,
      Value<DateTime>? createdDate,
      Value<String>? activity,
      Value<String>? team,
      Value<String>? orgUnit,
      Value<String?>? parent,
      Value<int?>? startDay,
      Value<DateTime?>? startDate,
      Value<AssignmentStatus?>? status,
      Value<Map<String, Object?>>? allocatedResources,
      Value<List<String>>? forms,
      Value<EntityScope?>? scope,
      Value<int>? rowid}) {
    return AssignmentsCompanion(
      id: id ?? this.id,
      lastModifiedDate: lastModifiedDate ?? this.lastModifiedDate,
      createdDate: createdDate ?? this.createdDate,
      activity: activity ?? this.activity,
      team: team ?? this.team,
      orgUnit: orgUnit ?? this.orgUnit,
      parent: parent ?? this.parent,
      startDay: startDay ?? this.startDay,
      startDate: startDate ?? this.startDate,
      status: status ?? this.status,
      allocatedResources: allocatedResources ?? this.allocatedResources,
      forms: forms ?? this.forms,
      scope: scope ?? this.scope,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (lastModifiedDate.present) {
      map['last_modified_date'] = Variable<DateTime>(lastModifiedDate.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (activity.present) {
      map['activity'] = Variable<String>(activity.value);
    }
    if (team.present) {
      map['team'] = Variable<String>(team.value);
    }
    if (orgUnit.present) {
      map['org_unit'] = Variable<String>(orgUnit.value);
    }
    if (parent.present) {
      map['parent'] = Variable<String>(parent.value);
    }
    if (startDay.present) {
      map['start_day'] = Variable<int>(startDay.value);
    }
    if (startDate.present) {
      map['start_date'] = Variable<DateTime>(startDate.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(
          $AssignmentsTable.$converterstatusn.toSql(status.value));
    }
    if (allocatedResources.present) {
      map['allocated_resources'] = Variable<String>($AssignmentsTable
          .$converterallocatedResources
          .toSql(allocatedResources.value));
    }
    if (forms.present) {
      map['forms'] = Variable<String>(
          $AssignmentsTable.$converterforms.toSql(forms.value));
    }
    if (scope.present) {
      map['scope'] = Variable<String>(
          $AssignmentsTable.$converterscopen.toSql(scope.value));
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AssignmentsCompanion(')
          ..write('id: $id, ')
          ..write('lastModifiedDate: $lastModifiedDate, ')
          ..write('createdDate: $createdDate, ')
          ..write('activity: $activity, ')
          ..write('team: $team, ')
          ..write('orgUnit: $orgUnit, ')
          ..write('parent: $parent, ')
          ..write('startDay: $startDay, ')
          ..write('startDate: $startDate, ')
          ..write('status: $status, ')
          ..write('allocatedResources: $allocatedResources, ')
          ..write('forms: $forms, ')
          ..write('scope: $scope, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $FormTemplatesTable extends FormTemplates
    with TableInfo<$FormTemplatesTable, FormTemplate> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FormTemplatesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lastModifiedDateMeta =
      const VerificationMeta('lastModifiedDate');
  @override
  late final GeneratedColumn<DateTime> lastModifiedDate =
      GeneratedColumn<DateTime>('last_modified_date', aliasedName, false,
          type: DriftSqlType.dateTime,
          requiredDuringInsert: false,
          defaultValue: currentDateAndTime);
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _displayNameMeta =
      const VerificationMeta('displayName');
  @override
  late final GeneratedColumn<String> displayName = GeneratedColumn<String>(
      'display_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String> code = GeneratedColumn<String>(
      'code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _translationsMeta =
      const VerificationMeta('translations');
  @override
  late final GeneratedColumnWithTypeConverter<List<Translation>?, String>
      translations = GeneratedColumn<String>('translations', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<Translation>?>(
              $FormTemplatesTable.$convertertranslationsn);
  static const VerificationMeta _labelMeta = const VerificationMeta('label');
  @override
  late final GeneratedColumnWithTypeConverter<Map<String, String>, String>
      label = GeneratedColumn<String>('label', aliasedName, false,
              type: DriftSqlType.string,
              requiredDuringInsert: false,
              defaultValue: Constant('{}'))
          .withConverter<Map<String, String>>(
              $FormTemplatesTable.$converterlabel);
  static const VerificationMeta _versionMeta =
      const VerificationMeta('version');
  @override
  late final GeneratedColumn<int> version = GeneratedColumn<int>(
      'version', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        lastModifiedDate,
        createdDate,
        name,
        displayName,
        code,
        translations,
        label,
        version
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'form_templates';
  @override
  VerificationContext validateIntegrity(Insertable<FormTemplate> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('last_modified_date')) {
      context.handle(
          _lastModifiedDateMeta,
          lastModifiedDate.isAcceptableOrUnknown(
              data['last_modified_date']!, _lastModifiedDateMeta));
    }
    if (data.containsKey('created_date')) {
      context.handle(
          _createdDateMeta,
          createdDate.isAcceptableOrUnknown(
              data['created_date']!, _createdDateMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('display_name')) {
      context.handle(
          _displayNameMeta,
          displayName.isAcceptableOrUnknown(
              data['display_name']!, _displayNameMeta));
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    }
    context.handle(_translationsMeta, const VerificationResult.success());
    context.handle(_labelMeta, const VerificationResult.success());
    if (data.containsKey('version')) {
      context.handle(_versionMeta,
          version.isAcceptableOrUnknown(data['version']!, _versionMeta));
    } else if (isInserting) {
      context.missing(_versionMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FormTemplate map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FormTemplate(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      lastModifiedDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}last_modified_date'])!,
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      displayName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}display_name']),
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code']),
      translations: $FormTemplatesTable.$convertertranslationsn.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}translations'])),
      label: $FormTemplatesTable.$converterlabel.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}label'])!),
      version: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}version'])!,
    );
  }

  @override
  $FormTemplatesTable createAlias(String alias) {
    return $FormTemplatesTable(attachedDatabase, alias);
  }

  static TypeConverter<List<Translation>, String> $convertertranslations =
      const TranslationConverter();
  static TypeConverter<List<Translation>?, String?> $convertertranslationsn =
      NullAwareTypeConverter.wrap($convertertranslations);
  static TypeConverter<Map<String, String>, String> $converterlabel =
      const MapConverter<String>();
}

class FormTemplate extends DataClass implements Insertable<FormTemplate> {
  final String id;
  final DateTime lastModifiedDate;
  final DateTime createdDate;
  final String? name;
  final String? displayName;
  final String? code;

  /// List of Translations
  final List<Translation>? translations;
  final Map<String, String> label;

  /// Version is an integer.
  final int version;
  const FormTemplate(
      {required this.id,
      required this.lastModifiedDate,
      required this.createdDate,
      this.name,
      this.displayName,
      this.code,
      this.translations,
      required this.label,
      required this.version});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['last_modified_date'] = Variable<DateTime>(lastModifiedDate);
    map['created_date'] = Variable<DateTime>(createdDate);
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || displayName != null) {
      map['display_name'] = Variable<String>(displayName);
    }
    if (!nullToAbsent || code != null) {
      map['code'] = Variable<String>(code);
    }
    if (!nullToAbsent || translations != null) {
      map['translations'] = Variable<String>(
          $FormTemplatesTable.$convertertranslationsn.toSql(translations));
    }
    {
      map['label'] =
          Variable<String>($FormTemplatesTable.$converterlabel.toSql(label));
    }
    map['version'] = Variable<int>(version);
    return map;
  }

  FormTemplatesCompanion toCompanion(bool nullToAbsent) {
    return FormTemplatesCompanion(
      id: Value(id),
      lastModifiedDate: Value(lastModifiedDate),
      createdDate: Value(createdDate),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      displayName: displayName == null && nullToAbsent
          ? const Value.absent()
          : Value(displayName),
      code: code == null && nullToAbsent ? const Value.absent() : Value(code),
      translations: translations == null && nullToAbsent
          ? const Value.absent()
          : Value(translations),
      label: Value(label),
      version: Value(version),
    );
  }

  factory FormTemplate.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FormTemplate(
      id: serializer.fromJson<String>(json['id']),
      lastModifiedDate: serializer.fromJson<DateTime>(json['lastModifiedDate']),
      createdDate: serializer.fromJson<DateTime>(json['createdDate']),
      name: serializer.fromJson<String?>(json['name']),
      displayName: serializer.fromJson<String?>(json['displayName']),
      code: serializer.fromJson<String?>(json['code']),
      translations:
          serializer.fromJson<List<Translation>?>(json['translations']),
      label: serializer.fromJson<Map<String, String>>(json['label']),
      version: serializer.fromJson<int>(json['version']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'lastModifiedDate': serializer.toJson<DateTime>(lastModifiedDate),
      'createdDate': serializer.toJson<DateTime>(createdDate),
      'name': serializer.toJson<String?>(name),
      'displayName': serializer.toJson<String?>(displayName),
      'code': serializer.toJson<String?>(code),
      'translations': serializer.toJson<List<Translation>?>(translations),
      'label': serializer.toJson<Map<String, String>>(label),
      'version': serializer.toJson<int>(version),
    };
  }

  FormTemplate copyWith(
          {String? id,
          DateTime? lastModifiedDate,
          DateTime? createdDate,
          Value<String?> name = const Value.absent(),
          Value<String?> displayName = const Value.absent(),
          Value<String?> code = const Value.absent(),
          Value<List<Translation>?> translations = const Value.absent(),
          Map<String, String>? label,
          int? version}) =>
      FormTemplate(
        id: id ?? this.id,
        lastModifiedDate: lastModifiedDate ?? this.lastModifiedDate,
        createdDate: createdDate ?? this.createdDate,
        name: name.present ? name.value : this.name,
        displayName: displayName.present ? displayName.value : this.displayName,
        code: code.present ? code.value : this.code,
        translations:
            translations.present ? translations.value : this.translations,
        label: label ?? this.label,
        version: version ?? this.version,
      );
  FormTemplate copyWithCompanion(FormTemplatesCompanion data) {
    return FormTemplate(
      id: data.id.present ? data.id.value : this.id,
      lastModifiedDate: data.lastModifiedDate.present
          ? data.lastModifiedDate.value
          : this.lastModifiedDate,
      createdDate:
          data.createdDate.present ? data.createdDate.value : this.createdDate,
      name: data.name.present ? data.name.value : this.name,
      displayName:
          data.displayName.present ? data.displayName.value : this.displayName,
      code: data.code.present ? data.code.value : this.code,
      translations: data.translations.present
          ? data.translations.value
          : this.translations,
      label: data.label.present ? data.label.value : this.label,
      version: data.version.present ? data.version.value : this.version,
    );
  }

  @override
  String toString() {
    return (StringBuffer('FormTemplate(')
          ..write('id: $id, ')
          ..write('lastModifiedDate: $lastModifiedDate, ')
          ..write('createdDate: $createdDate, ')
          ..write('name: $name, ')
          ..write('displayName: $displayName, ')
          ..write('code: $code, ')
          ..write('translations: $translations, ')
          ..write('label: $label, ')
          ..write('version: $version')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, lastModifiedDate, createdDate, name,
      displayName, code, translations, label, version);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FormTemplate &&
          other.id == this.id &&
          other.lastModifiedDate == this.lastModifiedDate &&
          other.createdDate == this.createdDate &&
          other.name == this.name &&
          other.displayName == this.displayName &&
          other.code == this.code &&
          other.translations == this.translations &&
          other.label == this.label &&
          other.version == this.version);
}

class FormTemplatesCompanion extends UpdateCompanion<FormTemplate> {
  final Value<String> id;
  final Value<DateTime> lastModifiedDate;
  final Value<DateTime> createdDate;
  final Value<String?> name;
  final Value<String?> displayName;
  final Value<String?> code;
  final Value<List<Translation>?> translations;
  final Value<Map<String, String>> label;
  final Value<int> version;
  final Value<int> rowid;
  const FormTemplatesCompanion({
    this.id = const Value.absent(),
    this.lastModifiedDate = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.name = const Value.absent(),
    this.displayName = const Value.absent(),
    this.code = const Value.absent(),
    this.translations = const Value.absent(),
    this.label = const Value.absent(),
    this.version = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FormTemplatesCompanion.insert({
    required String id,
    this.lastModifiedDate = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.name = const Value.absent(),
    this.displayName = const Value.absent(),
    this.code = const Value.absent(),
    this.translations = const Value.absent(),
    this.label = const Value.absent(),
    required int version,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        version = Value(version);
  static Insertable<FormTemplate> custom({
    Expression<String>? id,
    Expression<DateTime>? lastModifiedDate,
    Expression<DateTime>? createdDate,
    Expression<String>? name,
    Expression<String>? displayName,
    Expression<String>? code,
    Expression<String>? translations,
    Expression<String>? label,
    Expression<int>? version,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (lastModifiedDate != null) 'last_modified_date': lastModifiedDate,
      if (createdDate != null) 'created_date': createdDate,
      if (name != null) 'name': name,
      if (displayName != null) 'display_name': displayName,
      if (code != null) 'code': code,
      if (translations != null) 'translations': translations,
      if (label != null) 'label': label,
      if (version != null) 'version': version,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FormTemplatesCompanion copyWith(
      {Value<String>? id,
      Value<DateTime>? lastModifiedDate,
      Value<DateTime>? createdDate,
      Value<String?>? name,
      Value<String?>? displayName,
      Value<String?>? code,
      Value<List<Translation>?>? translations,
      Value<Map<String, String>>? label,
      Value<int>? version,
      Value<int>? rowid}) {
    return FormTemplatesCompanion(
      id: id ?? this.id,
      lastModifiedDate: lastModifiedDate ?? this.lastModifiedDate,
      createdDate: createdDate ?? this.createdDate,
      name: name ?? this.name,
      displayName: displayName ?? this.displayName,
      code: code ?? this.code,
      translations: translations ?? this.translations,
      label: label ?? this.label,
      version: version ?? this.version,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (lastModifiedDate.present) {
      map['last_modified_date'] = Variable<DateTime>(lastModifiedDate.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (displayName.present) {
      map['display_name'] = Variable<String>(displayName.value);
    }
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (translations.present) {
      map['translations'] = Variable<String>($FormTemplatesTable
          .$convertertranslationsn
          .toSql(translations.value));
    }
    if (label.present) {
      map['label'] = Variable<String>(
          $FormTemplatesTable.$converterlabel.toSql(label.value));
    }
    if (version.present) {
      map['version'] = Variable<int>(version.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FormTemplatesCompanion(')
          ..write('id: $id, ')
          ..write('lastModifiedDate: $lastModifiedDate, ')
          ..write('createdDate: $createdDate, ')
          ..write('name: $name, ')
          ..write('displayName: $displayName, ')
          ..write('code: $code, ')
          ..write('translations: $translations, ')
          ..write('label: $label, ')
          ..write('version: $version, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $FormVersionsTable extends FormVersions
    with TableInfo<$FormVersionsTable, FormVersion> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FormVersionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lastModifiedDateMeta =
      const VerificationMeta('lastModifiedDate');
  @override
  late final GeneratedColumn<DateTime> lastModifiedDate =
      GeneratedColumn<DateTime>('last_modified_date', aliasedName, false,
          type: DriftSqlType.dateTime,
          requiredDuringInsert: false,
          defaultValue: currentDateAndTime);
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _displayNameMeta =
      const VerificationMeta('displayName');
  @override
  late final GeneratedColumn<String> displayName = GeneratedColumn<String>(
      'display_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String> code = GeneratedColumn<String>(
      'code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _translationsMeta =
      const VerificationMeta('translations');
  @override
  late final GeneratedColumnWithTypeConverter<List<Translation>?, String>
      translations = GeneratedColumn<String>('translations', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<Translation>?>(
              $FormVersionsTable.$convertertranslationsn);
  static const VerificationMeta _formMeta = const VerificationMeta('form');
  @override
  late final GeneratedColumn<String> form = GeneratedColumn<String>(
      'form', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES form_templates (id)'));
  static const VerificationMeta _versionMeta =
      const VerificationMeta('version');
  @override
  late final GeneratedColumn<int> version = GeneratedColumn<int>(
      'version', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _treeFieldsMeta =
      const VerificationMeta('treeFields');
  @override
  late final GeneratedColumnWithTypeConverter<List<Template>?, String>
      treeFields = GeneratedColumn<String>('tree_fields', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<Template>?>(
              $FormVersionsTable.$convertertreeFieldsn);
  static const VerificationMeta _optionsMeta =
      const VerificationMeta('options');
  @override
  late final GeneratedColumnWithTypeConverter<List<FormOption>, String>
      options = GeneratedColumn<String>('options', aliasedName, false,
              type: DriftSqlType.string,
              requiredDuringInsert: false,
              defaultValue: Constant('[]'))
          .withConverter<List<FormOption>>(
              $FormVersionsTable.$converteroptions);
  static const VerificationMeta _optionSetsMeta =
      const VerificationMeta('optionSets');
  @override
  late final GeneratedColumnWithTypeConverter<List<DOptionSet>?, String>
      optionSets = GeneratedColumn<String>('option_sets', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<DOptionSet>?>(
              $FormVersionsTable.$converteroptionSetsn);
  static const VerificationMeta _labelMeta = const VerificationMeta('label');
  @override
  late final GeneratedColumnWithTypeConverter<Map<String, String>, String>
      label = GeneratedColumn<String>('label', aliasedName, false,
              type: DriftSqlType.string,
              requiredDuringInsert: false,
              defaultValue: Constant('{}'))
          .withConverter<Map<String, String>>(
              $FormVersionsTable.$converterlabel);
  static const VerificationMeta _defaultLocalMeta =
      const VerificationMeta('defaultLocal');
  @override
  late final GeneratedColumn<String> defaultLocal = GeneratedColumn<String>(
      'default_local', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _fieldsConfMeta =
      const VerificationMeta('fieldsConf');
  @override
  late final GeneratedColumnWithTypeConverter<List<Template>?, String>
      fieldsConf = GeneratedColumn<String>('fields_conf', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<Template>?>(
              $FormVersionsTable.$converterfieldsConfn);
  static const VerificationMeta _sectionsMeta =
      const VerificationMeta('sections');
  @override
  late final GeneratedColumnWithTypeConverter<List<Template>?, String>
      sections = GeneratedColumn<String>('sections', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<Template>?>(
              $FormVersionsTable.$convertersectionsn);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _validationStrategyMeta =
      const VerificationMeta('validationStrategy');
  @override
  late final GeneratedColumnWithTypeConverter<ValidationStrategy, String>
      validationStrategy = GeneratedColumn<String>(
              'validation_strategy', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<ValidationStrategy>(
              $FormVersionsTable.$convertervalidationStrategy);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        lastModifiedDate,
        createdDate,
        name,
        displayName,
        code,
        translations,
        form,
        version,
        treeFields,
        options,
        optionSets,
        label,
        defaultLocal,
        fieldsConf,
        sections,
        description,
        validationStrategy
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'form_versions';
  @override
  VerificationContext validateIntegrity(Insertable<FormVersion> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('last_modified_date')) {
      context.handle(
          _lastModifiedDateMeta,
          lastModifiedDate.isAcceptableOrUnknown(
              data['last_modified_date']!, _lastModifiedDateMeta));
    }
    if (data.containsKey('created_date')) {
      context.handle(
          _createdDateMeta,
          createdDate.isAcceptableOrUnknown(
              data['created_date']!, _createdDateMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('display_name')) {
      context.handle(
          _displayNameMeta,
          displayName.isAcceptableOrUnknown(
              data['display_name']!, _displayNameMeta));
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    }
    context.handle(_translationsMeta, const VerificationResult.success());
    if (data.containsKey('form')) {
      context.handle(
          _formMeta, form.isAcceptableOrUnknown(data['form']!, _formMeta));
    } else if (isInserting) {
      context.missing(_formMeta);
    }
    if (data.containsKey('version')) {
      context.handle(_versionMeta,
          version.isAcceptableOrUnknown(data['version']!, _versionMeta));
    } else if (isInserting) {
      context.missing(_versionMeta);
    }
    context.handle(_treeFieldsMeta, const VerificationResult.success());
    context.handle(_optionsMeta, const VerificationResult.success());
    context.handle(_optionSetsMeta, const VerificationResult.success());
    context.handle(_labelMeta, const VerificationResult.success());
    if (data.containsKey('default_local')) {
      context.handle(
          _defaultLocalMeta,
          defaultLocal.isAcceptableOrUnknown(
              data['default_local']!, _defaultLocalMeta));
    } else if (isInserting) {
      context.missing(_defaultLocalMeta);
    }
    context.handle(_fieldsConfMeta, const VerificationResult.success());
    context.handle(_sectionsMeta, const VerificationResult.success());
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    context.handle(_validationStrategyMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FormVersion map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FormVersion(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      lastModifiedDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}last_modified_date'])!,
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      displayName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}display_name']),
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code']),
      translations: $FormVersionsTable.$convertertranslationsn.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}translations'])),
      form: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}form'])!,
      version: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}version'])!,
      treeFields: $FormVersionsTable.$convertertreeFieldsn.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}tree_fields'])),
      options: $FormVersionsTable.$converteroptions.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}options'])!),
      optionSets: $FormVersionsTable.$converteroptionSetsn.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}option_sets'])),
      label: $FormVersionsTable.$converterlabel.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}label'])!),
      defaultLocal: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}default_local'])!,
      fieldsConf: $FormVersionsTable.$converterfieldsConfn.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}fields_conf'])),
      sections: $FormVersionsTable.$convertersectionsn.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}sections'])),
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
      validationStrategy: $FormVersionsTable.$convertervalidationStrategy
          .fromSql(attachedDatabase.typeMapping.read(DriftSqlType.string,
              data['${effectivePrefix}validation_strategy'])!),
    );
  }

  @override
  $FormVersionsTable createAlias(String alias) {
    return $FormVersionsTable(attachedDatabase, alias);
  }

  static TypeConverter<List<Translation>, String> $convertertranslations =
      const TranslationConverter();
  static TypeConverter<List<Translation>?, String?> $convertertranslationsn =
      NullAwareTypeConverter.wrap($convertertranslations);
  static TypeConverter<List<Template>, String> $convertertreeFields =
      const TemplateListConverter();
  static TypeConverter<List<Template>?, String?> $convertertreeFieldsn =
      NullAwareTypeConverter.wrap($convertertreeFields);
  static TypeConverter<List<FormOption>, String> $converteroptions =
      const FormOptionListConverter();
  static TypeConverter<List<DOptionSet>, String> $converteroptionSets =
      const DOptionSetListConverter();
  static TypeConverter<List<DOptionSet>?, String?> $converteroptionSetsn =
      NullAwareTypeConverter.wrap($converteroptionSets);
  static TypeConverter<Map<String, String>, String> $converterlabel =
      const MapConverter<String>();
  static TypeConverter<List<Template>, String> $converterfieldsConf =
      const TemplateListConverter();
  static TypeConverter<List<Template>?, String?> $converterfieldsConfn =
      NullAwareTypeConverter.wrap($converterfieldsConf);
  static TypeConverter<List<Template>, String> $convertersections =
      const TemplateListConverter();
  static TypeConverter<List<Template>?, String?> $convertersectionsn =
      NullAwareTypeConverter.wrap($convertersections);
  static JsonTypeConverter2<ValidationStrategy, String, String>
      $convertervalidationStrategy =
      const EnumNameConverter(ValidationStrategy.values);
}

class FormVersion extends DataClass implements Insertable<FormVersion> {
  final String id;
  final DateTime lastModifiedDate;
  final DateTime createdDate;
  final String? name;
  final String? displayName;
  final String? code;

  /// List of Translations
  final List<Translation>? translations;
  final String form;

  /// Version is an integer.
  final int version;

  /// List of Template objects (as List<Template>), stored as JSON.
  final List<Template>? treeFields;

  /// List of FormOption objects, stored as JSON.
  final List<FormOption> options;

  /// List of DOptionSet objects, stored as JSON.
  final List<DOptionSet>? optionSets;

  /// Label map is non-null.
  final Map<String, String> label;

  /// Default locale.
  final String defaultLocal;

  /// fieldsConf stored as IList<Template>, as JSON.
  final List<Template>? fieldsConf;

  /// sections stored as IList<Template>, as JSON.
  final List<Template>? sections;

  /// Description is nullable.
  final String? description;

  /// Validation strategy stored as text via a converter.
  final ValidationStrategy validationStrategy;
  const FormVersion(
      {required this.id,
      required this.lastModifiedDate,
      required this.createdDate,
      this.name,
      this.displayName,
      this.code,
      this.translations,
      required this.form,
      required this.version,
      this.treeFields,
      required this.options,
      this.optionSets,
      required this.label,
      required this.defaultLocal,
      this.fieldsConf,
      this.sections,
      this.description,
      required this.validationStrategy});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['last_modified_date'] = Variable<DateTime>(lastModifiedDate);
    map['created_date'] = Variable<DateTime>(createdDate);
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || displayName != null) {
      map['display_name'] = Variable<String>(displayName);
    }
    if (!nullToAbsent || code != null) {
      map['code'] = Variable<String>(code);
    }
    if (!nullToAbsent || translations != null) {
      map['translations'] = Variable<String>(
          $FormVersionsTable.$convertertranslationsn.toSql(translations));
    }
    map['form'] = Variable<String>(form);
    map['version'] = Variable<int>(version);
    if (!nullToAbsent || treeFields != null) {
      map['tree_fields'] = Variable<String>(
          $FormVersionsTable.$convertertreeFieldsn.toSql(treeFields));
    }
    {
      map['options'] =
          Variable<String>($FormVersionsTable.$converteroptions.toSql(options));
    }
    if (!nullToAbsent || optionSets != null) {
      map['option_sets'] = Variable<String>(
          $FormVersionsTable.$converteroptionSetsn.toSql(optionSets));
    }
    {
      map['label'] =
          Variable<String>($FormVersionsTable.$converterlabel.toSql(label));
    }
    map['default_local'] = Variable<String>(defaultLocal);
    if (!nullToAbsent || fieldsConf != null) {
      map['fields_conf'] = Variable<String>(
          $FormVersionsTable.$converterfieldsConfn.toSql(fieldsConf));
    }
    if (!nullToAbsent || sections != null) {
      map['sections'] = Variable<String>(
          $FormVersionsTable.$convertersectionsn.toSql(sections));
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    {
      map['validation_strategy'] = Variable<String>($FormVersionsTable
          .$convertervalidationStrategy
          .toSql(validationStrategy));
    }
    return map;
  }

  FormVersionsCompanion toCompanion(bool nullToAbsent) {
    return FormVersionsCompanion(
      id: Value(id),
      lastModifiedDate: Value(lastModifiedDate),
      createdDate: Value(createdDate),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      displayName: displayName == null && nullToAbsent
          ? const Value.absent()
          : Value(displayName),
      code: code == null && nullToAbsent ? const Value.absent() : Value(code),
      translations: translations == null && nullToAbsent
          ? const Value.absent()
          : Value(translations),
      form: Value(form),
      version: Value(version),
      treeFields: treeFields == null && nullToAbsent
          ? const Value.absent()
          : Value(treeFields),
      options: Value(options),
      optionSets: optionSets == null && nullToAbsent
          ? const Value.absent()
          : Value(optionSets),
      label: Value(label),
      defaultLocal: Value(defaultLocal),
      fieldsConf: fieldsConf == null && nullToAbsent
          ? const Value.absent()
          : Value(fieldsConf),
      sections: sections == null && nullToAbsent
          ? const Value.absent()
          : Value(sections),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      validationStrategy: Value(validationStrategy),
    );
  }

  factory FormVersion.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FormVersion(
      id: serializer.fromJson<String>(json['id']),
      lastModifiedDate: serializer.fromJson<DateTime>(json['lastModifiedDate']),
      createdDate: serializer.fromJson<DateTime>(json['createdDate']),
      name: serializer.fromJson<String?>(json['name']),
      displayName: serializer.fromJson<String?>(json['displayName']),
      code: serializer.fromJson<String?>(json['code']),
      translations:
          serializer.fromJson<List<Translation>?>(json['translations']),
      form: serializer.fromJson<String>(json['form']),
      version: serializer.fromJson<int>(json['version']),
      treeFields: serializer.fromJson<List<Template>?>(json['treeFields']),
      options: serializer.fromJson<List<FormOption>>(json['options']),
      optionSets: serializer.fromJson<List<DOptionSet>?>(json['optionSets']),
      label: serializer.fromJson<Map<String, String>>(json['label']),
      defaultLocal: serializer.fromJson<String>(json['defaultLocal']),
      fieldsConf: serializer.fromJson<List<Template>?>(json['fieldsConf']),
      sections: serializer.fromJson<List<Template>?>(json['sections']),
      description: serializer.fromJson<String?>(json['description']),
      validationStrategy: $FormVersionsTable.$convertervalidationStrategy
          .fromJson(serializer.fromJson<String>(json['validationStrategy'])),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'lastModifiedDate': serializer.toJson<DateTime>(lastModifiedDate),
      'createdDate': serializer.toJson<DateTime>(createdDate),
      'name': serializer.toJson<String?>(name),
      'displayName': serializer.toJson<String?>(displayName),
      'code': serializer.toJson<String?>(code),
      'translations': serializer.toJson<List<Translation>?>(translations),
      'form': serializer.toJson<String>(form),
      'version': serializer.toJson<int>(version),
      'treeFields': serializer.toJson<List<Template>?>(treeFields),
      'options': serializer.toJson<List<FormOption>>(options),
      'optionSets': serializer.toJson<List<DOptionSet>?>(optionSets),
      'label': serializer.toJson<Map<String, String>>(label),
      'defaultLocal': serializer.toJson<String>(defaultLocal),
      'fieldsConf': serializer.toJson<List<Template>?>(fieldsConf),
      'sections': serializer.toJson<List<Template>?>(sections),
      'description': serializer.toJson<String?>(description),
      'validationStrategy': serializer.toJson<String>($FormVersionsTable
          .$convertervalidationStrategy
          .toJson(validationStrategy)),
    };
  }

  FormVersion copyWith(
          {String? id,
          DateTime? lastModifiedDate,
          DateTime? createdDate,
          Value<String?> name = const Value.absent(),
          Value<String?> displayName = const Value.absent(),
          Value<String?> code = const Value.absent(),
          Value<List<Translation>?> translations = const Value.absent(),
          String? form,
          int? version,
          Value<List<Template>?> treeFields = const Value.absent(),
          List<FormOption>? options,
          Value<List<DOptionSet>?> optionSets = const Value.absent(),
          Map<String, String>? label,
          String? defaultLocal,
          Value<List<Template>?> fieldsConf = const Value.absent(),
          Value<List<Template>?> sections = const Value.absent(),
          Value<String?> description = const Value.absent(),
          ValidationStrategy? validationStrategy}) =>
      FormVersion(
        id: id ?? this.id,
        lastModifiedDate: lastModifiedDate ?? this.lastModifiedDate,
        createdDate: createdDate ?? this.createdDate,
        name: name.present ? name.value : this.name,
        displayName: displayName.present ? displayName.value : this.displayName,
        code: code.present ? code.value : this.code,
        translations:
            translations.present ? translations.value : this.translations,
        form: form ?? this.form,
        version: version ?? this.version,
        treeFields: treeFields.present ? treeFields.value : this.treeFields,
        options: options ?? this.options,
        optionSets: optionSets.present ? optionSets.value : this.optionSets,
        label: label ?? this.label,
        defaultLocal: defaultLocal ?? this.defaultLocal,
        fieldsConf: fieldsConf.present ? fieldsConf.value : this.fieldsConf,
        sections: sections.present ? sections.value : this.sections,
        description: description.present ? description.value : this.description,
        validationStrategy: validationStrategy ?? this.validationStrategy,
      );
  FormVersion copyWithCompanion(FormVersionsCompanion data) {
    return FormVersion(
      id: data.id.present ? data.id.value : this.id,
      lastModifiedDate: data.lastModifiedDate.present
          ? data.lastModifiedDate.value
          : this.lastModifiedDate,
      createdDate:
          data.createdDate.present ? data.createdDate.value : this.createdDate,
      name: data.name.present ? data.name.value : this.name,
      displayName:
          data.displayName.present ? data.displayName.value : this.displayName,
      code: data.code.present ? data.code.value : this.code,
      translations: data.translations.present
          ? data.translations.value
          : this.translations,
      form: data.form.present ? data.form.value : this.form,
      version: data.version.present ? data.version.value : this.version,
      treeFields:
          data.treeFields.present ? data.treeFields.value : this.treeFields,
      options: data.options.present ? data.options.value : this.options,
      optionSets:
          data.optionSets.present ? data.optionSets.value : this.optionSets,
      label: data.label.present ? data.label.value : this.label,
      defaultLocal: data.defaultLocal.present
          ? data.defaultLocal.value
          : this.defaultLocal,
      fieldsConf:
          data.fieldsConf.present ? data.fieldsConf.value : this.fieldsConf,
      sections: data.sections.present ? data.sections.value : this.sections,
      description:
          data.description.present ? data.description.value : this.description,
      validationStrategy: data.validationStrategy.present
          ? data.validationStrategy.value
          : this.validationStrategy,
    );
  }

  @override
  String toString() {
    return (StringBuffer('FormVersion(')
          ..write('id: $id, ')
          ..write('lastModifiedDate: $lastModifiedDate, ')
          ..write('createdDate: $createdDate, ')
          ..write('name: $name, ')
          ..write('displayName: $displayName, ')
          ..write('code: $code, ')
          ..write('translations: $translations, ')
          ..write('form: $form, ')
          ..write('version: $version, ')
          ..write('treeFields: $treeFields, ')
          ..write('options: $options, ')
          ..write('optionSets: $optionSets, ')
          ..write('label: $label, ')
          ..write('defaultLocal: $defaultLocal, ')
          ..write('fieldsConf: $fieldsConf, ')
          ..write('sections: $sections, ')
          ..write('description: $description, ')
          ..write('validationStrategy: $validationStrategy')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      lastModifiedDate,
      createdDate,
      name,
      displayName,
      code,
      translations,
      form,
      version,
      treeFields,
      options,
      optionSets,
      label,
      defaultLocal,
      fieldsConf,
      sections,
      description,
      validationStrategy);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FormVersion &&
          other.id == this.id &&
          other.lastModifiedDate == this.lastModifiedDate &&
          other.createdDate == this.createdDate &&
          other.name == this.name &&
          other.displayName == this.displayName &&
          other.code == this.code &&
          other.translations == this.translations &&
          other.form == this.form &&
          other.version == this.version &&
          other.treeFields == this.treeFields &&
          other.options == this.options &&
          other.optionSets == this.optionSets &&
          other.label == this.label &&
          other.defaultLocal == this.defaultLocal &&
          other.fieldsConf == this.fieldsConf &&
          other.sections == this.sections &&
          other.description == this.description &&
          other.validationStrategy == this.validationStrategy);
}

class FormVersionsCompanion extends UpdateCompanion<FormVersion> {
  final Value<String> id;
  final Value<DateTime> lastModifiedDate;
  final Value<DateTime> createdDate;
  final Value<String?> name;
  final Value<String?> displayName;
  final Value<String?> code;
  final Value<List<Translation>?> translations;
  final Value<String> form;
  final Value<int> version;
  final Value<List<Template>?> treeFields;
  final Value<List<FormOption>> options;
  final Value<List<DOptionSet>?> optionSets;
  final Value<Map<String, String>> label;
  final Value<String> defaultLocal;
  final Value<List<Template>?> fieldsConf;
  final Value<List<Template>?> sections;
  final Value<String?> description;
  final Value<ValidationStrategy> validationStrategy;
  final Value<int> rowid;
  const FormVersionsCompanion({
    this.id = const Value.absent(),
    this.lastModifiedDate = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.name = const Value.absent(),
    this.displayName = const Value.absent(),
    this.code = const Value.absent(),
    this.translations = const Value.absent(),
    this.form = const Value.absent(),
    this.version = const Value.absent(),
    this.treeFields = const Value.absent(),
    this.options = const Value.absent(),
    this.optionSets = const Value.absent(),
    this.label = const Value.absent(),
    this.defaultLocal = const Value.absent(),
    this.fieldsConf = const Value.absent(),
    this.sections = const Value.absent(),
    this.description = const Value.absent(),
    this.validationStrategy = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FormVersionsCompanion.insert({
    required String id,
    this.lastModifiedDate = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.name = const Value.absent(),
    this.displayName = const Value.absent(),
    this.code = const Value.absent(),
    this.translations = const Value.absent(),
    required String form,
    required int version,
    this.treeFields = const Value.absent(),
    this.options = const Value.absent(),
    this.optionSets = const Value.absent(),
    this.label = const Value.absent(),
    required String defaultLocal,
    this.fieldsConf = const Value.absent(),
    this.sections = const Value.absent(),
    this.description = const Value.absent(),
    required ValidationStrategy validationStrategy,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        form = Value(form),
        version = Value(version),
        defaultLocal = Value(defaultLocal),
        validationStrategy = Value(validationStrategy);
  static Insertable<FormVersion> custom({
    Expression<String>? id,
    Expression<DateTime>? lastModifiedDate,
    Expression<DateTime>? createdDate,
    Expression<String>? name,
    Expression<String>? displayName,
    Expression<String>? code,
    Expression<String>? translations,
    Expression<String>? form,
    Expression<int>? version,
    Expression<String>? treeFields,
    Expression<String>? options,
    Expression<String>? optionSets,
    Expression<String>? label,
    Expression<String>? defaultLocal,
    Expression<String>? fieldsConf,
    Expression<String>? sections,
    Expression<String>? description,
    Expression<String>? validationStrategy,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (lastModifiedDate != null) 'last_modified_date': lastModifiedDate,
      if (createdDate != null) 'created_date': createdDate,
      if (name != null) 'name': name,
      if (displayName != null) 'display_name': displayName,
      if (code != null) 'code': code,
      if (translations != null) 'translations': translations,
      if (form != null) 'form': form,
      if (version != null) 'version': version,
      if (treeFields != null) 'tree_fields': treeFields,
      if (options != null) 'options': options,
      if (optionSets != null) 'option_sets': optionSets,
      if (label != null) 'label': label,
      if (defaultLocal != null) 'default_local': defaultLocal,
      if (fieldsConf != null) 'fields_conf': fieldsConf,
      if (sections != null) 'sections': sections,
      if (description != null) 'description': description,
      if (validationStrategy != null) 'validation_strategy': validationStrategy,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FormVersionsCompanion copyWith(
      {Value<String>? id,
      Value<DateTime>? lastModifiedDate,
      Value<DateTime>? createdDate,
      Value<String?>? name,
      Value<String?>? displayName,
      Value<String?>? code,
      Value<List<Translation>?>? translations,
      Value<String>? form,
      Value<int>? version,
      Value<List<Template>?>? treeFields,
      Value<List<FormOption>>? options,
      Value<List<DOptionSet>?>? optionSets,
      Value<Map<String, String>>? label,
      Value<String>? defaultLocal,
      Value<List<Template>?>? fieldsConf,
      Value<List<Template>?>? sections,
      Value<String?>? description,
      Value<ValidationStrategy>? validationStrategy,
      Value<int>? rowid}) {
    return FormVersionsCompanion(
      id: id ?? this.id,
      lastModifiedDate: lastModifiedDate ?? this.lastModifiedDate,
      createdDate: createdDate ?? this.createdDate,
      name: name ?? this.name,
      displayName: displayName ?? this.displayName,
      code: code ?? this.code,
      translations: translations ?? this.translations,
      form: form ?? this.form,
      version: version ?? this.version,
      treeFields: treeFields ?? this.treeFields,
      options: options ?? this.options,
      optionSets: optionSets ?? this.optionSets,
      label: label ?? this.label,
      defaultLocal: defaultLocal ?? this.defaultLocal,
      fieldsConf: fieldsConf ?? this.fieldsConf,
      sections: sections ?? this.sections,
      description: description ?? this.description,
      validationStrategy: validationStrategy ?? this.validationStrategy,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (lastModifiedDate.present) {
      map['last_modified_date'] = Variable<DateTime>(lastModifiedDate.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (displayName.present) {
      map['display_name'] = Variable<String>(displayName.value);
    }
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (translations.present) {
      map['translations'] = Variable<String>(
          $FormVersionsTable.$convertertranslationsn.toSql(translations.value));
    }
    if (form.present) {
      map['form'] = Variable<String>(form.value);
    }
    if (version.present) {
      map['version'] = Variable<int>(version.value);
    }
    if (treeFields.present) {
      map['tree_fields'] = Variable<String>(
          $FormVersionsTable.$convertertreeFieldsn.toSql(treeFields.value));
    }
    if (options.present) {
      map['options'] = Variable<String>(
          $FormVersionsTable.$converteroptions.toSql(options.value));
    }
    if (optionSets.present) {
      map['option_sets'] = Variable<String>(
          $FormVersionsTable.$converteroptionSetsn.toSql(optionSets.value));
    }
    if (label.present) {
      map['label'] = Variable<String>(
          $FormVersionsTable.$converterlabel.toSql(label.value));
    }
    if (defaultLocal.present) {
      map['default_local'] = Variable<String>(defaultLocal.value);
    }
    if (fieldsConf.present) {
      map['fields_conf'] = Variable<String>(
          $FormVersionsTable.$converterfieldsConfn.toSql(fieldsConf.value));
    }
    if (sections.present) {
      map['sections'] = Variable<String>(
          $FormVersionsTable.$convertersectionsn.toSql(sections.value));
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (validationStrategy.present) {
      map['validation_strategy'] = Variable<String>($FormVersionsTable
          .$convertervalidationStrategy
          .toSql(validationStrategy.value));
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FormVersionsCompanion(')
          ..write('id: $id, ')
          ..write('lastModifiedDate: $lastModifiedDate, ')
          ..write('createdDate: $createdDate, ')
          ..write('name: $name, ')
          ..write('displayName: $displayName, ')
          ..write('code: $code, ')
          ..write('translations: $translations, ')
          ..write('form: $form, ')
          ..write('version: $version, ')
          ..write('treeFields: $treeFields, ')
          ..write('options: $options, ')
          ..write('optionSets: $optionSets, ')
          ..write('label: $label, ')
          ..write('defaultLocal: $defaultLocal, ')
          ..write('fieldsConf: $fieldsConf, ')
          ..write('sections: $sections, ')
          ..write('description: $description, ')
          ..write('validationStrategy: $validationStrategy, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $MetadataSubmissionsTable extends MetadataSubmissions
    with TableInfo<$MetadataSubmissionsTable, MetadataSubmission> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MetadataSubmissionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lastModifiedDateMeta =
      const VerificationMeta('lastModifiedDate');
  @override
  late final GeneratedColumn<DateTime> lastModifiedDate =
      GeneratedColumn<DateTime>('last_modified_date', aliasedName, false,
          type: DriftSqlType.dateTime,
          requiredDuringInsert: false,
          defaultValue: currentDateAndTime);
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _displayNameMeta =
      const VerificationMeta('displayName');
  @override
  late final GeneratedColumn<String> displayName = GeneratedColumn<String>(
      'display_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String> code = GeneratedColumn<String>(
      'code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _translationsMeta =
      const VerificationMeta('translations');
  @override
  late final GeneratedColumnWithTypeConverter<List<Translation>?, String>
      translations = GeneratedColumn<String>('translations', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<Translation>?>(
              $MetadataSubmissionsTable.$convertertranslationsn);
  static const VerificationMeta _resourceTypeMeta =
      const VerificationMeta('resourceType');
  @override
  late final GeneratedColumnWithTypeConverter<MetadataResourceType, String>
      resourceType = GeneratedColumn<String>(
              'resource_type', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<MetadataResourceType>(
              $MetadataSubmissionsTable.$converterresourceType);
  static const VerificationMeta _metadataSchemaMeta =
      const VerificationMeta('metadataSchema');
  @override
  late final GeneratedColumn<String> metadataSchema = GeneratedColumn<String>(
      'metadata_schema', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _serialNumberMeta =
      const VerificationMeta('serialNumber');
  @override
  late final GeneratedColumn<int> serialNumber = GeneratedColumn<int>(
      'serial_number', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _versionMeta =
      const VerificationMeta('version');
  @override
  late final GeneratedColumn<int> version = GeneratedColumn<int>(
      'version', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _resourceIdMeta =
      const VerificationMeta('resourceId');
  @override
  late final GeneratedColumn<String> resourceId = GeneratedColumn<String>(
      'resource_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _formDataMeta =
      const VerificationMeta('formData');
  @override
  late final GeneratedColumnWithTypeConverter<Map<String, dynamic>?, String>
      formData = GeneratedColumn<String>('form_data', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<Map<String, dynamic>?>(
              $MetadataSubmissionsTable.$converterformDatan);
  static const VerificationMeta _createdByMeta =
      const VerificationMeta('createdBy');
  @override
  late final GeneratedColumn<String> createdBy = GeneratedColumn<String>(
      'created_by', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _lastModifiedByMeta =
      const VerificationMeta('lastModifiedBy');
  @override
  late final GeneratedColumn<String> lastModifiedBy = GeneratedColumn<String>(
      'last_modified_by', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        lastModifiedDate,
        createdDate,
        name,
        displayName,
        code,
        translations,
        resourceType,
        metadataSchema,
        serialNumber,
        version,
        resourceId,
        formData,
        createdBy,
        lastModifiedBy
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'metadata_submissions';
  @override
  VerificationContext validateIntegrity(Insertable<MetadataSubmission> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('last_modified_date')) {
      context.handle(
          _lastModifiedDateMeta,
          lastModifiedDate.isAcceptableOrUnknown(
              data['last_modified_date']!, _lastModifiedDateMeta));
    }
    if (data.containsKey('created_date')) {
      context.handle(
          _createdDateMeta,
          createdDate.isAcceptableOrUnknown(
              data['created_date']!, _createdDateMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('display_name')) {
      context.handle(
          _displayNameMeta,
          displayName.isAcceptableOrUnknown(
              data['display_name']!, _displayNameMeta));
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    }
    context.handle(_translationsMeta, const VerificationResult.success());
    context.handle(_resourceTypeMeta, const VerificationResult.success());
    if (data.containsKey('metadata_schema')) {
      context.handle(
          _metadataSchemaMeta,
          metadataSchema.isAcceptableOrUnknown(
              data['metadata_schema']!, _metadataSchemaMeta));
    } else if (isInserting) {
      context.missing(_metadataSchemaMeta);
    }
    if (data.containsKey('serial_number')) {
      context.handle(
          _serialNumberMeta,
          serialNumber.isAcceptableOrUnknown(
              data['serial_number']!, _serialNumberMeta));
    } else if (isInserting) {
      context.missing(_serialNumberMeta);
    }
    if (data.containsKey('version')) {
      context.handle(_versionMeta,
          version.isAcceptableOrUnknown(data['version']!, _versionMeta));
    } else if (isInserting) {
      context.missing(_versionMeta);
    }
    if (data.containsKey('resource_id')) {
      context.handle(
          _resourceIdMeta,
          resourceId.isAcceptableOrUnknown(
              data['resource_id']!, _resourceIdMeta));
    } else if (isInserting) {
      context.missing(_resourceIdMeta);
    }
    context.handle(_formDataMeta, const VerificationResult.success());
    if (data.containsKey('created_by')) {
      context.handle(_createdByMeta,
          createdBy.isAcceptableOrUnknown(data['created_by']!, _createdByMeta));
    }
    if (data.containsKey('last_modified_by')) {
      context.handle(
          _lastModifiedByMeta,
          lastModifiedBy.isAcceptableOrUnknown(
              data['last_modified_by']!, _lastModifiedByMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MetadataSubmission map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MetadataSubmission(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      lastModifiedDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}last_modified_date'])!,
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      displayName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}display_name']),
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code']),
      translations: $MetadataSubmissionsTable.$convertertranslationsn.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}translations'])),
      resourceType: $MetadataSubmissionsTable.$converterresourceType.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}resource_type'])!),
      metadataSchema: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}metadata_schema'])!,
      serialNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}serial_number'])!,
      version: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}version'])!,
      resourceId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}resource_id'])!,
      formData: $MetadataSubmissionsTable.$converterformDatan.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.string, data['${effectivePrefix}form_data'])),
      createdBy: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}created_by']),
      lastModifiedBy: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}last_modified_by']),
    );
  }

  @override
  $MetadataSubmissionsTable createAlias(String alias) {
    return $MetadataSubmissionsTable(attachedDatabase, alias);
  }

  static TypeConverter<List<Translation>, String> $convertertranslations =
      const TranslationConverter();
  static TypeConverter<List<Translation>?, String?> $convertertranslationsn =
      NullAwareTypeConverter.wrap($convertertranslations);
  static JsonTypeConverter2<MetadataResourceType, String, String>
      $converterresourceType =
      const EnumNameConverter(MetadataResourceType.values);
  static TypeConverter<Map<String, dynamic>, String> $converterformData =
      const MapConverter();
  static TypeConverter<Map<String, dynamic>?, String?> $converterformDatan =
      NullAwareTypeConverter.wrap($converterformData);
}

class MetadataSubmission extends DataClass
    implements Insertable<MetadataSubmission> {
  final String id;
  final DateTime lastModifiedDate;
  final DateTime createdDate;
  final String? name;
  final String? displayName;
  final String? code;

  /// List of Translations
  final List<Translation>? translations;

  /// Resource type (non-null), stored as text using a converter.
  final MetadataResourceType resourceType;

  /// Metadata schema (non-null text).
  final String metadataSchema;

  /// Serial number (non-null integer).
  final int serialNumber;

  /// Version (non-null integer).
  final int version;

  /// Resource ID (non-null text).
  final String resourceId;

  /// formData stored as a JSON string (nullable).
  final Map<String, dynamic>? formData;

  /// createdBy (nullable text).
  final String? createdBy;

  /// lastModifiedBy (nullable text).
  final String? lastModifiedBy;
  const MetadataSubmission(
      {required this.id,
      required this.lastModifiedDate,
      required this.createdDate,
      this.name,
      this.displayName,
      this.code,
      this.translations,
      required this.resourceType,
      required this.metadataSchema,
      required this.serialNumber,
      required this.version,
      required this.resourceId,
      this.formData,
      this.createdBy,
      this.lastModifiedBy});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['last_modified_date'] = Variable<DateTime>(lastModifiedDate);
    map['created_date'] = Variable<DateTime>(createdDate);
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || displayName != null) {
      map['display_name'] = Variable<String>(displayName);
    }
    if (!nullToAbsent || code != null) {
      map['code'] = Variable<String>(code);
    }
    if (!nullToAbsent || translations != null) {
      map['translations'] = Variable<String>($MetadataSubmissionsTable
          .$convertertranslationsn
          .toSql(translations));
    }
    {
      map['resource_type'] = Variable<String>(
          $MetadataSubmissionsTable.$converterresourceType.toSql(resourceType));
    }
    map['metadata_schema'] = Variable<String>(metadataSchema);
    map['serial_number'] = Variable<int>(serialNumber);
    map['version'] = Variable<int>(version);
    map['resource_id'] = Variable<String>(resourceId);
    if (!nullToAbsent || formData != null) {
      map['form_data'] = Variable<String>(
          $MetadataSubmissionsTable.$converterformDatan.toSql(formData));
    }
    if (!nullToAbsent || createdBy != null) {
      map['created_by'] = Variable<String>(createdBy);
    }
    if (!nullToAbsent || lastModifiedBy != null) {
      map['last_modified_by'] = Variable<String>(lastModifiedBy);
    }
    return map;
  }

  MetadataSubmissionsCompanion toCompanion(bool nullToAbsent) {
    return MetadataSubmissionsCompanion(
      id: Value(id),
      lastModifiedDate: Value(lastModifiedDate),
      createdDate: Value(createdDate),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      displayName: displayName == null && nullToAbsent
          ? const Value.absent()
          : Value(displayName),
      code: code == null && nullToAbsent ? const Value.absent() : Value(code),
      translations: translations == null && nullToAbsent
          ? const Value.absent()
          : Value(translations),
      resourceType: Value(resourceType),
      metadataSchema: Value(metadataSchema),
      serialNumber: Value(serialNumber),
      version: Value(version),
      resourceId: Value(resourceId),
      formData: formData == null && nullToAbsent
          ? const Value.absent()
          : Value(formData),
      createdBy: createdBy == null && nullToAbsent
          ? const Value.absent()
          : Value(createdBy),
      lastModifiedBy: lastModifiedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(lastModifiedBy),
    );
  }

  factory MetadataSubmission.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MetadataSubmission(
      id: serializer.fromJson<String>(json['id']),
      lastModifiedDate: serializer.fromJson<DateTime>(json['lastModifiedDate']),
      createdDate: serializer.fromJson<DateTime>(json['createdDate']),
      name: serializer.fromJson<String?>(json['name']),
      displayName: serializer.fromJson<String?>(json['displayName']),
      code: serializer.fromJson<String?>(json['code']),
      translations:
          serializer.fromJson<List<Translation>?>(json['translations']),
      resourceType: $MetadataSubmissionsTable.$converterresourceType
          .fromJson(serializer.fromJson<String>(json['resourceType'])),
      metadataSchema: serializer.fromJson<String>(json['metadataSchema']),
      serialNumber: serializer.fromJson<int>(json['serialNumber']),
      version: serializer.fromJson<int>(json['version']),
      resourceId: serializer.fromJson<String>(json['resourceId']),
      formData: serializer.fromJson<Map<String, dynamic>?>(json['formData']),
      createdBy: serializer.fromJson<String?>(json['createdBy']),
      lastModifiedBy: serializer.fromJson<String?>(json['lastModifiedBy']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'lastModifiedDate': serializer.toJson<DateTime>(lastModifiedDate),
      'createdDate': serializer.toJson<DateTime>(createdDate),
      'name': serializer.toJson<String?>(name),
      'displayName': serializer.toJson<String?>(displayName),
      'code': serializer.toJson<String?>(code),
      'translations': serializer.toJson<List<Translation>?>(translations),
      'resourceType': serializer.toJson<String>($MetadataSubmissionsTable
          .$converterresourceType
          .toJson(resourceType)),
      'metadataSchema': serializer.toJson<String>(metadataSchema),
      'serialNumber': serializer.toJson<int>(serialNumber),
      'version': serializer.toJson<int>(version),
      'resourceId': serializer.toJson<String>(resourceId),
      'formData': serializer.toJson<Map<String, dynamic>?>(formData),
      'createdBy': serializer.toJson<String?>(createdBy),
      'lastModifiedBy': serializer.toJson<String?>(lastModifiedBy),
    };
  }

  MetadataSubmission copyWith(
          {String? id,
          DateTime? lastModifiedDate,
          DateTime? createdDate,
          Value<String?> name = const Value.absent(),
          Value<String?> displayName = const Value.absent(),
          Value<String?> code = const Value.absent(),
          Value<List<Translation>?> translations = const Value.absent(),
          MetadataResourceType? resourceType,
          String? metadataSchema,
          int? serialNumber,
          int? version,
          String? resourceId,
          Value<Map<String, dynamic>?> formData = const Value.absent(),
          Value<String?> createdBy = const Value.absent(),
          Value<String?> lastModifiedBy = const Value.absent()}) =>
      MetadataSubmission(
        id: id ?? this.id,
        lastModifiedDate: lastModifiedDate ?? this.lastModifiedDate,
        createdDate: createdDate ?? this.createdDate,
        name: name.present ? name.value : this.name,
        displayName: displayName.present ? displayName.value : this.displayName,
        code: code.present ? code.value : this.code,
        translations:
            translations.present ? translations.value : this.translations,
        resourceType: resourceType ?? this.resourceType,
        metadataSchema: metadataSchema ?? this.metadataSchema,
        serialNumber: serialNumber ?? this.serialNumber,
        version: version ?? this.version,
        resourceId: resourceId ?? this.resourceId,
        formData: formData.present ? formData.value : this.formData,
        createdBy: createdBy.present ? createdBy.value : this.createdBy,
        lastModifiedBy:
            lastModifiedBy.present ? lastModifiedBy.value : this.lastModifiedBy,
      );
  MetadataSubmission copyWithCompanion(MetadataSubmissionsCompanion data) {
    return MetadataSubmission(
      id: data.id.present ? data.id.value : this.id,
      lastModifiedDate: data.lastModifiedDate.present
          ? data.lastModifiedDate.value
          : this.lastModifiedDate,
      createdDate:
          data.createdDate.present ? data.createdDate.value : this.createdDate,
      name: data.name.present ? data.name.value : this.name,
      displayName:
          data.displayName.present ? data.displayName.value : this.displayName,
      code: data.code.present ? data.code.value : this.code,
      translations: data.translations.present
          ? data.translations.value
          : this.translations,
      resourceType: data.resourceType.present
          ? data.resourceType.value
          : this.resourceType,
      metadataSchema: data.metadataSchema.present
          ? data.metadataSchema.value
          : this.metadataSchema,
      serialNumber: data.serialNumber.present
          ? data.serialNumber.value
          : this.serialNumber,
      version: data.version.present ? data.version.value : this.version,
      resourceId:
          data.resourceId.present ? data.resourceId.value : this.resourceId,
      formData: data.formData.present ? data.formData.value : this.formData,
      createdBy: data.createdBy.present ? data.createdBy.value : this.createdBy,
      lastModifiedBy: data.lastModifiedBy.present
          ? data.lastModifiedBy.value
          : this.lastModifiedBy,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MetadataSubmission(')
          ..write('id: $id, ')
          ..write('lastModifiedDate: $lastModifiedDate, ')
          ..write('createdDate: $createdDate, ')
          ..write('name: $name, ')
          ..write('displayName: $displayName, ')
          ..write('code: $code, ')
          ..write('translations: $translations, ')
          ..write('resourceType: $resourceType, ')
          ..write('metadataSchema: $metadataSchema, ')
          ..write('serialNumber: $serialNumber, ')
          ..write('version: $version, ')
          ..write('resourceId: $resourceId, ')
          ..write('formData: $formData, ')
          ..write('createdBy: $createdBy, ')
          ..write('lastModifiedBy: $lastModifiedBy')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      lastModifiedDate,
      createdDate,
      name,
      displayName,
      code,
      translations,
      resourceType,
      metadataSchema,
      serialNumber,
      version,
      resourceId,
      formData,
      createdBy,
      lastModifiedBy);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MetadataSubmission &&
          other.id == this.id &&
          other.lastModifiedDate == this.lastModifiedDate &&
          other.createdDate == this.createdDate &&
          other.name == this.name &&
          other.displayName == this.displayName &&
          other.code == this.code &&
          other.translations == this.translations &&
          other.resourceType == this.resourceType &&
          other.metadataSchema == this.metadataSchema &&
          other.serialNumber == this.serialNumber &&
          other.version == this.version &&
          other.resourceId == this.resourceId &&
          other.formData == this.formData &&
          other.createdBy == this.createdBy &&
          other.lastModifiedBy == this.lastModifiedBy);
}

class MetadataSubmissionsCompanion extends UpdateCompanion<MetadataSubmission> {
  final Value<String> id;
  final Value<DateTime> lastModifiedDate;
  final Value<DateTime> createdDate;
  final Value<String?> name;
  final Value<String?> displayName;
  final Value<String?> code;
  final Value<List<Translation>?> translations;
  final Value<MetadataResourceType> resourceType;
  final Value<String> metadataSchema;
  final Value<int> serialNumber;
  final Value<int> version;
  final Value<String> resourceId;
  final Value<Map<String, dynamic>?> formData;
  final Value<String?> createdBy;
  final Value<String?> lastModifiedBy;
  final Value<int> rowid;
  const MetadataSubmissionsCompanion({
    this.id = const Value.absent(),
    this.lastModifiedDate = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.name = const Value.absent(),
    this.displayName = const Value.absent(),
    this.code = const Value.absent(),
    this.translations = const Value.absent(),
    this.resourceType = const Value.absent(),
    this.metadataSchema = const Value.absent(),
    this.serialNumber = const Value.absent(),
    this.version = const Value.absent(),
    this.resourceId = const Value.absent(),
    this.formData = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.lastModifiedBy = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  MetadataSubmissionsCompanion.insert({
    required String id,
    this.lastModifiedDate = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.name = const Value.absent(),
    this.displayName = const Value.absent(),
    this.code = const Value.absent(),
    this.translations = const Value.absent(),
    required MetadataResourceType resourceType,
    required String metadataSchema,
    required int serialNumber,
    required int version,
    required String resourceId,
    this.formData = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.lastModifiedBy = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        resourceType = Value(resourceType),
        metadataSchema = Value(metadataSchema),
        serialNumber = Value(serialNumber),
        version = Value(version),
        resourceId = Value(resourceId);
  static Insertable<MetadataSubmission> custom({
    Expression<String>? id,
    Expression<DateTime>? lastModifiedDate,
    Expression<DateTime>? createdDate,
    Expression<String>? name,
    Expression<String>? displayName,
    Expression<String>? code,
    Expression<String>? translations,
    Expression<String>? resourceType,
    Expression<String>? metadataSchema,
    Expression<int>? serialNumber,
    Expression<int>? version,
    Expression<String>? resourceId,
    Expression<String>? formData,
    Expression<String>? createdBy,
    Expression<String>? lastModifiedBy,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (lastModifiedDate != null) 'last_modified_date': lastModifiedDate,
      if (createdDate != null) 'created_date': createdDate,
      if (name != null) 'name': name,
      if (displayName != null) 'display_name': displayName,
      if (code != null) 'code': code,
      if (translations != null) 'translations': translations,
      if (resourceType != null) 'resource_type': resourceType,
      if (metadataSchema != null) 'metadata_schema': metadataSchema,
      if (serialNumber != null) 'serial_number': serialNumber,
      if (version != null) 'version': version,
      if (resourceId != null) 'resource_id': resourceId,
      if (formData != null) 'form_data': formData,
      if (createdBy != null) 'created_by': createdBy,
      if (lastModifiedBy != null) 'last_modified_by': lastModifiedBy,
      if (rowid != null) 'rowid': rowid,
    });
  }

  MetadataSubmissionsCompanion copyWith(
      {Value<String>? id,
      Value<DateTime>? lastModifiedDate,
      Value<DateTime>? createdDate,
      Value<String?>? name,
      Value<String?>? displayName,
      Value<String?>? code,
      Value<List<Translation>?>? translations,
      Value<MetadataResourceType>? resourceType,
      Value<String>? metadataSchema,
      Value<int>? serialNumber,
      Value<int>? version,
      Value<String>? resourceId,
      Value<Map<String, dynamic>?>? formData,
      Value<String?>? createdBy,
      Value<String?>? lastModifiedBy,
      Value<int>? rowid}) {
    return MetadataSubmissionsCompanion(
      id: id ?? this.id,
      lastModifiedDate: lastModifiedDate ?? this.lastModifiedDate,
      createdDate: createdDate ?? this.createdDate,
      name: name ?? this.name,
      displayName: displayName ?? this.displayName,
      code: code ?? this.code,
      translations: translations ?? this.translations,
      resourceType: resourceType ?? this.resourceType,
      metadataSchema: metadataSchema ?? this.metadataSchema,
      serialNumber: serialNumber ?? this.serialNumber,
      version: version ?? this.version,
      resourceId: resourceId ?? this.resourceId,
      formData: formData ?? this.formData,
      createdBy: createdBy ?? this.createdBy,
      lastModifiedBy: lastModifiedBy ?? this.lastModifiedBy,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (lastModifiedDate.present) {
      map['last_modified_date'] = Variable<DateTime>(lastModifiedDate.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (displayName.present) {
      map['display_name'] = Variable<String>(displayName.value);
    }
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (translations.present) {
      map['translations'] = Variable<String>($MetadataSubmissionsTable
          .$convertertranslationsn
          .toSql(translations.value));
    }
    if (resourceType.present) {
      map['resource_type'] = Variable<String>($MetadataSubmissionsTable
          .$converterresourceType
          .toSql(resourceType.value));
    }
    if (metadataSchema.present) {
      map['metadata_schema'] = Variable<String>(metadataSchema.value);
    }
    if (serialNumber.present) {
      map['serial_number'] = Variable<int>(serialNumber.value);
    }
    if (version.present) {
      map['version'] = Variable<int>(version.value);
    }
    if (resourceId.present) {
      map['resource_id'] = Variable<String>(resourceId.value);
    }
    if (formData.present) {
      map['form_data'] = Variable<String>(
          $MetadataSubmissionsTable.$converterformDatan.toSql(formData.value));
    }
    if (createdBy.present) {
      map['created_by'] = Variable<String>(createdBy.value);
    }
    if (lastModifiedBy.present) {
      map['last_modified_by'] = Variable<String>(lastModifiedBy.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MetadataSubmissionsCompanion(')
          ..write('id: $id, ')
          ..write('lastModifiedDate: $lastModifiedDate, ')
          ..write('createdDate: $createdDate, ')
          ..write('name: $name, ')
          ..write('displayName: $displayName, ')
          ..write('code: $code, ')
          ..write('translations: $translations, ')
          ..write('resourceType: $resourceType, ')
          ..write('metadataSchema: $metadataSchema, ')
          ..write('serialNumber: $serialNumber, ')
          ..write('version: $version, ')
          ..write('resourceId: $resourceId, ')
          ..write('formData: $formData, ')
          ..write('createdBy: $createdBy, ')
          ..write('lastModifiedBy: $lastModifiedBy, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $DataSubmissionsTable extends DataSubmissions
    with TableInfo<$DataSubmissionsTable, DataSubmission> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DataSubmissionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lastModifiedDateMeta =
      const VerificationMeta('lastModifiedDate');
  @override
  late final GeneratedColumn<DateTime> lastModifiedDate =
      GeneratedColumn<DateTime>('last_modified_date', aliasedName, false,
          type: DriftSqlType.dateTime,
          requiredDuringInsert: false,
          defaultValue: currentDateAndTime);
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  static const VerificationMeta _deletedMeta =
      const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<bool> deleted = GeneratedColumn<bool>(
      'deleted', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("deleted" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _formMeta = const VerificationMeta('form');
  @override
  late final GeneratedColumn<String> form = GeneratedColumn<String>(
      'form', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _formVersionMeta =
      const VerificationMeta('formVersion');
  @override
  late final GeneratedColumn<String> formVersion = GeneratedColumn<String>(
      'form_version', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES form_versions (id)'));
  static const VerificationMeta _versionMeta =
      const VerificationMeta('version');
  @override
  late final GeneratedColumn<int> version = GeneratedColumn<int>(
      'version', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _assignmentMeta =
      const VerificationMeta('assignment');
  @override
  late final GeneratedColumn<String> assignment = GeneratedColumn<String>(
      'assignment', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES assignments (id)'));
  static const VerificationMeta _teamMeta = const VerificationMeta('team');
  @override
  late final GeneratedColumn<String> team = GeneratedColumn<String>(
      'team', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES teams (id)'));
  static const VerificationMeta _orgUnitMeta =
      const VerificationMeta('orgUnit');
  @override
  late final GeneratedColumn<String> orgUnit = GeneratedColumn<String>(
      'org_unit', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES org_units (id)'));
  static const VerificationMeta _progressStatusMeta =
      const VerificationMeta('progressStatus');
  @override
  late final GeneratedColumnWithTypeConverter<AssignmentStatus?, String>
      progressStatus = GeneratedColumn<String>(
              'progress_status', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<AssignmentStatus?>(
              $DataSubmissionsTable.$converterprogressStatusn);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumnWithTypeConverter<SubmissionStatus, String> status =
      GeneratedColumn<String>('status', aliasedName, false,
              type: DriftSqlType.string,
              requiredDuringInsert: false,
              defaultValue: Constant(SubmissionStatus.draft.name))
          .withConverter<SubmissionStatus>(
              $DataSubmissionsTable.$converterstatus);
  static const VerificationMeta _lastSyncDateMeta =
      const VerificationMeta('lastSyncDate');
  @override
  late final GeneratedColumn<DateTime> lastSyncDate = GeneratedColumn<DateTime>(
      'last_sync_date', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _lastSyncMessageMeta =
      const VerificationMeta('lastSyncMessage');
  @override
  late final GeneratedColumn<String> lastSyncMessage = GeneratedColumn<String>(
      'last_sync_message', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _startEntryTimeMeta =
      const VerificationMeta('startEntryTime');
  @override
  late final GeneratedColumn<DateTime> startEntryTime =
      GeneratedColumn<DateTime>('start_entry_time', aliasedName, false,
          type: DriftSqlType.dateTime,
          requiredDuringInsert: false,
          defaultValue: currentDateAndTime);
  static const VerificationMeta _finishedEntryTimeMeta =
      const VerificationMeta('finishedEntryTime');
  @override
  late final GeneratedColumn<DateTime> finishedEntryTime =
      GeneratedColumn<DateTime>('finished_entry_time', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _createdByMeta =
      const VerificationMeta('createdBy');
  @override
  late final GeneratedColumn<String> createdBy = GeneratedColumn<String>(
      'created_by', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _formDataMeta =
      const VerificationMeta('formData');
  @override
  late final GeneratedColumnWithTypeConverter<Map<String, dynamic>?, String>
      formData = GeneratedColumn<String>('form_data', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<Map<String, dynamic>?>(
              $DataSubmissionsTable.$converterformDatan);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        lastModifiedDate,
        createdDate,
        deleted,
        form,
        formVersion,
        version,
        assignment,
        team,
        orgUnit,
        progressStatus,
        status,
        lastSyncDate,
        lastSyncMessage,
        startEntryTime,
        finishedEntryTime,
        createdBy,
        formData
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'data_submissions';
  @override
  VerificationContext validateIntegrity(Insertable<DataSubmission> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('last_modified_date')) {
      context.handle(
          _lastModifiedDateMeta,
          lastModifiedDate.isAcceptableOrUnknown(
              data['last_modified_date']!, _lastModifiedDateMeta));
    }
    if (data.containsKey('created_date')) {
      context.handle(
          _createdDateMeta,
          createdDate.isAcceptableOrUnknown(
              data['created_date']!, _createdDateMeta));
    }
    if (data.containsKey('deleted')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['deleted']!, _deletedMeta));
    }
    if (data.containsKey('form')) {
      context.handle(
          _formMeta, form.isAcceptableOrUnknown(data['form']!, _formMeta));
    }
    if (data.containsKey('form_version')) {
      context.handle(
          _formVersionMeta,
          formVersion.isAcceptableOrUnknown(
              data['form_version']!, _formVersionMeta));
    } else if (isInserting) {
      context.missing(_formVersionMeta);
    }
    if (data.containsKey('version')) {
      context.handle(_versionMeta,
          version.isAcceptableOrUnknown(data['version']!, _versionMeta));
    } else if (isInserting) {
      context.missing(_versionMeta);
    }
    if (data.containsKey('assignment')) {
      context.handle(
          _assignmentMeta,
          assignment.isAcceptableOrUnknown(
              data['assignment']!, _assignmentMeta));
    }
    if (data.containsKey('team')) {
      context.handle(
          _teamMeta, team.isAcceptableOrUnknown(data['team']!, _teamMeta));
    }
    if (data.containsKey('org_unit')) {
      context.handle(_orgUnitMeta,
          orgUnit.isAcceptableOrUnknown(data['org_unit']!, _orgUnitMeta));
    }
    context.handle(_progressStatusMeta, const VerificationResult.success());
    context.handle(_statusMeta, const VerificationResult.success());
    if (data.containsKey('last_sync_date')) {
      context.handle(
          _lastSyncDateMeta,
          lastSyncDate.isAcceptableOrUnknown(
              data['last_sync_date']!, _lastSyncDateMeta));
    }
    if (data.containsKey('last_sync_message')) {
      context.handle(
          _lastSyncMessageMeta,
          lastSyncMessage.isAcceptableOrUnknown(
              data['last_sync_message']!, _lastSyncMessageMeta));
    }
    if (data.containsKey('start_entry_time')) {
      context.handle(
          _startEntryTimeMeta,
          startEntryTime.isAcceptableOrUnknown(
              data['start_entry_time']!, _startEntryTimeMeta));
    }
    if (data.containsKey('finished_entry_time')) {
      context.handle(
          _finishedEntryTimeMeta,
          finishedEntryTime.isAcceptableOrUnknown(
              data['finished_entry_time']!, _finishedEntryTimeMeta));
    }
    if (data.containsKey('created_by')) {
      context.handle(_createdByMeta,
          createdBy.isAcceptableOrUnknown(data['created_by']!, _createdByMeta));
    }
    context.handle(_formDataMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DataSubmission map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DataSubmission(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      lastModifiedDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}last_modified_date'])!,
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date'])!,
      deleted: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}deleted'])!,
      form: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}form']),
      formVersion: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}form_version'])!,
      version: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}version'])!,
      assignment: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}assignment']),
      team: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}team']),
      orgUnit: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}org_unit']),
      progressStatus: $DataSubmissionsTable.$converterprogressStatusn.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}progress_status'])),
      status: $DataSubmissionsTable.$converterstatus.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status'])!),
      lastSyncDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}last_sync_date']),
      lastSyncMessage: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}last_sync_message']),
      startEntryTime: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}start_entry_time'])!,
      finishedEntryTime: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}finished_entry_time']),
      createdBy: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}created_by']),
      formData: $DataSubmissionsTable.$converterformDatan.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.string, data['${effectivePrefix}form_data'])),
    );
  }

  @override
  $DataSubmissionsTable createAlias(String alias) {
    return $DataSubmissionsTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<AssignmentStatus, String, String>
      $converterprogressStatus =
      const EnumNameConverter(AssignmentStatus.values);
  static JsonTypeConverter2<AssignmentStatus?, String?, String?>
      $converterprogressStatusn =
      JsonTypeConverter2.asNullable($converterprogressStatus);
  static JsonTypeConverter2<SubmissionStatus, String, String> $converterstatus =
      const EnumNameConverter(SubmissionStatus.values);
  static TypeConverter<Map<String, dynamic>, String> $converterformData =
      const MapConverter();
  static TypeConverter<Map<String, dynamic>?, String?> $converterformDatan =
      NullAwareTypeConverter.wrap($converterformData);
}

class DataSubmission extends DataClass implements Insertable<DataSubmission> {
  final String id;
  final DateTime lastModifiedDate;
  final DateTime createdDate;
  final bool deleted;

  /// Form template id is stored as text (nullable).
  final String? form;

  /// Many-to-one references stored as text.
  final String formVersion;

  /// Version is non-nullable integer.
  final int version;

  /// Nullable assignment reference.
  final String? assignment;

  /// Many-to-one references stored as text.
  final String? team;

  /// Nullable orgUnit reference.
  final String? orgUnit;

  /// Progress Status stored as text via a converter; nullable.
  final AssignmentStatus? progressStatus;
  final SubmissionStatus status;
  final DateTime? lastSyncDate;
  final String? lastSyncMessage;
  final DateTime startEntryTime;

  /// last finalized time
  final DateTime? finishedEntryTime;
  final String? createdBy;

  /// formData is stored as a JSON string.
  final Map<String, dynamic>? formData;
  const DataSubmission(
      {required this.id,
      required this.lastModifiedDate,
      required this.createdDate,
      required this.deleted,
      this.form,
      required this.formVersion,
      required this.version,
      this.assignment,
      this.team,
      this.orgUnit,
      this.progressStatus,
      required this.status,
      this.lastSyncDate,
      this.lastSyncMessage,
      required this.startEntryTime,
      this.finishedEntryTime,
      this.createdBy,
      this.formData});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['last_modified_date'] = Variable<DateTime>(lastModifiedDate);
    map['created_date'] = Variable<DateTime>(createdDate);
    map['deleted'] = Variable<bool>(deleted);
    if (!nullToAbsent || form != null) {
      map['form'] = Variable<String>(form);
    }
    map['form_version'] = Variable<String>(formVersion);
    map['version'] = Variable<int>(version);
    if (!nullToAbsent || assignment != null) {
      map['assignment'] = Variable<String>(assignment);
    }
    if (!nullToAbsent || team != null) {
      map['team'] = Variable<String>(team);
    }
    if (!nullToAbsent || orgUnit != null) {
      map['org_unit'] = Variable<String>(orgUnit);
    }
    if (!nullToAbsent || progressStatus != null) {
      map['progress_status'] = Variable<String>($DataSubmissionsTable
          .$converterprogressStatusn
          .toSql(progressStatus));
    }
    {
      map['status'] = Variable<String>(
          $DataSubmissionsTable.$converterstatus.toSql(status));
    }
    if (!nullToAbsent || lastSyncDate != null) {
      map['last_sync_date'] = Variable<DateTime>(lastSyncDate);
    }
    if (!nullToAbsent || lastSyncMessage != null) {
      map['last_sync_message'] = Variable<String>(lastSyncMessage);
    }
    map['start_entry_time'] = Variable<DateTime>(startEntryTime);
    if (!nullToAbsent || finishedEntryTime != null) {
      map['finished_entry_time'] = Variable<DateTime>(finishedEntryTime);
    }
    if (!nullToAbsent || createdBy != null) {
      map['created_by'] = Variable<String>(createdBy);
    }
    if (!nullToAbsent || formData != null) {
      map['form_data'] = Variable<String>(
          $DataSubmissionsTable.$converterformDatan.toSql(formData));
    }
    return map;
  }

  DataSubmissionsCompanion toCompanion(bool nullToAbsent) {
    return DataSubmissionsCompanion(
      id: Value(id),
      lastModifiedDate: Value(lastModifiedDate),
      createdDate: Value(createdDate),
      deleted: Value(deleted),
      form: form == null && nullToAbsent ? const Value.absent() : Value(form),
      formVersion: Value(formVersion),
      version: Value(version),
      assignment: assignment == null && nullToAbsent
          ? const Value.absent()
          : Value(assignment),
      team: team == null && nullToAbsent ? const Value.absent() : Value(team),
      orgUnit: orgUnit == null && nullToAbsent
          ? const Value.absent()
          : Value(orgUnit),
      progressStatus: progressStatus == null && nullToAbsent
          ? const Value.absent()
          : Value(progressStatus),
      status: Value(status),
      lastSyncDate: lastSyncDate == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSyncDate),
      lastSyncMessage: lastSyncMessage == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSyncMessage),
      startEntryTime: Value(startEntryTime),
      finishedEntryTime: finishedEntryTime == null && nullToAbsent
          ? const Value.absent()
          : Value(finishedEntryTime),
      createdBy: createdBy == null && nullToAbsent
          ? const Value.absent()
          : Value(createdBy),
      formData: formData == null && nullToAbsent
          ? const Value.absent()
          : Value(formData),
    );
  }

  factory DataSubmission.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DataSubmission(
      id: serializer.fromJson<String>(json['id']),
      lastModifiedDate: serializer.fromJson<DateTime>(json['lastModifiedDate']),
      createdDate: serializer.fromJson<DateTime>(json['createdDate']),
      deleted: serializer.fromJson<bool>(json['deleted']),
      form: serializer.fromJson<String?>(json['form']),
      formVersion: serializer.fromJson<String>(json['formVersion']),
      version: serializer.fromJson<int>(json['version']),
      assignment: serializer.fromJson<String?>(json['assignment']),
      team: serializer.fromJson<String?>(json['team']),
      orgUnit: serializer.fromJson<String?>(json['orgUnit']),
      progressStatus: $DataSubmissionsTable.$converterprogressStatusn
          .fromJson(serializer.fromJson<String?>(json['progressStatus'])),
      status: $DataSubmissionsTable.$converterstatus
          .fromJson(serializer.fromJson<String>(json['status'])),
      lastSyncDate: serializer.fromJson<DateTime?>(json['lastSyncDate']),
      lastSyncMessage: serializer.fromJson<String?>(json['lastSyncMessage']),
      startEntryTime: serializer.fromJson<DateTime>(json['startEntryTime']),
      finishedEntryTime:
          serializer.fromJson<DateTime?>(json['finishedEntryTime']),
      createdBy: serializer.fromJson<String?>(json['createdBy']),
      formData: serializer.fromJson<Map<String, dynamic>?>(json['formData']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'lastModifiedDate': serializer.toJson<DateTime>(lastModifiedDate),
      'createdDate': serializer.toJson<DateTime>(createdDate),
      'deleted': serializer.toJson<bool>(deleted),
      'form': serializer.toJson<String?>(form),
      'formVersion': serializer.toJson<String>(formVersion),
      'version': serializer.toJson<int>(version),
      'assignment': serializer.toJson<String?>(assignment),
      'team': serializer.toJson<String?>(team),
      'orgUnit': serializer.toJson<String?>(orgUnit),
      'progressStatus': serializer.toJson<String?>($DataSubmissionsTable
          .$converterprogressStatusn
          .toJson(progressStatus)),
      'status': serializer.toJson<String>(
          $DataSubmissionsTable.$converterstatus.toJson(status)),
      'lastSyncDate': serializer.toJson<DateTime?>(lastSyncDate),
      'lastSyncMessage': serializer.toJson<String?>(lastSyncMessage),
      'startEntryTime': serializer.toJson<DateTime>(startEntryTime),
      'finishedEntryTime': serializer.toJson<DateTime?>(finishedEntryTime),
      'createdBy': serializer.toJson<String?>(createdBy),
      'formData': serializer.toJson<Map<String, dynamic>?>(formData),
    };
  }

  DataSubmission copyWith(
          {String? id,
          DateTime? lastModifiedDate,
          DateTime? createdDate,
          bool? deleted,
          Value<String?> form = const Value.absent(),
          String? formVersion,
          int? version,
          Value<String?> assignment = const Value.absent(),
          Value<String?> team = const Value.absent(),
          Value<String?> orgUnit = const Value.absent(),
          Value<AssignmentStatus?> progressStatus = const Value.absent(),
          SubmissionStatus? status,
          Value<DateTime?> lastSyncDate = const Value.absent(),
          Value<String?> lastSyncMessage = const Value.absent(),
          DateTime? startEntryTime,
          Value<DateTime?> finishedEntryTime = const Value.absent(),
          Value<String?> createdBy = const Value.absent(),
          Value<Map<String, dynamic>?> formData = const Value.absent()}) =>
      DataSubmission(
        id: id ?? this.id,
        lastModifiedDate: lastModifiedDate ?? this.lastModifiedDate,
        createdDate: createdDate ?? this.createdDate,
        deleted: deleted ?? this.deleted,
        form: form.present ? form.value : this.form,
        formVersion: formVersion ?? this.formVersion,
        version: version ?? this.version,
        assignment: assignment.present ? assignment.value : this.assignment,
        team: team.present ? team.value : this.team,
        orgUnit: orgUnit.present ? orgUnit.value : this.orgUnit,
        progressStatus:
            progressStatus.present ? progressStatus.value : this.progressStatus,
        status: status ?? this.status,
        lastSyncDate:
            lastSyncDate.present ? lastSyncDate.value : this.lastSyncDate,
        lastSyncMessage: lastSyncMessage.present
            ? lastSyncMessage.value
            : this.lastSyncMessage,
        startEntryTime: startEntryTime ?? this.startEntryTime,
        finishedEntryTime: finishedEntryTime.present
            ? finishedEntryTime.value
            : this.finishedEntryTime,
        createdBy: createdBy.present ? createdBy.value : this.createdBy,
        formData: formData.present ? formData.value : this.formData,
      );
  DataSubmission copyWithCompanion(DataSubmissionsCompanion data) {
    return DataSubmission(
      id: data.id.present ? data.id.value : this.id,
      lastModifiedDate: data.lastModifiedDate.present
          ? data.lastModifiedDate.value
          : this.lastModifiedDate,
      createdDate:
          data.createdDate.present ? data.createdDate.value : this.createdDate,
      deleted: data.deleted.present ? data.deleted.value : this.deleted,
      form: data.form.present ? data.form.value : this.form,
      formVersion:
          data.formVersion.present ? data.formVersion.value : this.formVersion,
      version: data.version.present ? data.version.value : this.version,
      assignment:
          data.assignment.present ? data.assignment.value : this.assignment,
      team: data.team.present ? data.team.value : this.team,
      orgUnit: data.orgUnit.present ? data.orgUnit.value : this.orgUnit,
      progressStatus: data.progressStatus.present
          ? data.progressStatus.value
          : this.progressStatus,
      status: data.status.present ? data.status.value : this.status,
      lastSyncDate: data.lastSyncDate.present
          ? data.lastSyncDate.value
          : this.lastSyncDate,
      lastSyncMessage: data.lastSyncMessage.present
          ? data.lastSyncMessage.value
          : this.lastSyncMessage,
      startEntryTime: data.startEntryTime.present
          ? data.startEntryTime.value
          : this.startEntryTime,
      finishedEntryTime: data.finishedEntryTime.present
          ? data.finishedEntryTime.value
          : this.finishedEntryTime,
      createdBy: data.createdBy.present ? data.createdBy.value : this.createdBy,
      formData: data.formData.present ? data.formData.value : this.formData,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DataSubmission(')
          ..write('id: $id, ')
          ..write('lastModifiedDate: $lastModifiedDate, ')
          ..write('createdDate: $createdDate, ')
          ..write('deleted: $deleted, ')
          ..write('form: $form, ')
          ..write('formVersion: $formVersion, ')
          ..write('version: $version, ')
          ..write('assignment: $assignment, ')
          ..write('team: $team, ')
          ..write('orgUnit: $orgUnit, ')
          ..write('progressStatus: $progressStatus, ')
          ..write('status: $status, ')
          ..write('lastSyncDate: $lastSyncDate, ')
          ..write('lastSyncMessage: $lastSyncMessage, ')
          ..write('startEntryTime: $startEntryTime, ')
          ..write('finishedEntryTime: $finishedEntryTime, ')
          ..write('createdBy: $createdBy, ')
          ..write('formData: $formData')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      lastModifiedDate,
      createdDate,
      deleted,
      form,
      formVersion,
      version,
      assignment,
      team,
      orgUnit,
      progressStatus,
      status,
      lastSyncDate,
      lastSyncMessage,
      startEntryTime,
      finishedEntryTime,
      createdBy,
      formData);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DataSubmission &&
          other.id == this.id &&
          other.lastModifiedDate == this.lastModifiedDate &&
          other.createdDate == this.createdDate &&
          other.deleted == this.deleted &&
          other.form == this.form &&
          other.formVersion == this.formVersion &&
          other.version == this.version &&
          other.assignment == this.assignment &&
          other.team == this.team &&
          other.orgUnit == this.orgUnit &&
          other.progressStatus == this.progressStatus &&
          other.status == this.status &&
          other.lastSyncDate == this.lastSyncDate &&
          other.lastSyncMessage == this.lastSyncMessage &&
          other.startEntryTime == this.startEntryTime &&
          other.finishedEntryTime == this.finishedEntryTime &&
          other.createdBy == this.createdBy &&
          other.formData == this.formData);
}

class DataSubmissionsCompanion extends UpdateCompanion<DataSubmission> {
  final Value<String> id;
  final Value<DateTime> lastModifiedDate;
  final Value<DateTime> createdDate;
  final Value<bool> deleted;
  final Value<String?> form;
  final Value<String> formVersion;
  final Value<int> version;
  final Value<String?> assignment;
  final Value<String?> team;
  final Value<String?> orgUnit;
  final Value<AssignmentStatus?> progressStatus;
  final Value<SubmissionStatus> status;
  final Value<DateTime?> lastSyncDate;
  final Value<String?> lastSyncMessage;
  final Value<DateTime> startEntryTime;
  final Value<DateTime?> finishedEntryTime;
  final Value<String?> createdBy;
  final Value<Map<String, dynamic>?> formData;
  final Value<int> rowid;
  const DataSubmissionsCompanion({
    this.id = const Value.absent(),
    this.lastModifiedDate = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.deleted = const Value.absent(),
    this.form = const Value.absent(),
    this.formVersion = const Value.absent(),
    this.version = const Value.absent(),
    this.assignment = const Value.absent(),
    this.team = const Value.absent(),
    this.orgUnit = const Value.absent(),
    this.progressStatus = const Value.absent(),
    this.status = const Value.absent(),
    this.lastSyncDate = const Value.absent(),
    this.lastSyncMessage = const Value.absent(),
    this.startEntryTime = const Value.absent(),
    this.finishedEntryTime = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.formData = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  DataSubmissionsCompanion.insert({
    required String id,
    this.lastModifiedDate = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.deleted = const Value.absent(),
    this.form = const Value.absent(),
    required String formVersion,
    required int version,
    this.assignment = const Value.absent(),
    this.team = const Value.absent(),
    this.orgUnit = const Value.absent(),
    this.progressStatus = const Value.absent(),
    this.status = const Value.absent(),
    this.lastSyncDate = const Value.absent(),
    this.lastSyncMessage = const Value.absent(),
    this.startEntryTime = const Value.absent(),
    this.finishedEntryTime = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.formData = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        formVersion = Value(formVersion),
        version = Value(version);
  static Insertable<DataSubmission> custom({
    Expression<String>? id,
    Expression<DateTime>? lastModifiedDate,
    Expression<DateTime>? createdDate,
    Expression<bool>? deleted,
    Expression<String>? form,
    Expression<String>? formVersion,
    Expression<int>? version,
    Expression<String>? assignment,
    Expression<String>? team,
    Expression<String>? orgUnit,
    Expression<String>? progressStatus,
    Expression<String>? status,
    Expression<DateTime>? lastSyncDate,
    Expression<String>? lastSyncMessage,
    Expression<DateTime>? startEntryTime,
    Expression<DateTime>? finishedEntryTime,
    Expression<String>? createdBy,
    Expression<String>? formData,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (lastModifiedDate != null) 'last_modified_date': lastModifiedDate,
      if (createdDate != null) 'created_date': createdDate,
      if (deleted != null) 'deleted': deleted,
      if (form != null) 'form': form,
      if (formVersion != null) 'form_version': formVersion,
      if (version != null) 'version': version,
      if (assignment != null) 'assignment': assignment,
      if (team != null) 'team': team,
      if (orgUnit != null) 'org_unit': orgUnit,
      if (progressStatus != null) 'progress_status': progressStatus,
      if (status != null) 'status': status,
      if (lastSyncDate != null) 'last_sync_date': lastSyncDate,
      if (lastSyncMessage != null) 'last_sync_message': lastSyncMessage,
      if (startEntryTime != null) 'start_entry_time': startEntryTime,
      if (finishedEntryTime != null) 'finished_entry_time': finishedEntryTime,
      if (createdBy != null) 'created_by': createdBy,
      if (formData != null) 'form_data': formData,
      if (rowid != null) 'rowid': rowid,
    });
  }

  DataSubmissionsCompanion copyWith(
      {Value<String>? id,
      Value<DateTime>? lastModifiedDate,
      Value<DateTime>? createdDate,
      Value<bool>? deleted,
      Value<String?>? form,
      Value<String>? formVersion,
      Value<int>? version,
      Value<String?>? assignment,
      Value<String?>? team,
      Value<String?>? orgUnit,
      Value<AssignmentStatus?>? progressStatus,
      Value<SubmissionStatus>? status,
      Value<DateTime?>? lastSyncDate,
      Value<String?>? lastSyncMessage,
      Value<DateTime>? startEntryTime,
      Value<DateTime?>? finishedEntryTime,
      Value<String?>? createdBy,
      Value<Map<String, dynamic>?>? formData,
      Value<int>? rowid}) {
    return DataSubmissionsCompanion(
      id: id ?? this.id,
      lastModifiedDate: lastModifiedDate ?? this.lastModifiedDate,
      createdDate: createdDate ?? this.createdDate,
      deleted: deleted ?? this.deleted,
      form: form ?? this.form,
      formVersion: formVersion ?? this.formVersion,
      version: version ?? this.version,
      assignment: assignment ?? this.assignment,
      team: team ?? this.team,
      orgUnit: orgUnit ?? this.orgUnit,
      progressStatus: progressStatus ?? this.progressStatus,
      status: status ?? this.status,
      lastSyncDate: lastSyncDate ?? this.lastSyncDate,
      lastSyncMessage: lastSyncMessage ?? this.lastSyncMessage,
      startEntryTime: startEntryTime ?? this.startEntryTime,
      finishedEntryTime: finishedEntryTime ?? this.finishedEntryTime,
      createdBy: createdBy ?? this.createdBy,
      formData: formData ?? this.formData,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (lastModifiedDate.present) {
      map['last_modified_date'] = Variable<DateTime>(lastModifiedDate.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (deleted.present) {
      map['deleted'] = Variable<bool>(deleted.value);
    }
    if (form.present) {
      map['form'] = Variable<String>(form.value);
    }
    if (formVersion.present) {
      map['form_version'] = Variable<String>(formVersion.value);
    }
    if (version.present) {
      map['version'] = Variable<int>(version.value);
    }
    if (assignment.present) {
      map['assignment'] = Variable<String>(assignment.value);
    }
    if (team.present) {
      map['team'] = Variable<String>(team.value);
    }
    if (orgUnit.present) {
      map['org_unit'] = Variable<String>(orgUnit.value);
    }
    if (progressStatus.present) {
      map['progress_status'] = Variable<String>($DataSubmissionsTable
          .$converterprogressStatusn
          .toSql(progressStatus.value));
    }
    if (status.present) {
      map['status'] = Variable<String>(
          $DataSubmissionsTable.$converterstatus.toSql(status.value));
    }
    if (lastSyncDate.present) {
      map['last_sync_date'] = Variable<DateTime>(lastSyncDate.value);
    }
    if (lastSyncMessage.present) {
      map['last_sync_message'] = Variable<String>(lastSyncMessage.value);
    }
    if (startEntryTime.present) {
      map['start_entry_time'] = Variable<DateTime>(startEntryTime.value);
    }
    if (finishedEntryTime.present) {
      map['finished_entry_time'] = Variable<DateTime>(finishedEntryTime.value);
    }
    if (createdBy.present) {
      map['created_by'] = Variable<String>(createdBy.value);
    }
    if (formData.present) {
      map['form_data'] = Variable<String>(
          $DataSubmissionsTable.$converterformDatan.toSql(formData.value));
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DataSubmissionsCompanion(')
          ..write('id: $id, ')
          ..write('lastModifiedDate: $lastModifiedDate, ')
          ..write('createdDate: $createdDate, ')
          ..write('deleted: $deleted, ')
          ..write('form: $form, ')
          ..write('formVersion: $formVersion, ')
          ..write('version: $version, ')
          ..write('assignment: $assignment, ')
          ..write('team: $team, ')
          ..write('orgUnit: $orgUnit, ')
          ..write('progressStatus: $progressStatus, ')
          ..write('status: $status, ')
          ..write('lastSyncDate: $lastSyncDate, ')
          ..write('lastSyncMessage: $lastSyncMessage, ')
          ..write('startEntryTime: $startEntryTime, ')
          ..write('finishedEntryTime: $finishedEntryTime, ')
          ..write('createdBy: $createdBy, ')
          ..write('formData: $formData, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $RepeatInstancesTable extends RepeatInstances
    with TableInfo<$RepeatInstancesTable, RepeatInstance> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RepeatInstancesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lastModifiedDateMeta =
      const VerificationMeta('lastModifiedDate');
  @override
  late final GeneratedColumn<DateTime> lastModifiedDate =
      GeneratedColumn<DateTime>('last_modified_date', aliasedName, false,
          type: DriftSqlType.dateTime,
          requiredDuringInsert: false,
          defaultValue: currentDateAndTime);
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  static const VerificationMeta _templatePathMeta =
      const VerificationMeta('templatePath');
  @override
  late final GeneratedColumn<String> templatePath = GeneratedColumn<String>(
      'template_path', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _submissionMeta =
      const VerificationMeta('submission');
  @override
  late final GeneratedColumn<String> submission = GeneratedColumn<String>(
      'submission', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES data_submissions (id)'));
  static const VerificationMeta _parentMeta = const VerificationMeta('parent');
  @override
  late final GeneratedColumn<String> parent = GeneratedColumn<String>(
      'parent', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES repeat_instances (id)'));
  static const VerificationMeta _repeatIndexMeta =
      const VerificationMeta('repeatIndex');
  @override
  late final GeneratedColumn<int> repeatIndex = GeneratedColumn<int>(
      'repeat_index', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        lastModifiedDate,
        createdDate,
        templatePath,
        submission,
        parent,
        repeatIndex
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'repeat_instances';
  @override
  VerificationContext validateIntegrity(Insertable<RepeatInstance> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('last_modified_date')) {
      context.handle(
          _lastModifiedDateMeta,
          lastModifiedDate.isAcceptableOrUnknown(
              data['last_modified_date']!, _lastModifiedDateMeta));
    }
    if (data.containsKey('created_date')) {
      context.handle(
          _createdDateMeta,
          createdDate.isAcceptableOrUnknown(
              data['created_date']!, _createdDateMeta));
    }
    if (data.containsKey('template_path')) {
      context.handle(
          _templatePathMeta,
          templatePath.isAcceptableOrUnknown(
              data['template_path']!, _templatePathMeta));
    } else if (isInserting) {
      context.missing(_templatePathMeta);
    }
    if (data.containsKey('submission')) {
      context.handle(
          _submissionMeta,
          submission.isAcceptableOrUnknown(
              data['submission']!, _submissionMeta));
    } else if (isInserting) {
      context.missing(_submissionMeta);
    }
    if (data.containsKey('parent')) {
      context.handle(_parentMeta,
          parent.isAcceptableOrUnknown(data['parent']!, _parentMeta));
    }
    if (data.containsKey('repeat_index')) {
      context.handle(
          _repeatIndexMeta,
          repeatIndex.isAcceptableOrUnknown(
              data['repeat_index']!, _repeatIndexMeta));
    } else if (isInserting) {
      context.missing(_repeatIndexMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RepeatInstance map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RepeatInstance(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      lastModifiedDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}last_modified_date'])!,
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date'])!,
      templatePath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}template_path'])!,
      submission: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}submission'])!,
      parent: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}parent']),
      repeatIndex: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}repeat_index'])!,
    );
  }

  @override
  $RepeatInstancesTable createAlias(String alias) {
    return $RepeatInstancesTable(attachedDatabase, alias);
  }
}

class RepeatInstance extends DataClass implements Insertable<RepeatInstance> {
  final String id;
  final DateTime lastModifiedDate;
  final DateTime createdDate;

  /// Path of the Repeat in the FormTemplate (non-null)
  final String templatePath;
  final String submission;

  /// reference to nearest parent RepeatInstance (nullable)
  final String? parent;

  /// Repeat index for order and identity (non-null)
  final int repeatIndex;
  const RepeatInstance(
      {required this.id,
      required this.lastModifiedDate,
      required this.createdDate,
      required this.templatePath,
      required this.submission,
      this.parent,
      required this.repeatIndex});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['last_modified_date'] = Variable<DateTime>(lastModifiedDate);
    map['created_date'] = Variable<DateTime>(createdDate);
    map['template_path'] = Variable<String>(templatePath);
    map['submission'] = Variable<String>(submission);
    if (!nullToAbsent || parent != null) {
      map['parent'] = Variable<String>(parent);
    }
    map['repeat_index'] = Variable<int>(repeatIndex);
    return map;
  }

  RepeatInstancesCompanion toCompanion(bool nullToAbsent) {
    return RepeatInstancesCompanion(
      id: Value(id),
      lastModifiedDate: Value(lastModifiedDate),
      createdDate: Value(createdDate),
      templatePath: Value(templatePath),
      submission: Value(submission),
      parent:
          parent == null && nullToAbsent ? const Value.absent() : Value(parent),
      repeatIndex: Value(repeatIndex),
    );
  }

  factory RepeatInstance.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RepeatInstance(
      id: serializer.fromJson<String>(json['id']),
      lastModifiedDate: serializer.fromJson<DateTime>(json['lastModifiedDate']),
      createdDate: serializer.fromJson<DateTime>(json['createdDate']),
      templatePath: serializer.fromJson<String>(json['templatePath']),
      submission: serializer.fromJson<String>(json['submission']),
      parent: serializer.fromJson<String?>(json['parent']),
      repeatIndex: serializer.fromJson<int>(json['repeatIndex']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'lastModifiedDate': serializer.toJson<DateTime>(lastModifiedDate),
      'createdDate': serializer.toJson<DateTime>(createdDate),
      'templatePath': serializer.toJson<String>(templatePath),
      'submission': serializer.toJson<String>(submission),
      'parent': serializer.toJson<String?>(parent),
      'repeatIndex': serializer.toJson<int>(repeatIndex),
    };
  }

  RepeatInstance copyWith(
          {String? id,
          DateTime? lastModifiedDate,
          DateTime? createdDate,
          String? templatePath,
          String? submission,
          Value<String?> parent = const Value.absent(),
          int? repeatIndex}) =>
      RepeatInstance(
        id: id ?? this.id,
        lastModifiedDate: lastModifiedDate ?? this.lastModifiedDate,
        createdDate: createdDate ?? this.createdDate,
        templatePath: templatePath ?? this.templatePath,
        submission: submission ?? this.submission,
        parent: parent.present ? parent.value : this.parent,
        repeatIndex: repeatIndex ?? this.repeatIndex,
      );
  RepeatInstance copyWithCompanion(RepeatInstancesCompanion data) {
    return RepeatInstance(
      id: data.id.present ? data.id.value : this.id,
      lastModifiedDate: data.lastModifiedDate.present
          ? data.lastModifiedDate.value
          : this.lastModifiedDate,
      createdDate:
          data.createdDate.present ? data.createdDate.value : this.createdDate,
      templatePath: data.templatePath.present
          ? data.templatePath.value
          : this.templatePath,
      submission:
          data.submission.present ? data.submission.value : this.submission,
      parent: data.parent.present ? data.parent.value : this.parent,
      repeatIndex:
          data.repeatIndex.present ? data.repeatIndex.value : this.repeatIndex,
    );
  }

  @override
  String toString() {
    return (StringBuffer('RepeatInstance(')
          ..write('id: $id, ')
          ..write('lastModifiedDate: $lastModifiedDate, ')
          ..write('createdDate: $createdDate, ')
          ..write('templatePath: $templatePath, ')
          ..write('submission: $submission, ')
          ..write('parent: $parent, ')
          ..write('repeatIndex: $repeatIndex')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, lastModifiedDate, createdDate,
      templatePath, submission, parent, repeatIndex);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RepeatInstance &&
          other.id == this.id &&
          other.lastModifiedDate == this.lastModifiedDate &&
          other.createdDate == this.createdDate &&
          other.templatePath == this.templatePath &&
          other.submission == this.submission &&
          other.parent == this.parent &&
          other.repeatIndex == this.repeatIndex);
}

class RepeatInstancesCompanion extends UpdateCompanion<RepeatInstance> {
  final Value<String> id;
  final Value<DateTime> lastModifiedDate;
  final Value<DateTime> createdDate;
  final Value<String> templatePath;
  final Value<String> submission;
  final Value<String?> parent;
  final Value<int> repeatIndex;
  final Value<int> rowid;
  const RepeatInstancesCompanion({
    this.id = const Value.absent(),
    this.lastModifiedDate = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.templatePath = const Value.absent(),
    this.submission = const Value.absent(),
    this.parent = const Value.absent(),
    this.repeatIndex = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  RepeatInstancesCompanion.insert({
    required String id,
    this.lastModifiedDate = const Value.absent(),
    this.createdDate = const Value.absent(),
    required String templatePath,
    required String submission,
    this.parent = const Value.absent(),
    required int repeatIndex,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        templatePath = Value(templatePath),
        submission = Value(submission),
        repeatIndex = Value(repeatIndex);
  static Insertable<RepeatInstance> custom({
    Expression<String>? id,
    Expression<DateTime>? lastModifiedDate,
    Expression<DateTime>? createdDate,
    Expression<String>? templatePath,
    Expression<String>? submission,
    Expression<String>? parent,
    Expression<int>? repeatIndex,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (lastModifiedDate != null) 'last_modified_date': lastModifiedDate,
      if (createdDate != null) 'created_date': createdDate,
      if (templatePath != null) 'template_path': templatePath,
      if (submission != null) 'submission': submission,
      if (parent != null) 'parent': parent,
      if (repeatIndex != null) 'repeat_index': repeatIndex,
      if (rowid != null) 'rowid': rowid,
    });
  }

  RepeatInstancesCompanion copyWith(
      {Value<String>? id,
      Value<DateTime>? lastModifiedDate,
      Value<DateTime>? createdDate,
      Value<String>? templatePath,
      Value<String>? submission,
      Value<String?>? parent,
      Value<int>? repeatIndex,
      Value<int>? rowid}) {
    return RepeatInstancesCompanion(
      id: id ?? this.id,
      lastModifiedDate: lastModifiedDate ?? this.lastModifiedDate,
      createdDate: createdDate ?? this.createdDate,
      templatePath: templatePath ?? this.templatePath,
      submission: submission ?? this.submission,
      parent: parent ?? this.parent,
      repeatIndex: repeatIndex ?? this.repeatIndex,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (lastModifiedDate.present) {
      map['last_modified_date'] = Variable<DateTime>(lastModifiedDate.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (templatePath.present) {
      map['template_path'] = Variable<String>(templatePath.value);
    }
    if (submission.present) {
      map['submission'] = Variable<String>(submission.value);
    }
    if (parent.present) {
      map['parent'] = Variable<String>(parent.value);
    }
    if (repeatIndex.present) {
      map['repeat_index'] = Variable<int>(repeatIndex.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RepeatInstancesCompanion(')
          ..write('id: $id, ')
          ..write('lastModifiedDate: $lastModifiedDate, ')
          ..write('createdDate: $createdDate, ')
          ..write('templatePath: $templatePath, ')
          ..write('submission: $submission, ')
          ..write('parent: $parent, ')
          ..write('repeatIndex: $repeatIndex, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $DataElementsTable extends DataElements
    with TableInfo<$DataElementsTable, DataElement> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DataElementsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lastModifiedDateMeta =
      const VerificationMeta('lastModifiedDate');
  @override
  late final GeneratedColumn<DateTime> lastModifiedDate =
      GeneratedColumn<DateTime>('last_modified_date', aliasedName, false,
          type: DriftSqlType.dateTime,
          requiredDuringInsert: false,
          defaultValue: currentDateAndTime);
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _displayNameMeta =
      const VerificationMeta('displayName');
  @override
  late final GeneratedColumn<String> displayName = GeneratedColumn<String>(
      'display_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String> code = GeneratedColumn<String>(
      'code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _translationsMeta =
      const VerificationMeta('translations');
  @override
  late final GeneratedColumnWithTypeConverter<List<Translation>?, String>
      translations = GeneratedColumn<String>('translations', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<Translation>?>(
              $DataElementsTable.$convertertranslationsn);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumnWithTypeConverter<ValueType?, String> type =
      GeneratedColumn<String>('type', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<ValueType?>($DataElementsTable.$convertertypen);
  static const VerificationMeta _mandatoryMeta =
      const VerificationMeta('mandatory');
  @override
  late final GeneratedColumn<bool> mandatory = GeneratedColumn<bool>(
      'mandatory', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("mandatory" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _defaultValueMeta =
      const VerificationMeta('defaultValue');
  @override
  late final GeneratedColumn<String> defaultValue = GeneratedColumn<String>(
      'default_value', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _labelMeta = const VerificationMeta('label');
  @override
  late final GeneratedColumnWithTypeConverter<Map<String, String>, String>
      label = GeneratedColumn<String>('label', aliasedName, false,
              type: DriftSqlType.string,
              requiredDuringInsert: false,
              defaultValue: Constant('{}'))
          .withConverter<Map<String, String>>(
              $DataElementsTable.$converterlabel);
  static const VerificationMeta _scannedCodePropertiesMeta =
      const VerificationMeta('scannedCodeProperties');
  @override
  late final GeneratedColumnWithTypeConverter<ScannedCodeProperties?, String>
      scannedCodeProperties = GeneratedColumn<String>(
              'scanned_code_properties', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<ScannedCodeProperties?>(
              $DataElementsTable.$converterscannedCodeProperties);
  static const VerificationMeta _gs1EnabledMeta =
      const VerificationMeta('gs1Enabled');
  @override
  late final GeneratedColumn<bool> gs1Enabled = GeneratedColumn<bool>(
      'gs1_enabled', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("gs1_enabled" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _resourceTypeMeta =
      const VerificationMeta('resourceType');
  @override
  late final GeneratedColumnWithTypeConverter<MetadataResourceType?, String>
      resourceType = GeneratedColumn<String>('resource_type', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<MetadataResourceType?>(
              $DataElementsTable.$converterresourceTypen);
  static const VerificationMeta _resourceMetadataSchemaMeta =
      const VerificationMeta('resourceMetadataSchema');
  @override
  late final GeneratedColumn<String> resourceMetadataSchema =
      GeneratedColumn<String>('resource_metadata_schema', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        lastModifiedDate,
        createdDate,
        name,
        displayName,
        code,
        translations,
        description,
        type,
        mandatory,
        defaultValue,
        label,
        scannedCodeProperties,
        gs1Enabled,
        resourceType,
        resourceMetadataSchema
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'data_elements';
  @override
  VerificationContext validateIntegrity(Insertable<DataElement> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('last_modified_date')) {
      context.handle(
          _lastModifiedDateMeta,
          lastModifiedDate.isAcceptableOrUnknown(
              data['last_modified_date']!, _lastModifiedDateMeta));
    }
    if (data.containsKey('created_date')) {
      context.handle(
          _createdDateMeta,
          createdDate.isAcceptableOrUnknown(
              data['created_date']!, _createdDateMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('display_name')) {
      context.handle(
          _displayNameMeta,
          displayName.isAcceptableOrUnknown(
              data['display_name']!, _displayNameMeta));
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    }
    context.handle(_translationsMeta, const VerificationResult.success());
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    context.handle(_typeMeta, const VerificationResult.success());
    if (data.containsKey('mandatory')) {
      context.handle(_mandatoryMeta,
          mandatory.isAcceptableOrUnknown(data['mandatory']!, _mandatoryMeta));
    }
    if (data.containsKey('default_value')) {
      context.handle(
          _defaultValueMeta,
          defaultValue.isAcceptableOrUnknown(
              data['default_value']!, _defaultValueMeta));
    }
    context.handle(_labelMeta, const VerificationResult.success());
    context.handle(
        _scannedCodePropertiesMeta, const VerificationResult.success());
    if (data.containsKey('gs1_enabled')) {
      context.handle(
          _gs1EnabledMeta,
          gs1Enabled.isAcceptableOrUnknown(
              data['gs1_enabled']!, _gs1EnabledMeta));
    }
    context.handle(_resourceTypeMeta, const VerificationResult.success());
    if (data.containsKey('resource_metadata_schema')) {
      context.handle(
          _resourceMetadataSchemaMeta,
          resourceMetadataSchema.isAcceptableOrUnknown(
              data['resource_metadata_schema']!, _resourceMetadataSchemaMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DataElement map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DataElement(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      lastModifiedDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}last_modified_date'])!,
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      displayName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}display_name']),
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code']),
      translations: $DataElementsTable.$convertertranslationsn.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}translations'])),
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
      type: $DataElementsTable.$convertertypen.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type'])),
      mandatory: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}mandatory'])!,
      defaultValue: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}default_value']),
      label: $DataElementsTable.$converterlabel.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}label'])!),
      scannedCodeProperties: $DataElementsTable.$converterscannedCodeProperties
          .fromSql(attachedDatabase.typeMapping.read(DriftSqlType.string,
              data['${effectivePrefix}scanned_code_properties'])),
      gs1Enabled: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}gs1_enabled'])!,
      resourceType: $DataElementsTable.$converterresourceTypen.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}resource_type'])),
      resourceMetadataSchema: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}resource_metadata_schema']),
    );
  }

  @override
  $DataElementsTable createAlias(String alias) {
    return $DataElementsTable(attachedDatabase, alias);
  }

  static TypeConverter<List<Translation>, String> $convertertranslations =
      const TranslationConverter();
  static TypeConverter<List<Translation>?, String?> $convertertranslationsn =
      NullAwareTypeConverter.wrap($convertertranslations);
  static JsonTypeConverter2<ValueType, String, String> $convertertype =
      const EnumNameConverter(ValueType.values);
  static JsonTypeConverter2<ValueType?, String?, String?> $convertertypen =
      JsonTypeConverter2.asNullable($convertertype);
  static TypeConverter<Map<String, String>, String> $converterlabel =
      const MapConverter<String>();
  static JsonTypeConverter2<ScannedCodeProperties?, String?,
          Map<String, Object?>?> $converterscannedCodeProperties =
      const ScannedCodePropertiesConverter();
  static JsonTypeConverter2<MetadataResourceType, String, String>
      $converterresourceType =
      const EnumNameConverter(MetadataResourceType.values);
  static JsonTypeConverter2<MetadataResourceType?, String?, String?>
      $converterresourceTypen =
      JsonTypeConverter2.asNullable($converterresourceType);
}

class DataElement extends DataClass implements Insertable<DataElement> {
  final String id;
  final DateTime lastModifiedDate;
  final DateTime createdDate;
  final String? name;
  final String? displayName;
  final String? code;

  /// List of Translations
  final List<Translation>? translations;
  final String? description;
  final ValueType? type;

  /// Mandatory flag, defaulting to false.
  final bool mandatory;

  /// defaultValue stored as text (adjust converter if needed).
  final String? defaultValue;

  /// label is stored as JSON in a text column.
  final Map<String, String> label;

  /// scannedCodeProperties is stored as JSON.
  final ScannedCodeProperties? scannedCodeProperties;

  /// gs1Enabled flag, defaulting to false.
  final bool gs1Enabled;

  /// resourceType stored as text; we convert between MetadataResourceType and String.
  final MetadataResourceType? resourceType;

  /// resourceMetadataSchema stored as text.
  final String? resourceMetadataSchema;
  const DataElement(
      {required this.id,
      required this.lastModifiedDate,
      required this.createdDate,
      this.name,
      this.displayName,
      this.code,
      this.translations,
      this.description,
      this.type,
      required this.mandatory,
      this.defaultValue,
      required this.label,
      this.scannedCodeProperties,
      required this.gs1Enabled,
      this.resourceType,
      this.resourceMetadataSchema});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['last_modified_date'] = Variable<DateTime>(lastModifiedDate);
    map['created_date'] = Variable<DateTime>(createdDate);
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || displayName != null) {
      map['display_name'] = Variable<String>(displayName);
    }
    if (!nullToAbsent || code != null) {
      map['code'] = Variable<String>(code);
    }
    if (!nullToAbsent || translations != null) {
      map['translations'] = Variable<String>(
          $DataElementsTable.$convertertranslationsn.toSql(translations));
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || type != null) {
      map['type'] =
          Variable<String>($DataElementsTable.$convertertypen.toSql(type));
    }
    map['mandatory'] = Variable<bool>(mandatory);
    if (!nullToAbsent || defaultValue != null) {
      map['default_value'] = Variable<String>(defaultValue);
    }
    {
      map['label'] =
          Variable<String>($DataElementsTable.$converterlabel.toSql(label));
    }
    if (!nullToAbsent || scannedCodeProperties != null) {
      map['scanned_code_properties'] = Variable<String>($DataElementsTable
          .$converterscannedCodeProperties
          .toSql(scannedCodeProperties));
    }
    map['gs1_enabled'] = Variable<bool>(gs1Enabled);
    if (!nullToAbsent || resourceType != null) {
      map['resource_type'] = Variable<String>(
          $DataElementsTable.$converterresourceTypen.toSql(resourceType));
    }
    if (!nullToAbsent || resourceMetadataSchema != null) {
      map['resource_metadata_schema'] =
          Variable<String>(resourceMetadataSchema);
    }
    return map;
  }

  DataElementsCompanion toCompanion(bool nullToAbsent) {
    return DataElementsCompanion(
      id: Value(id),
      lastModifiedDate: Value(lastModifiedDate),
      createdDate: Value(createdDate),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      displayName: displayName == null && nullToAbsent
          ? const Value.absent()
          : Value(displayName),
      code: code == null && nullToAbsent ? const Value.absent() : Value(code),
      translations: translations == null && nullToAbsent
          ? const Value.absent()
          : Value(translations),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      type: type == null && nullToAbsent ? const Value.absent() : Value(type),
      mandatory: Value(mandatory),
      defaultValue: defaultValue == null && nullToAbsent
          ? const Value.absent()
          : Value(defaultValue),
      label: Value(label),
      scannedCodeProperties: scannedCodeProperties == null && nullToAbsent
          ? const Value.absent()
          : Value(scannedCodeProperties),
      gs1Enabled: Value(gs1Enabled),
      resourceType: resourceType == null && nullToAbsent
          ? const Value.absent()
          : Value(resourceType),
      resourceMetadataSchema: resourceMetadataSchema == null && nullToAbsent
          ? const Value.absent()
          : Value(resourceMetadataSchema),
    );
  }

  factory DataElement.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DataElement(
      id: serializer.fromJson<String>(json['id']),
      lastModifiedDate: serializer.fromJson<DateTime>(json['lastModifiedDate']),
      createdDate: serializer.fromJson<DateTime>(json['createdDate']),
      name: serializer.fromJson<String?>(json['name']),
      displayName: serializer.fromJson<String?>(json['displayName']),
      code: serializer.fromJson<String?>(json['code']),
      translations:
          serializer.fromJson<List<Translation>?>(json['translations']),
      description: serializer.fromJson<String?>(json['description']),
      type: $DataElementsTable.$convertertypen
          .fromJson(serializer.fromJson<String?>(json['type'])),
      mandatory: serializer.fromJson<bool>(json['mandatory']),
      defaultValue: serializer.fromJson<String?>(json['defaultValue']),
      label: serializer.fromJson<Map<String, String>>(json['label']),
      scannedCodeProperties: $DataElementsTable.$converterscannedCodeProperties
          .fromJson(serializer
              .fromJson<Map<String, Object?>?>(json['scannedCodeProperties'])),
      gs1Enabled: serializer.fromJson<bool>(json['gs1Enabled']),
      resourceType: $DataElementsTable.$converterresourceTypen
          .fromJson(serializer.fromJson<String?>(json['resourceType'])),
      resourceMetadataSchema:
          serializer.fromJson<String?>(json['resourceMetadataSchema']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'lastModifiedDate': serializer.toJson<DateTime>(lastModifiedDate),
      'createdDate': serializer.toJson<DateTime>(createdDate),
      'name': serializer.toJson<String?>(name),
      'displayName': serializer.toJson<String?>(displayName),
      'code': serializer.toJson<String?>(code),
      'translations': serializer.toJson<List<Translation>?>(translations),
      'description': serializer.toJson<String?>(description),
      'type': serializer
          .toJson<String?>($DataElementsTable.$convertertypen.toJson(type)),
      'mandatory': serializer.toJson<bool>(mandatory),
      'defaultValue': serializer.toJson<String?>(defaultValue),
      'label': serializer.toJson<Map<String, String>>(label),
      'scannedCodeProperties': serializer.toJson<Map<String, Object?>?>(
          $DataElementsTable.$converterscannedCodeProperties
              .toJson(scannedCodeProperties)),
      'gs1Enabled': serializer.toJson<bool>(gs1Enabled),
      'resourceType': serializer.toJson<String?>(
          $DataElementsTable.$converterresourceTypen.toJson(resourceType)),
      'resourceMetadataSchema':
          serializer.toJson<String?>(resourceMetadataSchema),
    };
  }

  DataElement copyWith(
          {String? id,
          DateTime? lastModifiedDate,
          DateTime? createdDate,
          Value<String?> name = const Value.absent(),
          Value<String?> displayName = const Value.absent(),
          Value<String?> code = const Value.absent(),
          Value<List<Translation>?> translations = const Value.absent(),
          Value<String?> description = const Value.absent(),
          Value<ValueType?> type = const Value.absent(),
          bool? mandatory,
          Value<String?> defaultValue = const Value.absent(),
          Map<String, String>? label,
          Value<ScannedCodeProperties?> scannedCodeProperties =
              const Value.absent(),
          bool? gs1Enabled,
          Value<MetadataResourceType?> resourceType = const Value.absent(),
          Value<String?> resourceMetadataSchema = const Value.absent()}) =>
      DataElement(
        id: id ?? this.id,
        lastModifiedDate: lastModifiedDate ?? this.lastModifiedDate,
        createdDate: createdDate ?? this.createdDate,
        name: name.present ? name.value : this.name,
        displayName: displayName.present ? displayName.value : this.displayName,
        code: code.present ? code.value : this.code,
        translations:
            translations.present ? translations.value : this.translations,
        description: description.present ? description.value : this.description,
        type: type.present ? type.value : this.type,
        mandatory: mandatory ?? this.mandatory,
        defaultValue:
            defaultValue.present ? defaultValue.value : this.defaultValue,
        label: label ?? this.label,
        scannedCodeProperties: scannedCodeProperties.present
            ? scannedCodeProperties.value
            : this.scannedCodeProperties,
        gs1Enabled: gs1Enabled ?? this.gs1Enabled,
        resourceType:
            resourceType.present ? resourceType.value : this.resourceType,
        resourceMetadataSchema: resourceMetadataSchema.present
            ? resourceMetadataSchema.value
            : this.resourceMetadataSchema,
      );
  DataElement copyWithCompanion(DataElementsCompanion data) {
    return DataElement(
      id: data.id.present ? data.id.value : this.id,
      lastModifiedDate: data.lastModifiedDate.present
          ? data.lastModifiedDate.value
          : this.lastModifiedDate,
      createdDate:
          data.createdDate.present ? data.createdDate.value : this.createdDate,
      name: data.name.present ? data.name.value : this.name,
      displayName:
          data.displayName.present ? data.displayName.value : this.displayName,
      code: data.code.present ? data.code.value : this.code,
      translations: data.translations.present
          ? data.translations.value
          : this.translations,
      description:
          data.description.present ? data.description.value : this.description,
      type: data.type.present ? data.type.value : this.type,
      mandatory: data.mandatory.present ? data.mandatory.value : this.mandatory,
      defaultValue: data.defaultValue.present
          ? data.defaultValue.value
          : this.defaultValue,
      label: data.label.present ? data.label.value : this.label,
      scannedCodeProperties: data.scannedCodeProperties.present
          ? data.scannedCodeProperties.value
          : this.scannedCodeProperties,
      gs1Enabled:
          data.gs1Enabled.present ? data.gs1Enabled.value : this.gs1Enabled,
      resourceType: data.resourceType.present
          ? data.resourceType.value
          : this.resourceType,
      resourceMetadataSchema: data.resourceMetadataSchema.present
          ? data.resourceMetadataSchema.value
          : this.resourceMetadataSchema,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DataElement(')
          ..write('id: $id, ')
          ..write('lastModifiedDate: $lastModifiedDate, ')
          ..write('createdDate: $createdDate, ')
          ..write('name: $name, ')
          ..write('displayName: $displayName, ')
          ..write('code: $code, ')
          ..write('translations: $translations, ')
          ..write('description: $description, ')
          ..write('type: $type, ')
          ..write('mandatory: $mandatory, ')
          ..write('defaultValue: $defaultValue, ')
          ..write('label: $label, ')
          ..write('scannedCodeProperties: $scannedCodeProperties, ')
          ..write('gs1Enabled: $gs1Enabled, ')
          ..write('resourceType: $resourceType, ')
          ..write('resourceMetadataSchema: $resourceMetadataSchema')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      lastModifiedDate,
      createdDate,
      name,
      displayName,
      code,
      translations,
      description,
      type,
      mandatory,
      defaultValue,
      label,
      scannedCodeProperties,
      gs1Enabled,
      resourceType,
      resourceMetadataSchema);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DataElement &&
          other.id == this.id &&
          other.lastModifiedDate == this.lastModifiedDate &&
          other.createdDate == this.createdDate &&
          other.name == this.name &&
          other.displayName == this.displayName &&
          other.code == this.code &&
          other.translations == this.translations &&
          other.description == this.description &&
          other.type == this.type &&
          other.mandatory == this.mandatory &&
          other.defaultValue == this.defaultValue &&
          other.label == this.label &&
          other.scannedCodeProperties == this.scannedCodeProperties &&
          other.gs1Enabled == this.gs1Enabled &&
          other.resourceType == this.resourceType &&
          other.resourceMetadataSchema == this.resourceMetadataSchema);
}

class DataElementsCompanion extends UpdateCompanion<DataElement> {
  final Value<String> id;
  final Value<DateTime> lastModifiedDate;
  final Value<DateTime> createdDate;
  final Value<String?> name;
  final Value<String?> displayName;
  final Value<String?> code;
  final Value<List<Translation>?> translations;
  final Value<String?> description;
  final Value<ValueType?> type;
  final Value<bool> mandatory;
  final Value<String?> defaultValue;
  final Value<Map<String, String>> label;
  final Value<ScannedCodeProperties?> scannedCodeProperties;
  final Value<bool> gs1Enabled;
  final Value<MetadataResourceType?> resourceType;
  final Value<String?> resourceMetadataSchema;
  final Value<int> rowid;
  const DataElementsCompanion({
    this.id = const Value.absent(),
    this.lastModifiedDate = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.name = const Value.absent(),
    this.displayName = const Value.absent(),
    this.code = const Value.absent(),
    this.translations = const Value.absent(),
    this.description = const Value.absent(),
    this.type = const Value.absent(),
    this.mandatory = const Value.absent(),
    this.defaultValue = const Value.absent(),
    this.label = const Value.absent(),
    this.scannedCodeProperties = const Value.absent(),
    this.gs1Enabled = const Value.absent(),
    this.resourceType = const Value.absent(),
    this.resourceMetadataSchema = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  DataElementsCompanion.insert({
    required String id,
    this.lastModifiedDate = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.name = const Value.absent(),
    this.displayName = const Value.absent(),
    this.code = const Value.absent(),
    this.translations = const Value.absent(),
    this.description = const Value.absent(),
    this.type = const Value.absent(),
    this.mandatory = const Value.absent(),
    this.defaultValue = const Value.absent(),
    this.label = const Value.absent(),
    this.scannedCodeProperties = const Value.absent(),
    this.gs1Enabled = const Value.absent(),
    this.resourceType = const Value.absent(),
    this.resourceMetadataSchema = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id);
  static Insertable<DataElement> custom({
    Expression<String>? id,
    Expression<DateTime>? lastModifiedDate,
    Expression<DateTime>? createdDate,
    Expression<String>? name,
    Expression<String>? displayName,
    Expression<String>? code,
    Expression<String>? translations,
    Expression<String>? description,
    Expression<String>? type,
    Expression<bool>? mandatory,
    Expression<String>? defaultValue,
    Expression<String>? label,
    Expression<String>? scannedCodeProperties,
    Expression<bool>? gs1Enabled,
    Expression<String>? resourceType,
    Expression<String>? resourceMetadataSchema,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (lastModifiedDate != null) 'last_modified_date': lastModifiedDate,
      if (createdDate != null) 'created_date': createdDate,
      if (name != null) 'name': name,
      if (displayName != null) 'display_name': displayName,
      if (code != null) 'code': code,
      if (translations != null) 'translations': translations,
      if (description != null) 'description': description,
      if (type != null) 'type': type,
      if (mandatory != null) 'mandatory': mandatory,
      if (defaultValue != null) 'default_value': defaultValue,
      if (label != null) 'label': label,
      if (scannedCodeProperties != null)
        'scanned_code_properties': scannedCodeProperties,
      if (gs1Enabled != null) 'gs1_enabled': gs1Enabled,
      if (resourceType != null) 'resource_type': resourceType,
      if (resourceMetadataSchema != null)
        'resource_metadata_schema': resourceMetadataSchema,
      if (rowid != null) 'rowid': rowid,
    });
  }

  DataElementsCompanion copyWith(
      {Value<String>? id,
      Value<DateTime>? lastModifiedDate,
      Value<DateTime>? createdDate,
      Value<String?>? name,
      Value<String?>? displayName,
      Value<String?>? code,
      Value<List<Translation>?>? translations,
      Value<String?>? description,
      Value<ValueType?>? type,
      Value<bool>? mandatory,
      Value<String?>? defaultValue,
      Value<Map<String, String>>? label,
      Value<ScannedCodeProperties?>? scannedCodeProperties,
      Value<bool>? gs1Enabled,
      Value<MetadataResourceType?>? resourceType,
      Value<String?>? resourceMetadataSchema,
      Value<int>? rowid}) {
    return DataElementsCompanion(
      id: id ?? this.id,
      lastModifiedDate: lastModifiedDate ?? this.lastModifiedDate,
      createdDate: createdDate ?? this.createdDate,
      name: name ?? this.name,
      displayName: displayName ?? this.displayName,
      code: code ?? this.code,
      translations: translations ?? this.translations,
      description: description ?? this.description,
      type: type ?? this.type,
      mandatory: mandatory ?? this.mandatory,
      defaultValue: defaultValue ?? this.defaultValue,
      label: label ?? this.label,
      scannedCodeProperties:
          scannedCodeProperties ?? this.scannedCodeProperties,
      gs1Enabled: gs1Enabled ?? this.gs1Enabled,
      resourceType: resourceType ?? this.resourceType,
      resourceMetadataSchema:
          resourceMetadataSchema ?? this.resourceMetadataSchema,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (lastModifiedDate.present) {
      map['last_modified_date'] = Variable<DateTime>(lastModifiedDate.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (displayName.present) {
      map['display_name'] = Variable<String>(displayName.value);
    }
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (translations.present) {
      map['translations'] = Variable<String>(
          $DataElementsTable.$convertertranslationsn.toSql(translations.value));
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(
          $DataElementsTable.$convertertypen.toSql(type.value));
    }
    if (mandatory.present) {
      map['mandatory'] = Variable<bool>(mandatory.value);
    }
    if (defaultValue.present) {
      map['default_value'] = Variable<String>(defaultValue.value);
    }
    if (label.present) {
      map['label'] = Variable<String>(
          $DataElementsTable.$converterlabel.toSql(label.value));
    }
    if (scannedCodeProperties.present) {
      map['scanned_code_properties'] = Variable<String>($DataElementsTable
          .$converterscannedCodeProperties
          .toSql(scannedCodeProperties.value));
    }
    if (gs1Enabled.present) {
      map['gs1_enabled'] = Variable<bool>(gs1Enabled.value);
    }
    if (resourceType.present) {
      map['resource_type'] = Variable<String>(
          $DataElementsTable.$converterresourceTypen.toSql(resourceType.value));
    }
    if (resourceMetadataSchema.present) {
      map['resource_metadata_schema'] =
          Variable<String>(resourceMetadataSchema.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DataElementsCompanion(')
          ..write('id: $id, ')
          ..write('lastModifiedDate: $lastModifiedDate, ')
          ..write('createdDate: $createdDate, ')
          ..write('name: $name, ')
          ..write('displayName: $displayName, ')
          ..write('code: $code, ')
          ..write('translations: $translations, ')
          ..write('description: $description, ')
          ..write('type: $type, ')
          ..write('mandatory: $mandatory, ')
          ..write('defaultValue: $defaultValue, ')
          ..write('label: $label, ')
          ..write('scannedCodeProperties: $scannedCodeProperties, ')
          ..write('gs1Enabled: $gs1Enabled, ')
          ..write('resourceType: $resourceType, ')
          ..write('resourceMetadataSchema: $resourceMetadataSchema, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $DataValuesTable extends DataValues
    with TableInfo<$DataValuesTable, DataValue> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DataValuesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lastModifiedDateMeta =
      const VerificationMeta('lastModifiedDate');
  @override
  late final GeneratedColumn<DateTime> lastModifiedDate =
      GeneratedColumn<DateTime>('last_modified_date', aliasedName, false,
          type: DriftSqlType.dateTime,
          requiredDuringInsert: false,
          defaultValue: currentDateAndTime);
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  static const VerificationMeta _templatePathMeta =
      const VerificationMeta('templatePath');
  @override
  late final GeneratedColumn<String> templatePath = GeneratedColumn<String>(
      'template_path', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _parentMeta = const VerificationMeta('parent');
  @override
  late final GeneratedColumn<String> parent = GeneratedColumn<String>(
      'parent', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES repeat_instances (id)'));
  static const VerificationMeta _submissionMeta =
      const VerificationMeta('submission');
  @override
  late final GeneratedColumn<String> submission = GeneratedColumn<String>(
      'submission', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES data_submissions (id)'));
  static const VerificationMeta _dataElementMeta =
      const VerificationMeta('dataElement');
  @override
  late final GeneratedColumn<String> dataElement = GeneratedColumn<String>(
      'data_element', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES data_elements (id)'));
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<String> value = GeneratedColumn<String>(
      'value', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        lastModifiedDate,
        createdDate,
        templatePath,
        parent,
        submission,
        dataElement,
        value
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'data_values';
  @override
  VerificationContext validateIntegrity(Insertable<DataValue> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('last_modified_date')) {
      context.handle(
          _lastModifiedDateMeta,
          lastModifiedDate.isAcceptableOrUnknown(
              data['last_modified_date']!, _lastModifiedDateMeta));
    }
    if (data.containsKey('created_date')) {
      context.handle(
          _createdDateMeta,
          createdDate.isAcceptableOrUnknown(
              data['created_date']!, _createdDateMeta));
    }
    if (data.containsKey('template_path')) {
      context.handle(
          _templatePathMeta,
          templatePath.isAcceptableOrUnknown(
              data['template_path']!, _templatePathMeta));
    } else if (isInserting) {
      context.missing(_templatePathMeta);
    }
    if (data.containsKey('parent')) {
      context.handle(_parentMeta,
          parent.isAcceptableOrUnknown(data['parent']!, _parentMeta));
    }
    if (data.containsKey('submission')) {
      context.handle(
          _submissionMeta,
          submission.isAcceptableOrUnknown(
              data['submission']!, _submissionMeta));
    } else if (isInserting) {
      context.missing(_submissionMeta);
    }
    if (data.containsKey('data_element')) {
      context.handle(
          _dataElementMeta,
          dataElement.isAcceptableOrUnknown(
              data['data_element']!, _dataElementMeta));
    } else if (isInserting) {
      context.missing(_dataElementMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DataValue map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DataValue(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      lastModifiedDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}last_modified_date'])!,
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date'])!,
      templatePath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}template_path'])!,
      parent: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}parent']),
      submission: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}submission'])!,
      dataElement: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}data_element'])!,
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}value']),
    );
  }

  @override
  $DataValuesTable createAlias(String alias) {
    return $DataValuesTable(attachedDatabase, alias);
  }
}

class DataValue extends DataClass implements Insertable<DataValue> {
  final String id;
  final DateTime lastModifiedDate;
  final DateTime createdDate;

  /// Path of the Repeat in the FormTemplate – non-null.
  final String templatePath;

  /// Reference to the parent RepeatInstance (nullable).
  final String? parent;

  /// Reference to the root submission – non-null.
  final String submission;

  /// Data element identifier – non-null.
  final String dataElement;

  /// The value is stored as TEXT. If needed, a converter could be added for lists.
  final String? value;
  const DataValue(
      {required this.id,
      required this.lastModifiedDate,
      required this.createdDate,
      required this.templatePath,
      this.parent,
      required this.submission,
      required this.dataElement,
      this.value});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['last_modified_date'] = Variable<DateTime>(lastModifiedDate);
    map['created_date'] = Variable<DateTime>(createdDate);
    map['template_path'] = Variable<String>(templatePath);
    if (!nullToAbsent || parent != null) {
      map['parent'] = Variable<String>(parent);
    }
    map['submission'] = Variable<String>(submission);
    map['data_element'] = Variable<String>(dataElement);
    if (!nullToAbsent || value != null) {
      map['value'] = Variable<String>(value);
    }
    return map;
  }

  DataValuesCompanion toCompanion(bool nullToAbsent) {
    return DataValuesCompanion(
      id: Value(id),
      lastModifiedDate: Value(lastModifiedDate),
      createdDate: Value(createdDate),
      templatePath: Value(templatePath),
      parent:
          parent == null && nullToAbsent ? const Value.absent() : Value(parent),
      submission: Value(submission),
      dataElement: Value(dataElement),
      value:
          value == null && nullToAbsent ? const Value.absent() : Value(value),
    );
  }

  factory DataValue.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DataValue(
      id: serializer.fromJson<String>(json['id']),
      lastModifiedDate: serializer.fromJson<DateTime>(json['lastModifiedDate']),
      createdDate: serializer.fromJson<DateTime>(json['createdDate']),
      templatePath: serializer.fromJson<String>(json['templatePath']),
      parent: serializer.fromJson<String?>(json['parent']),
      submission: serializer.fromJson<String>(json['submission']),
      dataElement: serializer.fromJson<String>(json['dataElement']),
      value: serializer.fromJson<String?>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'lastModifiedDate': serializer.toJson<DateTime>(lastModifiedDate),
      'createdDate': serializer.toJson<DateTime>(createdDate),
      'templatePath': serializer.toJson<String>(templatePath),
      'parent': serializer.toJson<String?>(parent),
      'submission': serializer.toJson<String>(submission),
      'dataElement': serializer.toJson<String>(dataElement),
      'value': serializer.toJson<String?>(value),
    };
  }

  DataValue copyWith(
          {String? id,
          DateTime? lastModifiedDate,
          DateTime? createdDate,
          String? templatePath,
          Value<String?> parent = const Value.absent(),
          String? submission,
          String? dataElement,
          Value<String?> value = const Value.absent()}) =>
      DataValue(
        id: id ?? this.id,
        lastModifiedDate: lastModifiedDate ?? this.lastModifiedDate,
        createdDate: createdDate ?? this.createdDate,
        templatePath: templatePath ?? this.templatePath,
        parent: parent.present ? parent.value : this.parent,
        submission: submission ?? this.submission,
        dataElement: dataElement ?? this.dataElement,
        value: value.present ? value.value : this.value,
      );
  DataValue copyWithCompanion(DataValuesCompanion data) {
    return DataValue(
      id: data.id.present ? data.id.value : this.id,
      lastModifiedDate: data.lastModifiedDate.present
          ? data.lastModifiedDate.value
          : this.lastModifiedDate,
      createdDate:
          data.createdDate.present ? data.createdDate.value : this.createdDate,
      templatePath: data.templatePath.present
          ? data.templatePath.value
          : this.templatePath,
      parent: data.parent.present ? data.parent.value : this.parent,
      submission:
          data.submission.present ? data.submission.value : this.submission,
      dataElement:
          data.dataElement.present ? data.dataElement.value : this.dataElement,
      value: data.value.present ? data.value.value : this.value,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DataValue(')
          ..write('id: $id, ')
          ..write('lastModifiedDate: $lastModifiedDate, ')
          ..write('createdDate: $createdDate, ')
          ..write('templatePath: $templatePath, ')
          ..write('parent: $parent, ')
          ..write('submission: $submission, ')
          ..write('dataElement: $dataElement, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, lastModifiedDate, createdDate,
      templatePath, parent, submission, dataElement, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DataValue &&
          other.id == this.id &&
          other.lastModifiedDate == this.lastModifiedDate &&
          other.createdDate == this.createdDate &&
          other.templatePath == this.templatePath &&
          other.parent == this.parent &&
          other.submission == this.submission &&
          other.dataElement == this.dataElement &&
          other.value == this.value);
}

class DataValuesCompanion extends UpdateCompanion<DataValue> {
  final Value<String> id;
  final Value<DateTime> lastModifiedDate;
  final Value<DateTime> createdDate;
  final Value<String> templatePath;
  final Value<String?> parent;
  final Value<String> submission;
  final Value<String> dataElement;
  final Value<String?> value;
  final Value<int> rowid;
  const DataValuesCompanion({
    this.id = const Value.absent(),
    this.lastModifiedDate = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.templatePath = const Value.absent(),
    this.parent = const Value.absent(),
    this.submission = const Value.absent(),
    this.dataElement = const Value.absent(),
    this.value = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  DataValuesCompanion.insert({
    required String id,
    this.lastModifiedDate = const Value.absent(),
    this.createdDate = const Value.absent(),
    required String templatePath,
    this.parent = const Value.absent(),
    required String submission,
    required String dataElement,
    this.value = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        templatePath = Value(templatePath),
        submission = Value(submission),
        dataElement = Value(dataElement);
  static Insertable<DataValue> custom({
    Expression<String>? id,
    Expression<DateTime>? lastModifiedDate,
    Expression<DateTime>? createdDate,
    Expression<String>? templatePath,
    Expression<String>? parent,
    Expression<String>? submission,
    Expression<String>? dataElement,
    Expression<String>? value,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (lastModifiedDate != null) 'last_modified_date': lastModifiedDate,
      if (createdDate != null) 'created_date': createdDate,
      if (templatePath != null) 'template_path': templatePath,
      if (parent != null) 'parent': parent,
      if (submission != null) 'submission': submission,
      if (dataElement != null) 'data_element': dataElement,
      if (value != null) 'value': value,
      if (rowid != null) 'rowid': rowid,
    });
  }

  DataValuesCompanion copyWith(
      {Value<String>? id,
      Value<DateTime>? lastModifiedDate,
      Value<DateTime>? createdDate,
      Value<String>? templatePath,
      Value<String?>? parent,
      Value<String>? submission,
      Value<String>? dataElement,
      Value<String?>? value,
      Value<int>? rowid}) {
    return DataValuesCompanion(
      id: id ?? this.id,
      lastModifiedDate: lastModifiedDate ?? this.lastModifiedDate,
      createdDate: createdDate ?? this.createdDate,
      templatePath: templatePath ?? this.templatePath,
      parent: parent ?? this.parent,
      submission: submission ?? this.submission,
      dataElement: dataElement ?? this.dataElement,
      value: value ?? this.value,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (lastModifiedDate.present) {
      map['last_modified_date'] = Variable<DateTime>(lastModifiedDate.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (templatePath.present) {
      map['template_path'] = Variable<String>(templatePath.value);
    }
    if (parent.present) {
      map['parent'] = Variable<String>(parent.value);
    }
    if (submission.present) {
      map['submission'] = Variable<String>(submission.value);
    }
    if (dataElement.present) {
      map['data_element'] = Variable<String>(dataElement.value);
    }
    if (value.present) {
      map['value'] = Variable<String>(value.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DataValuesCompanion(')
          ..write('id: $id, ')
          ..write('lastModifiedDate: $lastModifiedDate, ')
          ..write('createdDate: $createdDate, ')
          ..write('templatePath: $templatePath, ')
          ..write('parent: $parent, ')
          ..write('submission: $submission, ')
          ..write('dataElement: $dataElement, ')
          ..write('value: $value, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $DataOptionSetsTable extends DataOptionSets
    with TableInfo<$DataOptionSetsTable, DataOptionSet> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DataOptionSetsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lastModifiedDateMeta =
      const VerificationMeta('lastModifiedDate');
  @override
  late final GeneratedColumn<DateTime> lastModifiedDate =
      GeneratedColumn<DateTime>('last_modified_date', aliasedName, false,
          type: DriftSqlType.dateTime,
          requiredDuringInsert: false,
          defaultValue: currentDateAndTime);
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _displayNameMeta =
      const VerificationMeta('displayName');
  @override
  late final GeneratedColumn<String> displayName = GeneratedColumn<String>(
      'display_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String> code = GeneratedColumn<String>(
      'code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _translationsMeta =
      const VerificationMeta('translations');
  @override
  late final GeneratedColumnWithTypeConverter<List<Translation>?, String>
      translations = GeneratedColumn<String>('translations', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<Translation>?>(
              $DataOptionSetsTable.$convertertranslationsn);
  static const VerificationMeta _optionsMeta =
      const VerificationMeta('options');
  @override
  late final GeneratedColumnWithTypeConverter<List<FormOption>?, String>
      options = GeneratedColumn<String>('options', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<FormOption>?>(
              $DataOptionSetsTable.$converteroptionsn);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        lastModifiedDate,
        createdDate,
        name,
        displayName,
        code,
        translations,
        options
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'data_option_sets';
  @override
  VerificationContext validateIntegrity(Insertable<DataOptionSet> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('last_modified_date')) {
      context.handle(
          _lastModifiedDateMeta,
          lastModifiedDate.isAcceptableOrUnknown(
              data['last_modified_date']!, _lastModifiedDateMeta));
    }
    if (data.containsKey('created_date')) {
      context.handle(
          _createdDateMeta,
          createdDate.isAcceptableOrUnknown(
              data['created_date']!, _createdDateMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('display_name')) {
      context.handle(
          _displayNameMeta,
          displayName.isAcceptableOrUnknown(
              data['display_name']!, _displayNameMeta));
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    }
    context.handle(_translationsMeta, const VerificationResult.success());
    context.handle(_optionsMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DataOptionSet map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DataOptionSet(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      lastModifiedDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}last_modified_date'])!,
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      displayName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}display_name']),
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code']),
      translations: $DataOptionSetsTable.$convertertranslationsn.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}translations'])),
      options: $DataOptionSetsTable.$converteroptionsn.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}options'])),
    );
  }

  @override
  $DataOptionSetsTable createAlias(String alias) {
    return $DataOptionSetsTable(attachedDatabase, alias);
  }

  static TypeConverter<List<Translation>, String> $convertertranslations =
      const TranslationConverter();
  static TypeConverter<List<Translation>?, String?> $convertertranslationsn =
      NullAwareTypeConverter.wrap($convertertranslations);
  static TypeConverter<List<FormOption>, String> $converteroptions =
      const FormOptionListConverter();
  static TypeConverter<List<FormOption>?, String?> $converteroptionsn =
      NullAwareTypeConverter.wrap($converteroptions);
}

class DataOptionSet extends DataClass implements Insertable<DataOptionSet> {
  final String id;
  final DateTime lastModifiedDate;
  final DateTime createdDate;
  final String? name;
  final String? displayName;
  final String? code;

  /// List of Translations
  final List<Translation>? translations;
  final List<FormOption>? options;
  const DataOptionSet(
      {required this.id,
      required this.lastModifiedDate,
      required this.createdDate,
      this.name,
      this.displayName,
      this.code,
      this.translations,
      this.options});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['last_modified_date'] = Variable<DateTime>(lastModifiedDate);
    map['created_date'] = Variable<DateTime>(createdDate);
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || displayName != null) {
      map['display_name'] = Variable<String>(displayName);
    }
    if (!nullToAbsent || code != null) {
      map['code'] = Variable<String>(code);
    }
    if (!nullToAbsent || translations != null) {
      map['translations'] = Variable<String>(
          $DataOptionSetsTable.$convertertranslationsn.toSql(translations));
    }
    if (!nullToAbsent || options != null) {
      map['options'] = Variable<String>(
          $DataOptionSetsTable.$converteroptionsn.toSql(options));
    }
    return map;
  }

  DataOptionSetsCompanion toCompanion(bool nullToAbsent) {
    return DataOptionSetsCompanion(
      id: Value(id),
      lastModifiedDate: Value(lastModifiedDate),
      createdDate: Value(createdDate),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      displayName: displayName == null && nullToAbsent
          ? const Value.absent()
          : Value(displayName),
      code: code == null && nullToAbsent ? const Value.absent() : Value(code),
      translations: translations == null && nullToAbsent
          ? const Value.absent()
          : Value(translations),
      options: options == null && nullToAbsent
          ? const Value.absent()
          : Value(options),
    );
  }

  factory DataOptionSet.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DataOptionSet(
      id: serializer.fromJson<String>(json['id']),
      lastModifiedDate: serializer.fromJson<DateTime>(json['lastModifiedDate']),
      createdDate: serializer.fromJson<DateTime>(json['createdDate']),
      name: serializer.fromJson<String?>(json['name']),
      displayName: serializer.fromJson<String?>(json['displayName']),
      code: serializer.fromJson<String?>(json['code']),
      translations:
          serializer.fromJson<List<Translation>?>(json['translations']),
      options: serializer.fromJson<List<FormOption>?>(json['options']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'lastModifiedDate': serializer.toJson<DateTime>(lastModifiedDate),
      'createdDate': serializer.toJson<DateTime>(createdDate),
      'name': serializer.toJson<String?>(name),
      'displayName': serializer.toJson<String?>(displayName),
      'code': serializer.toJson<String?>(code),
      'translations': serializer.toJson<List<Translation>?>(translations),
      'options': serializer.toJson<List<FormOption>?>(options),
    };
  }

  DataOptionSet copyWith(
          {String? id,
          DateTime? lastModifiedDate,
          DateTime? createdDate,
          Value<String?> name = const Value.absent(),
          Value<String?> displayName = const Value.absent(),
          Value<String?> code = const Value.absent(),
          Value<List<Translation>?> translations = const Value.absent(),
          Value<List<FormOption>?> options = const Value.absent()}) =>
      DataOptionSet(
        id: id ?? this.id,
        lastModifiedDate: lastModifiedDate ?? this.lastModifiedDate,
        createdDate: createdDate ?? this.createdDate,
        name: name.present ? name.value : this.name,
        displayName: displayName.present ? displayName.value : this.displayName,
        code: code.present ? code.value : this.code,
        translations:
            translations.present ? translations.value : this.translations,
        options: options.present ? options.value : this.options,
      );
  DataOptionSet copyWithCompanion(DataOptionSetsCompanion data) {
    return DataOptionSet(
      id: data.id.present ? data.id.value : this.id,
      lastModifiedDate: data.lastModifiedDate.present
          ? data.lastModifiedDate.value
          : this.lastModifiedDate,
      createdDate:
          data.createdDate.present ? data.createdDate.value : this.createdDate,
      name: data.name.present ? data.name.value : this.name,
      displayName:
          data.displayName.present ? data.displayName.value : this.displayName,
      code: data.code.present ? data.code.value : this.code,
      translations: data.translations.present
          ? data.translations.value
          : this.translations,
      options: data.options.present ? data.options.value : this.options,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DataOptionSet(')
          ..write('id: $id, ')
          ..write('lastModifiedDate: $lastModifiedDate, ')
          ..write('createdDate: $createdDate, ')
          ..write('name: $name, ')
          ..write('displayName: $displayName, ')
          ..write('code: $code, ')
          ..write('translations: $translations, ')
          ..write('options: $options')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, lastModifiedDate, createdDate, name,
      displayName, code, translations, options);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DataOptionSet &&
          other.id == this.id &&
          other.lastModifiedDate == this.lastModifiedDate &&
          other.createdDate == this.createdDate &&
          other.name == this.name &&
          other.displayName == this.displayName &&
          other.code == this.code &&
          other.translations == this.translations &&
          other.options == this.options);
}

class DataOptionSetsCompanion extends UpdateCompanion<DataOptionSet> {
  final Value<String> id;
  final Value<DateTime> lastModifiedDate;
  final Value<DateTime> createdDate;
  final Value<String?> name;
  final Value<String?> displayName;
  final Value<String?> code;
  final Value<List<Translation>?> translations;
  final Value<List<FormOption>?> options;
  final Value<int> rowid;
  const DataOptionSetsCompanion({
    this.id = const Value.absent(),
    this.lastModifiedDate = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.name = const Value.absent(),
    this.displayName = const Value.absent(),
    this.code = const Value.absent(),
    this.translations = const Value.absent(),
    this.options = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  DataOptionSetsCompanion.insert({
    required String id,
    this.lastModifiedDate = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.name = const Value.absent(),
    this.displayName = const Value.absent(),
    this.code = const Value.absent(),
    this.translations = const Value.absent(),
    this.options = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id);
  static Insertable<DataOptionSet> custom({
    Expression<String>? id,
    Expression<DateTime>? lastModifiedDate,
    Expression<DateTime>? createdDate,
    Expression<String>? name,
    Expression<String>? displayName,
    Expression<String>? code,
    Expression<String>? translations,
    Expression<String>? options,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (lastModifiedDate != null) 'last_modified_date': lastModifiedDate,
      if (createdDate != null) 'created_date': createdDate,
      if (name != null) 'name': name,
      if (displayName != null) 'display_name': displayName,
      if (code != null) 'code': code,
      if (translations != null) 'translations': translations,
      if (options != null) 'options': options,
      if (rowid != null) 'rowid': rowid,
    });
  }

  DataOptionSetsCompanion copyWith(
      {Value<String>? id,
      Value<DateTime>? lastModifiedDate,
      Value<DateTime>? createdDate,
      Value<String?>? name,
      Value<String?>? displayName,
      Value<String?>? code,
      Value<List<Translation>?>? translations,
      Value<List<FormOption>?>? options,
      Value<int>? rowid}) {
    return DataOptionSetsCompanion(
      id: id ?? this.id,
      lastModifiedDate: lastModifiedDate ?? this.lastModifiedDate,
      createdDate: createdDate ?? this.createdDate,
      name: name ?? this.name,
      displayName: displayName ?? this.displayName,
      code: code ?? this.code,
      translations: translations ?? this.translations,
      options: options ?? this.options,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (lastModifiedDate.present) {
      map['last_modified_date'] = Variable<DateTime>(lastModifiedDate.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (displayName.present) {
      map['display_name'] = Variable<String>(displayName.value);
    }
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (translations.present) {
      map['translations'] = Variable<String>($DataOptionSetsTable
          .$convertertranslationsn
          .toSql(translations.value));
    }
    if (options.present) {
      map['options'] = Variable<String>(
          $DataOptionSetsTable.$converteroptionsn.toSql(options.value));
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DataOptionSetsCompanion(')
          ..write('id: $id, ')
          ..write('lastModifiedDate: $lastModifiedDate, ')
          ..write('createdDate: $createdDate, ')
          ..write('name: $name, ')
          ..write('displayName: $displayName, ')
          ..write('code: $code, ')
          ..write('translations: $translations, ')
          ..write('options: $options, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $DataOptionsTable extends DataOptions
    with TableInfo<$DataOptionsTable, DataOption> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DataOptionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lastModifiedDateMeta =
      const VerificationMeta('lastModifiedDate');
  @override
  late final GeneratedColumn<DateTime> lastModifiedDate =
      GeneratedColumn<DateTime>('last_modified_date', aliasedName, false,
          type: DriftSqlType.dateTime,
          requiredDuringInsert: false,
          defaultValue: currentDateAndTime);
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _displayNameMeta =
      const VerificationMeta('displayName');
  @override
  late final GeneratedColumn<String> displayName = GeneratedColumn<String>(
      'display_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String> code = GeneratedColumn<String>(
      'code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _translationsMeta =
      const VerificationMeta('translations');
  @override
  late final GeneratedColumnWithTypeConverter<List<Translation>?, String>
      translations = GeneratedColumn<String>('translations', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<Translation>?>(
              $DataOptionsTable.$convertertranslationsn);
  static const VerificationMeta _optionSetMeta =
      const VerificationMeta('optionSet');
  @override
  late final GeneratedColumn<String> optionSet = GeneratedColumn<String>(
      'option_set', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES data_option_sets (id)'));
  static const VerificationMeta _listNameMeta =
      const VerificationMeta('listName');
  @override
  late final GeneratedColumn<String> listName = GeneratedColumn<String>(
      'list_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _orderMeta = const VerificationMeta('order');
  @override
  late final GeneratedColumn<int> order = GeneratedColumn<int>(
      'order', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _filterExpressionMeta =
      const VerificationMeta('filterExpression');
  @override
  late final GeneratedColumn<String> filterExpression = GeneratedColumn<String>(
      'filter_expression', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _labelMeta = const VerificationMeta('label');
  @override
  late final GeneratedColumnWithTypeConverter<Map<String, String>, String>
      label = GeneratedColumn<String>('label', aliasedName, false,
              type: DriftSqlType.string,
              requiredDuringInsert: false,
              defaultValue: Constant('{}'))
          .withConverter<Map<String, String>>(
              $DataOptionsTable.$converterlabel);
  static const VerificationMeta _propertiesMeta =
      const VerificationMeta('properties');
  @override
  late final GeneratedColumnWithTypeConverter<Map<String, dynamic>?, String>
      properties = GeneratedColumn<String>('properties', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<Map<String, dynamic>?>(
              $DataOptionsTable.$converterpropertiesn);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        lastModifiedDate,
        createdDate,
        name,
        displayName,
        code,
        translations,
        optionSet,
        listName,
        order,
        filterExpression,
        label,
        properties
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'data_options';
  @override
  VerificationContext validateIntegrity(Insertable<DataOption> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('last_modified_date')) {
      context.handle(
          _lastModifiedDateMeta,
          lastModifiedDate.isAcceptableOrUnknown(
              data['last_modified_date']!, _lastModifiedDateMeta));
    }
    if (data.containsKey('created_date')) {
      context.handle(
          _createdDateMeta,
          createdDate.isAcceptableOrUnknown(
              data['created_date']!, _createdDateMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('display_name')) {
      context.handle(
          _displayNameMeta,
          displayName.isAcceptableOrUnknown(
              data['display_name']!, _displayNameMeta));
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    }
    context.handle(_translationsMeta, const VerificationResult.success());
    if (data.containsKey('option_set')) {
      context.handle(_optionSetMeta,
          optionSet.isAcceptableOrUnknown(data['option_set']!, _optionSetMeta));
    } else if (isInserting) {
      context.missing(_optionSetMeta);
    }
    if (data.containsKey('list_name')) {
      context.handle(_listNameMeta,
          listName.isAcceptableOrUnknown(data['list_name']!, _listNameMeta));
    } else if (isInserting) {
      context.missing(_listNameMeta);
    }
    if (data.containsKey('order')) {
      context.handle(
          _orderMeta, order.isAcceptableOrUnknown(data['order']!, _orderMeta));
    } else if (isInserting) {
      context.missing(_orderMeta);
    }
    if (data.containsKey('filter_expression')) {
      context.handle(
          _filterExpressionMeta,
          filterExpression.isAcceptableOrUnknown(
              data['filter_expression']!, _filterExpressionMeta));
    }
    context.handle(_labelMeta, const VerificationResult.success());
    context.handle(_propertiesMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DataOption map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DataOption(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      lastModifiedDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}last_modified_date'])!,
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      displayName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}display_name']),
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code']),
      translations: $DataOptionsTable.$convertertranslationsn.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}translations'])),
      optionSet: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}option_set'])!,
      listName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}list_name'])!,
      order: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}order'])!,
      filterExpression: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}filter_expression']),
      label: $DataOptionsTable.$converterlabel.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}label'])!),
      properties: $DataOptionsTable.$converterpropertiesn.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.string, data['${effectivePrefix}properties'])),
    );
  }

  @override
  $DataOptionsTable createAlias(String alias) {
    return $DataOptionsTable(attachedDatabase, alias);
  }

  static TypeConverter<List<Translation>, String> $convertertranslations =
      const TranslationConverter();
  static TypeConverter<List<Translation>?, String?> $convertertranslationsn =
      NullAwareTypeConverter.wrap($convertertranslations);
  static TypeConverter<Map<String, String>, String> $converterlabel =
      const MapConverter<String>();
  static TypeConverter<Map<String, dynamic>, String> $converterproperties =
      const MapConverter();
  static TypeConverter<Map<String, dynamic>?, String?> $converterpropertiesn =
      NullAwareTypeConverter.wrap($converterproperties);
}

class DataOption extends DataClass implements Insertable<DataOption> {
  final String id;
  final DateTime lastModifiedDate;
  final DateTime createdDate;
  final String? name;
  final String? displayName;
  final String? code;

  /// List of Translations
  final List<Translation>? translations;
  final String optionSet;
  final String listName;
  final int order;
  final String? filterExpression;
  final Map<String, String> label;
  final Map<String, dynamic>? properties;
  const DataOption(
      {required this.id,
      required this.lastModifiedDate,
      required this.createdDate,
      this.name,
      this.displayName,
      this.code,
      this.translations,
      required this.optionSet,
      required this.listName,
      required this.order,
      this.filterExpression,
      required this.label,
      this.properties});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['last_modified_date'] = Variable<DateTime>(lastModifiedDate);
    map['created_date'] = Variable<DateTime>(createdDate);
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || displayName != null) {
      map['display_name'] = Variable<String>(displayName);
    }
    if (!nullToAbsent || code != null) {
      map['code'] = Variable<String>(code);
    }
    if (!nullToAbsent || translations != null) {
      map['translations'] = Variable<String>(
          $DataOptionsTable.$convertertranslationsn.toSql(translations));
    }
    map['option_set'] = Variable<String>(optionSet);
    map['list_name'] = Variable<String>(listName);
    map['order'] = Variable<int>(order);
    if (!nullToAbsent || filterExpression != null) {
      map['filter_expression'] = Variable<String>(filterExpression);
    }
    {
      map['label'] =
          Variable<String>($DataOptionsTable.$converterlabel.toSql(label));
    }
    if (!nullToAbsent || properties != null) {
      map['properties'] = Variable<String>(
          $DataOptionsTable.$converterpropertiesn.toSql(properties));
    }
    return map;
  }

  DataOptionsCompanion toCompanion(bool nullToAbsent) {
    return DataOptionsCompanion(
      id: Value(id),
      lastModifiedDate: Value(lastModifiedDate),
      createdDate: Value(createdDate),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      displayName: displayName == null && nullToAbsent
          ? const Value.absent()
          : Value(displayName),
      code: code == null && nullToAbsent ? const Value.absent() : Value(code),
      translations: translations == null && nullToAbsent
          ? const Value.absent()
          : Value(translations),
      optionSet: Value(optionSet),
      listName: Value(listName),
      order: Value(order),
      filterExpression: filterExpression == null && nullToAbsent
          ? const Value.absent()
          : Value(filterExpression),
      label: Value(label),
      properties: properties == null && nullToAbsent
          ? const Value.absent()
          : Value(properties),
    );
  }

  factory DataOption.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DataOption(
      id: serializer.fromJson<String>(json['id']),
      lastModifiedDate: serializer.fromJson<DateTime>(json['lastModifiedDate']),
      createdDate: serializer.fromJson<DateTime>(json['createdDate']),
      name: serializer.fromJson<String?>(json['name']),
      displayName: serializer.fromJson<String?>(json['displayName']),
      code: serializer.fromJson<String?>(json['code']),
      translations:
          serializer.fromJson<List<Translation>?>(json['translations']),
      optionSet: serializer.fromJson<String>(json['optionSet']),
      listName: serializer.fromJson<String>(json['listName']),
      order: serializer.fromJson<int>(json['order']),
      filterExpression: serializer.fromJson<String?>(json['filterExpression']),
      label: serializer.fromJson<Map<String, String>>(json['label']),
      properties:
          serializer.fromJson<Map<String, dynamic>?>(json['properties']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'lastModifiedDate': serializer.toJson<DateTime>(lastModifiedDate),
      'createdDate': serializer.toJson<DateTime>(createdDate),
      'name': serializer.toJson<String?>(name),
      'displayName': serializer.toJson<String?>(displayName),
      'code': serializer.toJson<String?>(code),
      'translations': serializer.toJson<List<Translation>?>(translations),
      'optionSet': serializer.toJson<String>(optionSet),
      'listName': serializer.toJson<String>(listName),
      'order': serializer.toJson<int>(order),
      'filterExpression': serializer.toJson<String?>(filterExpression),
      'label': serializer.toJson<Map<String, String>>(label),
      'properties': serializer.toJson<Map<String, dynamic>?>(properties),
    };
  }

  DataOption copyWith(
          {String? id,
          DateTime? lastModifiedDate,
          DateTime? createdDate,
          Value<String?> name = const Value.absent(),
          Value<String?> displayName = const Value.absent(),
          Value<String?> code = const Value.absent(),
          Value<List<Translation>?> translations = const Value.absent(),
          String? optionSet,
          String? listName,
          int? order,
          Value<String?> filterExpression = const Value.absent(),
          Map<String, String>? label,
          Value<Map<String, dynamic>?> properties = const Value.absent()}) =>
      DataOption(
        id: id ?? this.id,
        lastModifiedDate: lastModifiedDate ?? this.lastModifiedDate,
        createdDate: createdDate ?? this.createdDate,
        name: name.present ? name.value : this.name,
        displayName: displayName.present ? displayName.value : this.displayName,
        code: code.present ? code.value : this.code,
        translations:
            translations.present ? translations.value : this.translations,
        optionSet: optionSet ?? this.optionSet,
        listName: listName ?? this.listName,
        order: order ?? this.order,
        filterExpression: filterExpression.present
            ? filterExpression.value
            : this.filterExpression,
        label: label ?? this.label,
        properties: properties.present ? properties.value : this.properties,
      );
  DataOption copyWithCompanion(DataOptionsCompanion data) {
    return DataOption(
      id: data.id.present ? data.id.value : this.id,
      lastModifiedDate: data.lastModifiedDate.present
          ? data.lastModifiedDate.value
          : this.lastModifiedDate,
      createdDate:
          data.createdDate.present ? data.createdDate.value : this.createdDate,
      name: data.name.present ? data.name.value : this.name,
      displayName:
          data.displayName.present ? data.displayName.value : this.displayName,
      code: data.code.present ? data.code.value : this.code,
      translations: data.translations.present
          ? data.translations.value
          : this.translations,
      optionSet: data.optionSet.present ? data.optionSet.value : this.optionSet,
      listName: data.listName.present ? data.listName.value : this.listName,
      order: data.order.present ? data.order.value : this.order,
      filterExpression: data.filterExpression.present
          ? data.filterExpression.value
          : this.filterExpression,
      label: data.label.present ? data.label.value : this.label,
      properties:
          data.properties.present ? data.properties.value : this.properties,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DataOption(')
          ..write('id: $id, ')
          ..write('lastModifiedDate: $lastModifiedDate, ')
          ..write('createdDate: $createdDate, ')
          ..write('name: $name, ')
          ..write('displayName: $displayName, ')
          ..write('code: $code, ')
          ..write('translations: $translations, ')
          ..write('optionSet: $optionSet, ')
          ..write('listName: $listName, ')
          ..write('order: $order, ')
          ..write('filterExpression: $filterExpression, ')
          ..write('label: $label, ')
          ..write('properties: $properties')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      lastModifiedDate,
      createdDate,
      name,
      displayName,
      code,
      translations,
      optionSet,
      listName,
      order,
      filterExpression,
      label,
      properties);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DataOption &&
          other.id == this.id &&
          other.lastModifiedDate == this.lastModifiedDate &&
          other.createdDate == this.createdDate &&
          other.name == this.name &&
          other.displayName == this.displayName &&
          other.code == this.code &&
          other.translations == this.translations &&
          other.optionSet == this.optionSet &&
          other.listName == this.listName &&
          other.order == this.order &&
          other.filterExpression == this.filterExpression &&
          other.label == this.label &&
          other.properties == this.properties);
}

class DataOptionsCompanion extends UpdateCompanion<DataOption> {
  final Value<String> id;
  final Value<DateTime> lastModifiedDate;
  final Value<DateTime> createdDate;
  final Value<String?> name;
  final Value<String?> displayName;
  final Value<String?> code;
  final Value<List<Translation>?> translations;
  final Value<String> optionSet;
  final Value<String> listName;
  final Value<int> order;
  final Value<String?> filterExpression;
  final Value<Map<String, String>> label;
  final Value<Map<String, dynamic>?> properties;
  final Value<int> rowid;
  const DataOptionsCompanion({
    this.id = const Value.absent(),
    this.lastModifiedDate = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.name = const Value.absent(),
    this.displayName = const Value.absent(),
    this.code = const Value.absent(),
    this.translations = const Value.absent(),
    this.optionSet = const Value.absent(),
    this.listName = const Value.absent(),
    this.order = const Value.absent(),
    this.filterExpression = const Value.absent(),
    this.label = const Value.absent(),
    this.properties = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  DataOptionsCompanion.insert({
    required String id,
    this.lastModifiedDate = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.name = const Value.absent(),
    this.displayName = const Value.absent(),
    this.code = const Value.absent(),
    this.translations = const Value.absent(),
    required String optionSet,
    required String listName,
    required int order,
    this.filterExpression = const Value.absent(),
    this.label = const Value.absent(),
    this.properties = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        optionSet = Value(optionSet),
        listName = Value(listName),
        order = Value(order);
  static Insertable<DataOption> custom({
    Expression<String>? id,
    Expression<DateTime>? lastModifiedDate,
    Expression<DateTime>? createdDate,
    Expression<String>? name,
    Expression<String>? displayName,
    Expression<String>? code,
    Expression<String>? translations,
    Expression<String>? optionSet,
    Expression<String>? listName,
    Expression<int>? order,
    Expression<String>? filterExpression,
    Expression<String>? label,
    Expression<String>? properties,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (lastModifiedDate != null) 'last_modified_date': lastModifiedDate,
      if (createdDate != null) 'created_date': createdDate,
      if (name != null) 'name': name,
      if (displayName != null) 'display_name': displayName,
      if (code != null) 'code': code,
      if (translations != null) 'translations': translations,
      if (optionSet != null) 'option_set': optionSet,
      if (listName != null) 'list_name': listName,
      if (order != null) 'order': order,
      if (filterExpression != null) 'filter_expression': filterExpression,
      if (label != null) 'label': label,
      if (properties != null) 'properties': properties,
      if (rowid != null) 'rowid': rowid,
    });
  }

  DataOptionsCompanion copyWith(
      {Value<String>? id,
      Value<DateTime>? lastModifiedDate,
      Value<DateTime>? createdDate,
      Value<String?>? name,
      Value<String?>? displayName,
      Value<String?>? code,
      Value<List<Translation>?>? translations,
      Value<String>? optionSet,
      Value<String>? listName,
      Value<int>? order,
      Value<String?>? filterExpression,
      Value<Map<String, String>>? label,
      Value<Map<String, dynamic>?>? properties,
      Value<int>? rowid}) {
    return DataOptionsCompanion(
      id: id ?? this.id,
      lastModifiedDate: lastModifiedDate ?? this.lastModifiedDate,
      createdDate: createdDate ?? this.createdDate,
      name: name ?? this.name,
      displayName: displayName ?? this.displayName,
      code: code ?? this.code,
      translations: translations ?? this.translations,
      optionSet: optionSet ?? this.optionSet,
      listName: listName ?? this.listName,
      order: order ?? this.order,
      filterExpression: filterExpression ?? this.filterExpression,
      label: label ?? this.label,
      properties: properties ?? this.properties,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (lastModifiedDate.present) {
      map['last_modified_date'] = Variable<DateTime>(lastModifiedDate.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (displayName.present) {
      map['display_name'] = Variable<String>(displayName.value);
    }
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (translations.present) {
      map['translations'] = Variable<String>(
          $DataOptionsTable.$convertertranslationsn.toSql(translations.value));
    }
    if (optionSet.present) {
      map['option_set'] = Variable<String>(optionSet.value);
    }
    if (listName.present) {
      map['list_name'] = Variable<String>(listName.value);
    }
    if (order.present) {
      map['order'] = Variable<int>(order.value);
    }
    if (filterExpression.present) {
      map['filter_expression'] = Variable<String>(filterExpression.value);
    }
    if (label.present) {
      map['label'] = Variable<String>(
          $DataOptionsTable.$converterlabel.toSql(label.value));
    }
    if (properties.present) {
      map['properties'] = Variable<String>(
          $DataOptionsTable.$converterpropertiesn.toSql(properties.value));
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DataOptionsCompanion(')
          ..write('id: $id, ')
          ..write('lastModifiedDate: $lastModifiedDate, ')
          ..write('createdDate: $createdDate, ')
          ..write('name: $name, ')
          ..write('displayName: $displayName, ')
          ..write('code: $code, ')
          ..write('translations: $translations, ')
          ..write('optionSet: $optionSet, ')
          ..write('listName: $listName, ')
          ..write('order: $order, ')
          ..write('filterExpression: $filterExpression, ')
          ..write('label: $label, ')
          ..write('properties: $properties, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $UsersTable users = $UsersTable(this);
  late final $OrgUnitsTable orgUnits = $OrgUnitsTable(this);
  late final $OuLevelsTable ouLevels = $OuLevelsTable(this);
  late final $ProjectsTable projects = $ProjectsTable(this);
  late final $ActivitiesTable activities = $ActivitiesTable(this);
  late final $TeamsTable teams = $TeamsTable(this);
  late final $AssignmentsTable assignments = $AssignmentsTable(this);
  late final $FormTemplatesTable formTemplates = $FormTemplatesTable(this);
  late final $FormVersionsTable formVersions = $FormVersionsTable(this);
  late final $MetadataSubmissionsTable metadataSubmissions =
      $MetadataSubmissionsTable(this);
  late final $DataSubmissionsTable dataSubmissions =
      $DataSubmissionsTable(this);
  late final $RepeatInstancesTable repeatInstances =
      $RepeatInstancesTable(this);
  late final $DataElementsTable dataElements = $DataElementsTable(this);
  late final $DataValuesTable dataValues = $DataValuesTable(this);
  late final $DataOptionSetsTable dataOptionSets = $DataOptionSetsTable(this);
  late final $DataOptionsTable dataOptions = $DataOptionsTable(this);
  late final Index assignmentStatus = Index('assignment_status',
      'CREATE INDEX assignment_status ON assignments (status)');
  late final Index assignmentStartDate = Index('assignment_start_date',
      'CREATE INDEX assignment_start_date ON assignments (start_date)');
  late final Index assignmentScope = Index('assignment_scope',
      'CREATE INDEX assignment_scope ON assignments (scope)');
  late final Index repeatTemplatePath = Index('repeat_template_path',
      'CREATE INDEX repeat_template_path ON repeat_instances (template_path)');
  late final Index dataValueTemplatePath = Index('data_value_template_path',
      'CREATE INDEX data_value_template_path ON data_values (template_path)');
  late final Index submissionStatus = Index('submission_status',
      'CREATE INDEX submission_status ON data_submissions (status)');
  late final Index submissionDeleted = Index('submission_deleted',
      'CREATE INDEX submission_deleted ON data_submissions (deleted)');
  late final ActivitiesDao activitiesDao = ActivitiesDao(this as AppDatabase);
  late final AssignmentsDao assignmentsDao =
      AssignmentsDao(this as AppDatabase);
  late final DataSubmissionsDao dataSubmissionsDao =
      DataSubmissionsDao(this as AppDatabase);
  late final DataValuesDao dataValuesDao = DataValuesDao(this as AppDatabase);
  late final FormVersionsDao formVersionsDao =
      FormVersionsDao(this as AppDatabase);
  late final RepeatInstancesDao repeatInstancesDao =
      RepeatInstancesDao(this as AppDatabase);
  late final TeamsDao teamsDao = TeamsDao(this as AppDatabase);
  late final DataOptionSetsDao dataOptionSetsDao =
      DataOptionSetsDao(this as AppDatabase);
  late final OrgUnitsDao orgUnitsDao = OrgUnitsDao(this as AppDatabase);
  late final UsersDao usersDao = UsersDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        users,
        orgUnits,
        ouLevels,
        projects,
        activities,
        teams,
        assignments,
        formTemplates,
        formVersions,
        metadataSubmissions,
        dataSubmissions,
        repeatInstances,
        dataElements,
        dataValues,
        dataOptionSets,
        dataOptions,
        assignmentStatus,
        assignmentStartDate,
        assignmentScope,
        repeatTemplatePath,
        dataValueTemplatePath,
        submissionStatus,
        submissionDeleted
      ];
  @override
  DriftDatabaseOptions get options =>
      const DriftDatabaseOptions(storeDateTimeAsText: true);
}

typedef $$UsersTableCreateCompanionBuilder = UsersCompanion Function({
  required String id,
  Value<DateTime> lastModifiedDate,
  Value<DateTime> createdDate,
  required String username,
  required String password,
  Value<String?> firstName,
  Value<String?> lastname,
  Value<String?> mobile,
  Value<String?> email,
  Value<String> langKey,
  Value<bool> activated,
  Value<String?> imageUrl,
  Value<List<String>> authorities,
  Value<int> rowid,
});
typedef $$UsersTableUpdateCompanionBuilder = UsersCompanion Function({
  Value<String> id,
  Value<DateTime> lastModifiedDate,
  Value<DateTime> createdDate,
  Value<String> username,
  Value<String> password,
  Value<String?> firstName,
  Value<String?> lastname,
  Value<String?> mobile,
  Value<String?> email,
  Value<String> langKey,
  Value<bool> activated,
  Value<String?> imageUrl,
  Value<List<String>> authorities,
  Value<int> rowid,
});

class $$UsersTableFilterComposer extends Composer<_$AppDatabase, $UsersTable> {
  $$UsersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get lastModifiedDate => $composableBuilder(
      column: $table.lastModifiedDate,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get username => $composableBuilder(
      column: $table.username, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get password => $composableBuilder(
      column: $table.password, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get firstName => $composableBuilder(
      column: $table.firstName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get lastname => $composableBuilder(
      column: $table.lastname, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get mobile => $composableBuilder(
      column: $table.mobile, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get langKey => $composableBuilder(
      column: $table.langKey, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get activated => $composableBuilder(
      column: $table.activated, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get imageUrl => $composableBuilder(
      column: $table.imageUrl, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<List<String>, List<String>, String>
      get authorities => $composableBuilder(
          column: $table.authorities,
          builder: (column) => ColumnWithTypeConverterFilters(column));
}

class $$UsersTableOrderingComposer
    extends Composer<_$AppDatabase, $UsersTable> {
  $$UsersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get lastModifiedDate => $composableBuilder(
      column: $table.lastModifiedDate,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get username => $composableBuilder(
      column: $table.username, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get password => $composableBuilder(
      column: $table.password, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get firstName => $composableBuilder(
      column: $table.firstName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get lastname => $composableBuilder(
      column: $table.lastname, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get mobile => $composableBuilder(
      column: $table.mobile, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get langKey => $composableBuilder(
      column: $table.langKey, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get activated => $composableBuilder(
      column: $table.activated, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get imageUrl => $composableBuilder(
      column: $table.imageUrl, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get authorities => $composableBuilder(
      column: $table.authorities, builder: (column) => ColumnOrderings(column));
}

class $$UsersTableAnnotationComposer
    extends Composer<_$AppDatabase, $UsersTable> {
  $$UsersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get lastModifiedDate => $composableBuilder(
      column: $table.lastModifiedDate, builder: (column) => column);

  GeneratedColumn<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => column);

  GeneratedColumn<String> get username =>
      $composableBuilder(column: $table.username, builder: (column) => column);

  GeneratedColumn<String> get password =>
      $composableBuilder(column: $table.password, builder: (column) => column);

  GeneratedColumn<String> get firstName =>
      $composableBuilder(column: $table.firstName, builder: (column) => column);

  GeneratedColumn<String> get lastname =>
      $composableBuilder(column: $table.lastname, builder: (column) => column);

  GeneratedColumn<String> get mobile =>
      $composableBuilder(column: $table.mobile, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<String> get langKey =>
      $composableBuilder(column: $table.langKey, builder: (column) => column);

  GeneratedColumn<bool> get activated =>
      $composableBuilder(column: $table.activated, builder: (column) => column);

  GeneratedColumn<String> get imageUrl =>
      $composableBuilder(column: $table.imageUrl, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<String>, String> get authorities =>
      $composableBuilder(
          column: $table.authorities, builder: (column) => column);
}

class $$UsersTableTableManager extends RootTableManager<
    _$AppDatabase,
    $UsersTable,
    User,
    $$UsersTableFilterComposer,
    $$UsersTableOrderingComposer,
    $$UsersTableAnnotationComposer,
    $$UsersTableCreateCompanionBuilder,
    $$UsersTableUpdateCompanionBuilder,
    (User, BaseReferences<_$AppDatabase, $UsersTable, User>),
    User,
    PrefetchHooks Function()> {
  $$UsersTableTableManager(_$AppDatabase db, $UsersTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UsersTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UsersTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UsersTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<DateTime> lastModifiedDate = const Value.absent(),
            Value<DateTime> createdDate = const Value.absent(),
            Value<String> username = const Value.absent(),
            Value<String> password = const Value.absent(),
            Value<String?> firstName = const Value.absent(),
            Value<String?> lastname = const Value.absent(),
            Value<String?> mobile = const Value.absent(),
            Value<String?> email = const Value.absent(),
            Value<String> langKey = const Value.absent(),
            Value<bool> activated = const Value.absent(),
            Value<String?> imageUrl = const Value.absent(),
            Value<List<String>> authorities = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              UsersCompanion(
            id: id,
            lastModifiedDate: lastModifiedDate,
            createdDate: createdDate,
            username: username,
            password: password,
            firstName: firstName,
            lastname: lastname,
            mobile: mobile,
            email: email,
            langKey: langKey,
            activated: activated,
            imageUrl: imageUrl,
            authorities: authorities,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            Value<DateTime> lastModifiedDate = const Value.absent(),
            Value<DateTime> createdDate = const Value.absent(),
            required String username,
            required String password,
            Value<String?> firstName = const Value.absent(),
            Value<String?> lastname = const Value.absent(),
            Value<String?> mobile = const Value.absent(),
            Value<String?> email = const Value.absent(),
            Value<String> langKey = const Value.absent(),
            Value<bool> activated = const Value.absent(),
            Value<String?> imageUrl = const Value.absent(),
            Value<List<String>> authorities = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              UsersCompanion.insert(
            id: id,
            lastModifiedDate: lastModifiedDate,
            createdDate: createdDate,
            username: username,
            password: password,
            firstName: firstName,
            lastname: lastname,
            mobile: mobile,
            email: email,
            langKey: langKey,
            activated: activated,
            imageUrl: imageUrl,
            authorities: authorities,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$UsersTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $UsersTable,
    User,
    $$UsersTableFilterComposer,
    $$UsersTableOrderingComposer,
    $$UsersTableAnnotationComposer,
    $$UsersTableCreateCompanionBuilder,
    $$UsersTableUpdateCompanionBuilder,
    (User, BaseReferences<_$AppDatabase, $UsersTable, User>),
    User,
    PrefetchHooks Function()>;
typedef $$OrgUnitsTableCreateCompanionBuilder = OrgUnitsCompanion Function({
  required String id,
  Value<DateTime> lastModifiedDate,
  Value<DateTime> createdDate,
  Value<String?> name,
  Value<String?> displayName,
  Value<String?> code,
  Value<List<Translation>?> translations,
  Value<String?> path,
  Value<Map<String, String>> label,
  Value<String?> parent,
  Value<String?> ancestors,
  Value<String?> geometry,
  Value<String?> scope,
  Value<int> rowid,
});
typedef $$OrgUnitsTableUpdateCompanionBuilder = OrgUnitsCompanion Function({
  Value<String> id,
  Value<DateTime> lastModifiedDate,
  Value<DateTime> createdDate,
  Value<String?> name,
  Value<String?> displayName,
  Value<String?> code,
  Value<List<Translation>?> translations,
  Value<String?> path,
  Value<Map<String, String>> label,
  Value<String?> parent,
  Value<String?> ancestors,
  Value<String?> geometry,
  Value<String?> scope,
  Value<int> rowid,
});

final class $$OrgUnitsTableReferences
    extends BaseReferences<_$AppDatabase, $OrgUnitsTable, OrgUnit> {
  $$OrgUnitsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$AssignmentsTable, List<Assignment>>
      _assignmentsRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.assignments,
              aliasName:
                  $_aliasNameGenerator(db.orgUnits.id, db.assignments.orgUnit));

  $$AssignmentsTableProcessedTableManager get assignmentsRefs {
    final manager = $$AssignmentsTableTableManager($_db, $_db.assignments)
        .filter((f) => f.orgUnit.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_assignmentsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$DataSubmissionsTable, List<DataSubmission>>
      _dataSubmissionsRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.dataSubmissions,
              aliasName: $_aliasNameGenerator(
                  db.orgUnits.id, db.dataSubmissions.orgUnit));

  $$DataSubmissionsTableProcessedTableManager get dataSubmissionsRefs {
    final manager =
        $$DataSubmissionsTableTableManager($_db, $_db.dataSubmissions)
            .filter((f) => f.orgUnit.id($_item.id));

    final cache =
        $_typedResult.readTableOrNull(_dataSubmissionsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$OrgUnitsTableFilterComposer
    extends Composer<_$AppDatabase, $OrgUnitsTable> {
  $$OrgUnitsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get lastModifiedDate => $composableBuilder(
      column: $table.lastModifiedDate,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get displayName => $composableBuilder(
      column: $table.displayName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<List<Translation>?, List<Translation>, String>
      get translations => $composableBuilder(
          column: $table.translations,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<String> get path => $composableBuilder(
      column: $table.path, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<Map<String, String>, Map<String, String>,
          String>
      get label => $composableBuilder(
          column: $table.label,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<String> get parent => $composableBuilder(
      column: $table.parent, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get ancestors => $composableBuilder(
      column: $table.ancestors, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get geometry => $composableBuilder(
      column: $table.geometry, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get scope => $composableBuilder(
      column: $table.scope, builder: (column) => ColumnFilters(column));

  Expression<bool> assignmentsRefs(
      Expression<bool> Function($$AssignmentsTableFilterComposer f) f) {
    final $$AssignmentsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.assignments,
        getReferencedColumn: (t) => t.orgUnit,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AssignmentsTableFilterComposer(
              $db: $db,
              $table: $db.assignments,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> dataSubmissionsRefs(
      Expression<bool> Function($$DataSubmissionsTableFilterComposer f) f) {
    final $$DataSubmissionsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.dataSubmissions,
        getReferencedColumn: (t) => t.orgUnit,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DataSubmissionsTableFilterComposer(
              $db: $db,
              $table: $db.dataSubmissions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$OrgUnitsTableOrderingComposer
    extends Composer<_$AppDatabase, $OrgUnitsTable> {
  $$OrgUnitsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get lastModifiedDate => $composableBuilder(
      column: $table.lastModifiedDate,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get displayName => $composableBuilder(
      column: $table.displayName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get translations => $composableBuilder(
      column: $table.translations,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get path => $composableBuilder(
      column: $table.path, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get label => $composableBuilder(
      column: $table.label, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get parent => $composableBuilder(
      column: $table.parent, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get ancestors => $composableBuilder(
      column: $table.ancestors, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get geometry => $composableBuilder(
      column: $table.geometry, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get scope => $composableBuilder(
      column: $table.scope, builder: (column) => ColumnOrderings(column));
}

class $$OrgUnitsTableAnnotationComposer
    extends Composer<_$AppDatabase, $OrgUnitsTable> {
  $$OrgUnitsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get lastModifiedDate => $composableBuilder(
      column: $table.lastModifiedDate, builder: (column) => column);

  GeneratedColumn<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get displayName => $composableBuilder(
      column: $table.displayName, builder: (column) => column);

  GeneratedColumn<String> get code =>
      $composableBuilder(column: $table.code, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<Translation>?, String>
      get translations => $composableBuilder(
          column: $table.translations, builder: (column) => column);

  GeneratedColumn<String> get path =>
      $composableBuilder(column: $table.path, builder: (column) => column);

  GeneratedColumnWithTypeConverter<Map<String, String>, String> get label =>
      $composableBuilder(column: $table.label, builder: (column) => column);

  GeneratedColumn<String> get parent =>
      $composableBuilder(column: $table.parent, builder: (column) => column);

  GeneratedColumn<String> get ancestors =>
      $composableBuilder(column: $table.ancestors, builder: (column) => column);

  GeneratedColumn<String> get geometry =>
      $composableBuilder(column: $table.geometry, builder: (column) => column);

  GeneratedColumn<String> get scope =>
      $composableBuilder(column: $table.scope, builder: (column) => column);

  Expression<T> assignmentsRefs<T extends Object>(
      Expression<T> Function($$AssignmentsTableAnnotationComposer a) f) {
    final $$AssignmentsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.assignments,
        getReferencedColumn: (t) => t.orgUnit,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AssignmentsTableAnnotationComposer(
              $db: $db,
              $table: $db.assignments,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> dataSubmissionsRefs<T extends Object>(
      Expression<T> Function($$DataSubmissionsTableAnnotationComposer a) f) {
    final $$DataSubmissionsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.dataSubmissions,
        getReferencedColumn: (t) => t.orgUnit,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DataSubmissionsTableAnnotationComposer(
              $db: $db,
              $table: $db.dataSubmissions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$OrgUnitsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $OrgUnitsTable,
    OrgUnit,
    $$OrgUnitsTableFilterComposer,
    $$OrgUnitsTableOrderingComposer,
    $$OrgUnitsTableAnnotationComposer,
    $$OrgUnitsTableCreateCompanionBuilder,
    $$OrgUnitsTableUpdateCompanionBuilder,
    (OrgUnit, $$OrgUnitsTableReferences),
    OrgUnit,
    PrefetchHooks Function({bool assignmentsRefs, bool dataSubmissionsRefs})> {
  $$OrgUnitsTableTableManager(_$AppDatabase db, $OrgUnitsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$OrgUnitsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$OrgUnitsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$OrgUnitsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<DateTime> lastModifiedDate = const Value.absent(),
            Value<DateTime> createdDate = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> displayName = const Value.absent(),
            Value<String?> code = const Value.absent(),
            Value<List<Translation>?> translations = const Value.absent(),
            Value<String?> path = const Value.absent(),
            Value<Map<String, String>> label = const Value.absent(),
            Value<String?> parent = const Value.absent(),
            Value<String?> ancestors = const Value.absent(),
            Value<String?> geometry = const Value.absent(),
            Value<String?> scope = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              OrgUnitsCompanion(
            id: id,
            lastModifiedDate: lastModifiedDate,
            createdDate: createdDate,
            name: name,
            displayName: displayName,
            code: code,
            translations: translations,
            path: path,
            label: label,
            parent: parent,
            ancestors: ancestors,
            geometry: geometry,
            scope: scope,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            Value<DateTime> lastModifiedDate = const Value.absent(),
            Value<DateTime> createdDate = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> displayName = const Value.absent(),
            Value<String?> code = const Value.absent(),
            Value<List<Translation>?> translations = const Value.absent(),
            Value<String?> path = const Value.absent(),
            Value<Map<String, String>> label = const Value.absent(),
            Value<String?> parent = const Value.absent(),
            Value<String?> ancestors = const Value.absent(),
            Value<String?> geometry = const Value.absent(),
            Value<String?> scope = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              OrgUnitsCompanion.insert(
            id: id,
            lastModifiedDate: lastModifiedDate,
            createdDate: createdDate,
            name: name,
            displayName: displayName,
            code: code,
            translations: translations,
            path: path,
            label: label,
            parent: parent,
            ancestors: ancestors,
            geometry: geometry,
            scope: scope,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$OrgUnitsTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: (
              {assignmentsRefs = false, dataSubmissionsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (assignmentsRefs) db.assignments,
                if (dataSubmissionsRefs) db.dataSubmissions
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (assignmentsRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable:
                            $$OrgUnitsTableReferences._assignmentsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$OrgUnitsTableReferences(db, table, p0)
                                .assignmentsRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.orgUnit == item.id),
                        typedResults: items),
                  if (dataSubmissionsRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$OrgUnitsTableReferences
                            ._dataSubmissionsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$OrgUnitsTableReferences(db, table, p0)
                                .dataSubmissionsRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.orgUnit == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$OrgUnitsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $OrgUnitsTable,
    OrgUnit,
    $$OrgUnitsTableFilterComposer,
    $$OrgUnitsTableOrderingComposer,
    $$OrgUnitsTableAnnotationComposer,
    $$OrgUnitsTableCreateCompanionBuilder,
    $$OrgUnitsTableUpdateCompanionBuilder,
    (OrgUnit, $$OrgUnitsTableReferences),
    OrgUnit,
    PrefetchHooks Function({bool assignmentsRefs, bool dataSubmissionsRefs})>;
typedef $$OuLevelsTableCreateCompanionBuilder = OuLevelsCompanion Function({
  required String id,
  Value<DateTime> lastModifiedDate,
  Value<DateTime> createdDate,
  Value<String?> name,
  Value<String?> displayName,
  Value<String?> code,
  Value<List<Translation>?> translations,
  required int level,
  Value<int?> offlineLevels,
  Value<int> rowid,
});
typedef $$OuLevelsTableUpdateCompanionBuilder = OuLevelsCompanion Function({
  Value<String> id,
  Value<DateTime> lastModifiedDate,
  Value<DateTime> createdDate,
  Value<String?> name,
  Value<String?> displayName,
  Value<String?> code,
  Value<List<Translation>?> translations,
  Value<int> level,
  Value<int?> offlineLevels,
  Value<int> rowid,
});

class $$OuLevelsTableFilterComposer
    extends Composer<_$AppDatabase, $OuLevelsTable> {
  $$OuLevelsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get lastModifiedDate => $composableBuilder(
      column: $table.lastModifiedDate,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get displayName => $composableBuilder(
      column: $table.displayName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<List<Translation>?, List<Translation>, String>
      get translations => $composableBuilder(
          column: $table.translations,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<int> get level => $composableBuilder(
      column: $table.level, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get offlineLevels => $composableBuilder(
      column: $table.offlineLevels, builder: (column) => ColumnFilters(column));
}

class $$OuLevelsTableOrderingComposer
    extends Composer<_$AppDatabase, $OuLevelsTable> {
  $$OuLevelsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get lastModifiedDate => $composableBuilder(
      column: $table.lastModifiedDate,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get displayName => $composableBuilder(
      column: $table.displayName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get translations => $composableBuilder(
      column: $table.translations,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get level => $composableBuilder(
      column: $table.level, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get offlineLevels => $composableBuilder(
      column: $table.offlineLevels,
      builder: (column) => ColumnOrderings(column));
}

class $$OuLevelsTableAnnotationComposer
    extends Composer<_$AppDatabase, $OuLevelsTable> {
  $$OuLevelsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get lastModifiedDate => $composableBuilder(
      column: $table.lastModifiedDate, builder: (column) => column);

  GeneratedColumn<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get displayName => $composableBuilder(
      column: $table.displayName, builder: (column) => column);

  GeneratedColumn<String> get code =>
      $composableBuilder(column: $table.code, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<Translation>?, String>
      get translations => $composableBuilder(
          column: $table.translations, builder: (column) => column);

  GeneratedColumn<int> get level =>
      $composableBuilder(column: $table.level, builder: (column) => column);

  GeneratedColumn<int> get offlineLevels => $composableBuilder(
      column: $table.offlineLevels, builder: (column) => column);
}

class $$OuLevelsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $OuLevelsTable,
    OuLevel,
    $$OuLevelsTableFilterComposer,
    $$OuLevelsTableOrderingComposer,
    $$OuLevelsTableAnnotationComposer,
    $$OuLevelsTableCreateCompanionBuilder,
    $$OuLevelsTableUpdateCompanionBuilder,
    (OuLevel, BaseReferences<_$AppDatabase, $OuLevelsTable, OuLevel>),
    OuLevel,
    PrefetchHooks Function()> {
  $$OuLevelsTableTableManager(_$AppDatabase db, $OuLevelsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$OuLevelsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$OuLevelsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$OuLevelsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<DateTime> lastModifiedDate = const Value.absent(),
            Value<DateTime> createdDate = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> displayName = const Value.absent(),
            Value<String?> code = const Value.absent(),
            Value<List<Translation>?> translations = const Value.absent(),
            Value<int> level = const Value.absent(),
            Value<int?> offlineLevels = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              OuLevelsCompanion(
            id: id,
            lastModifiedDate: lastModifiedDate,
            createdDate: createdDate,
            name: name,
            displayName: displayName,
            code: code,
            translations: translations,
            level: level,
            offlineLevels: offlineLevels,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            Value<DateTime> lastModifiedDate = const Value.absent(),
            Value<DateTime> createdDate = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> displayName = const Value.absent(),
            Value<String?> code = const Value.absent(),
            Value<List<Translation>?> translations = const Value.absent(),
            required int level,
            Value<int?> offlineLevels = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              OuLevelsCompanion.insert(
            id: id,
            lastModifiedDate: lastModifiedDate,
            createdDate: createdDate,
            name: name,
            displayName: displayName,
            code: code,
            translations: translations,
            level: level,
            offlineLevels: offlineLevels,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$OuLevelsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $OuLevelsTable,
    OuLevel,
    $$OuLevelsTableFilterComposer,
    $$OuLevelsTableOrderingComposer,
    $$OuLevelsTableAnnotationComposer,
    $$OuLevelsTableCreateCompanionBuilder,
    $$OuLevelsTableUpdateCompanionBuilder,
    (OuLevel, BaseReferences<_$AppDatabase, $OuLevelsTable, OuLevel>),
    OuLevel,
    PrefetchHooks Function()>;
typedef $$ProjectsTableCreateCompanionBuilder = ProjectsCompanion Function({
  required String id,
  Value<DateTime> lastModifiedDate,
  Value<DateTime> createdDate,
  Value<String?> name,
  Value<String?> displayName,
  Value<String?> code,
  Value<List<Translation>?> translations,
  required bool disabled,
  Value<int> rowid,
});
typedef $$ProjectsTableUpdateCompanionBuilder = ProjectsCompanion Function({
  Value<String> id,
  Value<DateTime> lastModifiedDate,
  Value<DateTime> createdDate,
  Value<String?> name,
  Value<String?> displayName,
  Value<String?> code,
  Value<List<Translation>?> translations,
  Value<bool> disabled,
  Value<int> rowid,
});

final class $$ProjectsTableReferences
    extends BaseReferences<_$AppDatabase, $ProjectsTable, Project> {
  $$ProjectsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$ActivitiesTable, List<Activity>>
      _activitiesRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.activities,
              aliasName:
                  $_aliasNameGenerator(db.projects.id, db.activities.project));

  $$ActivitiesTableProcessedTableManager get activitiesRefs {
    final manager = $$ActivitiesTableTableManager($_db, $_db.activities)
        .filter((f) => f.project.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_activitiesRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$ProjectsTableFilterComposer
    extends Composer<_$AppDatabase, $ProjectsTable> {
  $$ProjectsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get lastModifiedDate => $composableBuilder(
      column: $table.lastModifiedDate,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get displayName => $composableBuilder(
      column: $table.displayName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<List<Translation>?, List<Translation>, String>
      get translations => $composableBuilder(
          column: $table.translations,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<bool> get disabled => $composableBuilder(
      column: $table.disabled, builder: (column) => ColumnFilters(column));

  Expression<bool> activitiesRefs(
      Expression<bool> Function($$ActivitiesTableFilterComposer f) f) {
    final $$ActivitiesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.activities,
        getReferencedColumn: (t) => t.project,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ActivitiesTableFilterComposer(
              $db: $db,
              $table: $db.activities,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$ProjectsTableOrderingComposer
    extends Composer<_$AppDatabase, $ProjectsTable> {
  $$ProjectsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get lastModifiedDate => $composableBuilder(
      column: $table.lastModifiedDate,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get displayName => $composableBuilder(
      column: $table.displayName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get translations => $composableBuilder(
      column: $table.translations,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get disabled => $composableBuilder(
      column: $table.disabled, builder: (column) => ColumnOrderings(column));
}

class $$ProjectsTableAnnotationComposer
    extends Composer<_$AppDatabase, $ProjectsTable> {
  $$ProjectsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get lastModifiedDate => $composableBuilder(
      column: $table.lastModifiedDate, builder: (column) => column);

  GeneratedColumn<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get displayName => $composableBuilder(
      column: $table.displayName, builder: (column) => column);

  GeneratedColumn<String> get code =>
      $composableBuilder(column: $table.code, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<Translation>?, String>
      get translations => $composableBuilder(
          column: $table.translations, builder: (column) => column);

  GeneratedColumn<bool> get disabled =>
      $composableBuilder(column: $table.disabled, builder: (column) => column);

  Expression<T> activitiesRefs<T extends Object>(
      Expression<T> Function($$ActivitiesTableAnnotationComposer a) f) {
    final $$ActivitiesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.activities,
        getReferencedColumn: (t) => t.project,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ActivitiesTableAnnotationComposer(
              $db: $db,
              $table: $db.activities,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$ProjectsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ProjectsTable,
    Project,
    $$ProjectsTableFilterComposer,
    $$ProjectsTableOrderingComposer,
    $$ProjectsTableAnnotationComposer,
    $$ProjectsTableCreateCompanionBuilder,
    $$ProjectsTableUpdateCompanionBuilder,
    (Project, $$ProjectsTableReferences),
    Project,
    PrefetchHooks Function({bool activitiesRefs})> {
  $$ProjectsTableTableManager(_$AppDatabase db, $ProjectsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ProjectsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ProjectsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ProjectsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<DateTime> lastModifiedDate = const Value.absent(),
            Value<DateTime> createdDate = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> displayName = const Value.absent(),
            Value<String?> code = const Value.absent(),
            Value<List<Translation>?> translations = const Value.absent(),
            Value<bool> disabled = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ProjectsCompanion(
            id: id,
            lastModifiedDate: lastModifiedDate,
            createdDate: createdDate,
            name: name,
            displayName: displayName,
            code: code,
            translations: translations,
            disabled: disabled,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            Value<DateTime> lastModifiedDate = const Value.absent(),
            Value<DateTime> createdDate = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> displayName = const Value.absent(),
            Value<String?> code = const Value.absent(),
            Value<List<Translation>?> translations = const Value.absent(),
            required bool disabled,
            Value<int> rowid = const Value.absent(),
          }) =>
              ProjectsCompanion.insert(
            id: id,
            lastModifiedDate: lastModifiedDate,
            createdDate: createdDate,
            name: name,
            displayName: displayName,
            code: code,
            translations: translations,
            disabled: disabled,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$ProjectsTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: ({activitiesRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (activitiesRefs) db.activities],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (activitiesRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable:
                            $$ProjectsTableReferences._activitiesRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$ProjectsTableReferences(db, table, p0)
                                .activitiesRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.project == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$ProjectsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ProjectsTable,
    Project,
    $$ProjectsTableFilterComposer,
    $$ProjectsTableOrderingComposer,
    $$ProjectsTableAnnotationComposer,
    $$ProjectsTableCreateCompanionBuilder,
    $$ProjectsTableUpdateCompanionBuilder,
    (Project, $$ProjectsTableReferences),
    Project,
    PrefetchHooks Function({bool activitiesRefs})>;
typedef $$ActivitiesTableCreateCompanionBuilder = ActivitiesCompanion Function({
  required String id,
  Value<DateTime> lastModifiedDate,
  Value<DateTime> createdDate,
  Value<String?> name,
  Value<String?> displayName,
  Value<String?> code,
  Value<List<Translation>?> translations,
  required String project,
  required bool disabled,
  Value<DateTime?> startDate,
  Value<DateTime?> endDate,
  Value<String?> description,
  Value<int> rowid,
});
typedef $$ActivitiesTableUpdateCompanionBuilder = ActivitiesCompanion Function({
  Value<String> id,
  Value<DateTime> lastModifiedDate,
  Value<DateTime> createdDate,
  Value<String?> name,
  Value<String?> displayName,
  Value<String?> code,
  Value<List<Translation>?> translations,
  Value<String> project,
  Value<bool> disabled,
  Value<DateTime?> startDate,
  Value<DateTime?> endDate,
  Value<String?> description,
  Value<int> rowid,
});

final class $$ActivitiesTableReferences
    extends BaseReferences<_$AppDatabase, $ActivitiesTable, Activity> {
  $$ActivitiesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $ProjectsTable _projectTable(_$AppDatabase db) => db.projects
      .createAlias($_aliasNameGenerator(db.activities.project, db.projects.id));

  $$ProjectsTableProcessedTableManager get project {
    final manager = $$ProjectsTableTableManager($_db, $_db.projects)
        .filter((f) => f.id($_item.project));
    final item = $_typedResult.readTableOrNull(_projectTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static MultiTypedResultKey<$TeamsTable, List<Team>> _teamsRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.teams,
          aliasName: $_aliasNameGenerator(db.activities.id, db.teams.activity));

  $$TeamsTableProcessedTableManager get teamsRefs {
    final manager = $$TeamsTableTableManager($_db, $_db.teams)
        .filter((f) => f.activity.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_teamsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$AssignmentsTable, List<Assignment>>
      _assignmentsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
          db.assignments,
          aliasName:
              $_aliasNameGenerator(db.activities.id, db.assignments.activity));

  $$AssignmentsTableProcessedTableManager get assignmentsRefs {
    final manager = $$AssignmentsTableTableManager($_db, $_db.assignments)
        .filter((f) => f.activity.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_assignmentsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$ActivitiesTableFilterComposer
    extends Composer<_$AppDatabase, $ActivitiesTable> {
  $$ActivitiesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get lastModifiedDate => $composableBuilder(
      column: $table.lastModifiedDate,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get displayName => $composableBuilder(
      column: $table.displayName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<List<Translation>?, List<Translation>, String>
      get translations => $composableBuilder(
          column: $table.translations,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<bool> get disabled => $composableBuilder(
      column: $table.disabled, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get startDate => $composableBuilder(
      column: $table.startDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get endDate => $composableBuilder(
      column: $table.endDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnFilters(column));

  $$ProjectsTableFilterComposer get project {
    final $$ProjectsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.project,
        referencedTable: $db.projects,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ProjectsTableFilterComposer(
              $db: $db,
              $table: $db.projects,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<bool> teamsRefs(
      Expression<bool> Function($$TeamsTableFilterComposer f) f) {
    final $$TeamsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.teams,
        getReferencedColumn: (t) => t.activity,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TeamsTableFilterComposer(
              $db: $db,
              $table: $db.teams,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> assignmentsRefs(
      Expression<bool> Function($$AssignmentsTableFilterComposer f) f) {
    final $$AssignmentsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.assignments,
        getReferencedColumn: (t) => t.activity,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AssignmentsTableFilterComposer(
              $db: $db,
              $table: $db.assignments,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$ActivitiesTableOrderingComposer
    extends Composer<_$AppDatabase, $ActivitiesTable> {
  $$ActivitiesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get lastModifiedDate => $composableBuilder(
      column: $table.lastModifiedDate,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get displayName => $composableBuilder(
      column: $table.displayName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get translations => $composableBuilder(
      column: $table.translations,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get disabled => $composableBuilder(
      column: $table.disabled, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get startDate => $composableBuilder(
      column: $table.startDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get endDate => $composableBuilder(
      column: $table.endDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnOrderings(column));

  $$ProjectsTableOrderingComposer get project {
    final $$ProjectsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.project,
        referencedTable: $db.projects,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ProjectsTableOrderingComposer(
              $db: $db,
              $table: $db.projects,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ActivitiesTableAnnotationComposer
    extends Composer<_$AppDatabase, $ActivitiesTable> {
  $$ActivitiesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get lastModifiedDate => $composableBuilder(
      column: $table.lastModifiedDate, builder: (column) => column);

  GeneratedColumn<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get displayName => $composableBuilder(
      column: $table.displayName, builder: (column) => column);

  GeneratedColumn<String> get code =>
      $composableBuilder(column: $table.code, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<Translation>?, String>
      get translations => $composableBuilder(
          column: $table.translations, builder: (column) => column);

  GeneratedColumn<bool> get disabled =>
      $composableBuilder(column: $table.disabled, builder: (column) => column);

  GeneratedColumn<DateTime> get startDate =>
      $composableBuilder(column: $table.startDate, builder: (column) => column);

  GeneratedColumn<DateTime> get endDate =>
      $composableBuilder(column: $table.endDate, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => column);

  $$ProjectsTableAnnotationComposer get project {
    final $$ProjectsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.project,
        referencedTable: $db.projects,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ProjectsTableAnnotationComposer(
              $db: $db,
              $table: $db.projects,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<T> teamsRefs<T extends Object>(
      Expression<T> Function($$TeamsTableAnnotationComposer a) f) {
    final $$TeamsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.teams,
        getReferencedColumn: (t) => t.activity,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TeamsTableAnnotationComposer(
              $db: $db,
              $table: $db.teams,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> assignmentsRefs<T extends Object>(
      Expression<T> Function($$AssignmentsTableAnnotationComposer a) f) {
    final $$AssignmentsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.assignments,
        getReferencedColumn: (t) => t.activity,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AssignmentsTableAnnotationComposer(
              $db: $db,
              $table: $db.assignments,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$ActivitiesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ActivitiesTable,
    Activity,
    $$ActivitiesTableFilterComposer,
    $$ActivitiesTableOrderingComposer,
    $$ActivitiesTableAnnotationComposer,
    $$ActivitiesTableCreateCompanionBuilder,
    $$ActivitiesTableUpdateCompanionBuilder,
    (Activity, $$ActivitiesTableReferences),
    Activity,
    PrefetchHooks Function(
        {bool project, bool teamsRefs, bool assignmentsRefs})> {
  $$ActivitiesTableTableManager(_$AppDatabase db, $ActivitiesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ActivitiesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ActivitiesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ActivitiesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<DateTime> lastModifiedDate = const Value.absent(),
            Value<DateTime> createdDate = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> displayName = const Value.absent(),
            Value<String?> code = const Value.absent(),
            Value<List<Translation>?> translations = const Value.absent(),
            Value<String> project = const Value.absent(),
            Value<bool> disabled = const Value.absent(),
            Value<DateTime?> startDate = const Value.absent(),
            Value<DateTime?> endDate = const Value.absent(),
            Value<String?> description = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ActivitiesCompanion(
            id: id,
            lastModifiedDate: lastModifiedDate,
            createdDate: createdDate,
            name: name,
            displayName: displayName,
            code: code,
            translations: translations,
            project: project,
            disabled: disabled,
            startDate: startDate,
            endDate: endDate,
            description: description,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            Value<DateTime> lastModifiedDate = const Value.absent(),
            Value<DateTime> createdDate = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> displayName = const Value.absent(),
            Value<String?> code = const Value.absent(),
            Value<List<Translation>?> translations = const Value.absent(),
            required String project,
            required bool disabled,
            Value<DateTime?> startDate = const Value.absent(),
            Value<DateTime?> endDate = const Value.absent(),
            Value<String?> description = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ActivitiesCompanion.insert(
            id: id,
            lastModifiedDate: lastModifiedDate,
            createdDate: createdDate,
            name: name,
            displayName: displayName,
            code: code,
            translations: translations,
            project: project,
            disabled: disabled,
            startDate: startDate,
            endDate: endDate,
            description: description,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$ActivitiesTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: (
              {project = false, teamsRefs = false, assignmentsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (teamsRefs) db.teams,
                if (assignmentsRefs) db.assignments
              ],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (project) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.project,
                    referencedTable:
                        $$ActivitiesTableReferences._projectTable(db),
                    referencedColumn:
                        $$ActivitiesTableReferences._projectTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (teamsRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable:
                            $$ActivitiesTableReferences._teamsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$ActivitiesTableReferences(db, table, p0)
                                .teamsRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.activity == item.id),
                        typedResults: items),
                  if (assignmentsRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$ActivitiesTableReferences
                            ._assignmentsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$ActivitiesTableReferences(db, table, p0)
                                .assignmentsRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.activity == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$ActivitiesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ActivitiesTable,
    Activity,
    $$ActivitiesTableFilterComposer,
    $$ActivitiesTableOrderingComposer,
    $$ActivitiesTableAnnotationComposer,
    $$ActivitiesTableCreateCompanionBuilder,
    $$ActivitiesTableUpdateCompanionBuilder,
    (Activity, $$ActivitiesTableReferences),
    Activity,
    PrefetchHooks Function(
        {bool project, bool teamsRefs, bool assignmentsRefs})>;
typedef $$TeamsTableCreateCompanionBuilder = TeamsCompanion Function({
  required String id,
  Value<DateTime> lastModifiedDate,
  Value<DateTime> createdDate,
  Value<String?> name,
  Value<String?> displayName,
  Value<String?> code,
  Value<List<Translation>?> translations,
  required String activity,
  Value<bool> disabled,
  Value<bool> deleteClientData,
  Value<Map<String, Object?>?> properties,
  Value<List<TeamFormPermission>> formPermissions,
  Value<EntityScope?> scope,
  Value<int> rowid,
});
typedef $$TeamsTableUpdateCompanionBuilder = TeamsCompanion Function({
  Value<String> id,
  Value<DateTime> lastModifiedDate,
  Value<DateTime> createdDate,
  Value<String?> name,
  Value<String?> displayName,
  Value<String?> code,
  Value<List<Translation>?> translations,
  Value<String> activity,
  Value<bool> disabled,
  Value<bool> deleteClientData,
  Value<Map<String, Object?>?> properties,
  Value<List<TeamFormPermission>> formPermissions,
  Value<EntityScope?> scope,
  Value<int> rowid,
});

final class $$TeamsTableReferences
    extends BaseReferences<_$AppDatabase, $TeamsTable, Team> {
  $$TeamsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $ActivitiesTable _activityTable(_$AppDatabase db) => db.activities
      .createAlias($_aliasNameGenerator(db.teams.activity, db.activities.id));

  $$ActivitiesTableProcessedTableManager get activity {
    final manager = $$ActivitiesTableTableManager($_db, $_db.activities)
        .filter((f) => f.id($_item.activity));
    final item = $_typedResult.readTableOrNull(_activityTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static MultiTypedResultKey<$AssignmentsTable, List<Assignment>>
      _assignmentsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
          db.assignments,
          aliasName: $_aliasNameGenerator(db.teams.id, db.assignments.team));

  $$AssignmentsTableProcessedTableManager get assignmentsRefs {
    final manager = $$AssignmentsTableTableManager($_db, $_db.assignments)
        .filter((f) => f.team.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_assignmentsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$DataSubmissionsTable, List<DataSubmission>>
      _dataSubmissionsRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.dataSubmissions,
              aliasName:
                  $_aliasNameGenerator(db.teams.id, db.dataSubmissions.team));

  $$DataSubmissionsTableProcessedTableManager get dataSubmissionsRefs {
    final manager =
        $$DataSubmissionsTableTableManager($_db, $_db.dataSubmissions)
            .filter((f) => f.team.id($_item.id));

    final cache =
        $_typedResult.readTableOrNull(_dataSubmissionsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$TeamsTableFilterComposer extends Composer<_$AppDatabase, $TeamsTable> {
  $$TeamsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get lastModifiedDate => $composableBuilder(
      column: $table.lastModifiedDate,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get displayName => $composableBuilder(
      column: $table.displayName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<List<Translation>?, List<Translation>, String>
      get translations => $composableBuilder(
          column: $table.translations,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<bool> get disabled => $composableBuilder(
      column: $table.disabled, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get deleteClientData => $composableBuilder(
      column: $table.deleteClientData,
      builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<Map<String, Object?>?, Map<String, Object>?,
          String>
      get properties => $composableBuilder(
          column: $table.properties,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<List<TeamFormPermission>,
          List<TeamFormPermission>, String>
      get formPermissions => $composableBuilder(
          column: $table.formPermissions,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<EntityScope?, EntityScope, String> get scope =>
      $composableBuilder(
          column: $table.scope,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  $$ActivitiesTableFilterComposer get activity {
    final $$ActivitiesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.activity,
        referencedTable: $db.activities,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ActivitiesTableFilterComposer(
              $db: $db,
              $table: $db.activities,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<bool> assignmentsRefs(
      Expression<bool> Function($$AssignmentsTableFilterComposer f) f) {
    final $$AssignmentsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.assignments,
        getReferencedColumn: (t) => t.team,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AssignmentsTableFilterComposer(
              $db: $db,
              $table: $db.assignments,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> dataSubmissionsRefs(
      Expression<bool> Function($$DataSubmissionsTableFilterComposer f) f) {
    final $$DataSubmissionsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.dataSubmissions,
        getReferencedColumn: (t) => t.team,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DataSubmissionsTableFilterComposer(
              $db: $db,
              $table: $db.dataSubmissions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$TeamsTableOrderingComposer
    extends Composer<_$AppDatabase, $TeamsTable> {
  $$TeamsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get lastModifiedDate => $composableBuilder(
      column: $table.lastModifiedDate,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get displayName => $composableBuilder(
      column: $table.displayName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get translations => $composableBuilder(
      column: $table.translations,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get disabled => $composableBuilder(
      column: $table.disabled, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get deleteClientData => $composableBuilder(
      column: $table.deleteClientData,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get properties => $composableBuilder(
      column: $table.properties, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get formPermissions => $composableBuilder(
      column: $table.formPermissions,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get scope => $composableBuilder(
      column: $table.scope, builder: (column) => ColumnOrderings(column));

  $$ActivitiesTableOrderingComposer get activity {
    final $$ActivitiesTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.activity,
        referencedTable: $db.activities,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ActivitiesTableOrderingComposer(
              $db: $db,
              $table: $db.activities,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$TeamsTableAnnotationComposer
    extends Composer<_$AppDatabase, $TeamsTable> {
  $$TeamsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get lastModifiedDate => $composableBuilder(
      column: $table.lastModifiedDate, builder: (column) => column);

  GeneratedColumn<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get displayName => $composableBuilder(
      column: $table.displayName, builder: (column) => column);

  GeneratedColumn<String> get code =>
      $composableBuilder(column: $table.code, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<Translation>?, String>
      get translations => $composableBuilder(
          column: $table.translations, builder: (column) => column);

  GeneratedColumn<bool> get disabled =>
      $composableBuilder(column: $table.disabled, builder: (column) => column);

  GeneratedColumn<bool> get deleteClientData => $composableBuilder(
      column: $table.deleteClientData, builder: (column) => column);

  GeneratedColumnWithTypeConverter<Map<String, Object?>?, String>
      get properties => $composableBuilder(
          column: $table.properties, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<TeamFormPermission>, String>
      get formPermissions => $composableBuilder(
          column: $table.formPermissions, builder: (column) => column);

  GeneratedColumnWithTypeConverter<EntityScope?, String> get scope =>
      $composableBuilder(column: $table.scope, builder: (column) => column);

  $$ActivitiesTableAnnotationComposer get activity {
    final $$ActivitiesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.activity,
        referencedTable: $db.activities,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ActivitiesTableAnnotationComposer(
              $db: $db,
              $table: $db.activities,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<T> assignmentsRefs<T extends Object>(
      Expression<T> Function($$AssignmentsTableAnnotationComposer a) f) {
    final $$AssignmentsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.assignments,
        getReferencedColumn: (t) => t.team,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AssignmentsTableAnnotationComposer(
              $db: $db,
              $table: $db.assignments,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> dataSubmissionsRefs<T extends Object>(
      Expression<T> Function($$DataSubmissionsTableAnnotationComposer a) f) {
    final $$DataSubmissionsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.dataSubmissions,
        getReferencedColumn: (t) => t.team,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DataSubmissionsTableAnnotationComposer(
              $db: $db,
              $table: $db.dataSubmissions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$TeamsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $TeamsTable,
    Team,
    $$TeamsTableFilterComposer,
    $$TeamsTableOrderingComposer,
    $$TeamsTableAnnotationComposer,
    $$TeamsTableCreateCompanionBuilder,
    $$TeamsTableUpdateCompanionBuilder,
    (Team, $$TeamsTableReferences),
    Team,
    PrefetchHooks Function(
        {bool activity, bool assignmentsRefs, bool dataSubmissionsRefs})> {
  $$TeamsTableTableManager(_$AppDatabase db, $TeamsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TeamsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TeamsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TeamsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<DateTime> lastModifiedDate = const Value.absent(),
            Value<DateTime> createdDate = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> displayName = const Value.absent(),
            Value<String?> code = const Value.absent(),
            Value<List<Translation>?> translations = const Value.absent(),
            Value<String> activity = const Value.absent(),
            Value<bool> disabled = const Value.absent(),
            Value<bool> deleteClientData = const Value.absent(),
            Value<Map<String, Object?>?> properties = const Value.absent(),
            Value<List<TeamFormPermission>> formPermissions =
                const Value.absent(),
            Value<EntityScope?> scope = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              TeamsCompanion(
            id: id,
            lastModifiedDate: lastModifiedDate,
            createdDate: createdDate,
            name: name,
            displayName: displayName,
            code: code,
            translations: translations,
            activity: activity,
            disabled: disabled,
            deleteClientData: deleteClientData,
            properties: properties,
            formPermissions: formPermissions,
            scope: scope,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            Value<DateTime> lastModifiedDate = const Value.absent(),
            Value<DateTime> createdDate = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> displayName = const Value.absent(),
            Value<String?> code = const Value.absent(),
            Value<List<Translation>?> translations = const Value.absent(),
            required String activity,
            Value<bool> disabled = const Value.absent(),
            Value<bool> deleteClientData = const Value.absent(),
            Value<Map<String, Object?>?> properties = const Value.absent(),
            Value<List<TeamFormPermission>> formPermissions =
                const Value.absent(),
            Value<EntityScope?> scope = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              TeamsCompanion.insert(
            id: id,
            lastModifiedDate: lastModifiedDate,
            createdDate: createdDate,
            name: name,
            displayName: displayName,
            code: code,
            translations: translations,
            activity: activity,
            disabled: disabled,
            deleteClientData: deleteClientData,
            properties: properties,
            formPermissions: formPermissions,
            scope: scope,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$TeamsTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: (
              {activity = false,
              assignmentsRefs = false,
              dataSubmissionsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (assignmentsRefs) db.assignments,
                if (dataSubmissionsRefs) db.dataSubmissions
              ],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (activity) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.activity,
                    referencedTable: $$TeamsTableReferences._activityTable(db),
                    referencedColumn:
                        $$TeamsTableReferences._activityTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (assignmentsRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable:
                            $$TeamsTableReferences._assignmentsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$TeamsTableReferences(db, table, p0)
                                .assignmentsRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) =>
                                referencedItems.where((e) => e.team == item.id),
                        typedResults: items),
                  if (dataSubmissionsRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$TeamsTableReferences
                            ._dataSubmissionsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$TeamsTableReferences(db, table, p0)
                                .dataSubmissionsRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) =>
                                referencedItems.where((e) => e.team == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$TeamsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $TeamsTable,
    Team,
    $$TeamsTableFilterComposer,
    $$TeamsTableOrderingComposer,
    $$TeamsTableAnnotationComposer,
    $$TeamsTableCreateCompanionBuilder,
    $$TeamsTableUpdateCompanionBuilder,
    (Team, $$TeamsTableReferences),
    Team,
    PrefetchHooks Function(
        {bool activity, bool assignmentsRefs, bool dataSubmissionsRefs})>;
typedef $$AssignmentsTableCreateCompanionBuilder = AssignmentsCompanion
    Function({
  required String id,
  Value<DateTime> lastModifiedDate,
  Value<DateTime> createdDate,
  required String activity,
  required String team,
  required String orgUnit,
  Value<String?> parent,
  Value<int?> startDay,
  Value<DateTime?> startDate,
  Value<AssignmentStatus?> status,
  Value<Map<String, Object?>> allocatedResources,
  Value<List<String>> forms,
  Value<EntityScope?> scope,
  Value<int> rowid,
});
typedef $$AssignmentsTableUpdateCompanionBuilder = AssignmentsCompanion
    Function({
  Value<String> id,
  Value<DateTime> lastModifiedDate,
  Value<DateTime> createdDate,
  Value<String> activity,
  Value<String> team,
  Value<String> orgUnit,
  Value<String?> parent,
  Value<int?> startDay,
  Value<DateTime?> startDate,
  Value<AssignmentStatus?> status,
  Value<Map<String, Object?>> allocatedResources,
  Value<List<String>> forms,
  Value<EntityScope?> scope,
  Value<int> rowid,
});

final class $$AssignmentsTableReferences
    extends BaseReferences<_$AppDatabase, $AssignmentsTable, Assignment> {
  $$AssignmentsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $ActivitiesTable _activityTable(_$AppDatabase db) =>
      db.activities.createAlias(
          $_aliasNameGenerator(db.assignments.activity, db.activities.id));

  $$ActivitiesTableProcessedTableManager get activity {
    final manager = $$ActivitiesTableTableManager($_db, $_db.activities)
        .filter((f) => f.id($_item.activity));
    final item = $_typedResult.readTableOrNull(_activityTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $TeamsTable _teamTable(_$AppDatabase db) => db.teams
      .createAlias($_aliasNameGenerator(db.assignments.team, db.teams.id));

  $$TeamsTableProcessedTableManager get team {
    final manager = $$TeamsTableTableManager($_db, $_db.teams)
        .filter((f) => f.id($_item.team));
    final item = $_typedResult.readTableOrNull(_teamTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $OrgUnitsTable _orgUnitTable(_$AppDatabase db) =>
      db.orgUnits.createAlias(
          $_aliasNameGenerator(db.assignments.orgUnit, db.orgUnits.id));

  $$OrgUnitsTableProcessedTableManager get orgUnit {
    final manager = $$OrgUnitsTableTableManager($_db, $_db.orgUnits)
        .filter((f) => f.id($_item.orgUnit));
    final item = $_typedResult.readTableOrNull(_orgUnitTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $AssignmentsTable _parentTable(_$AppDatabase db) =>
      db.assignments.createAlias(
          $_aliasNameGenerator(db.assignments.parent, db.assignments.id));

  $$AssignmentsTableProcessedTableManager? get parent {
    if ($_item.parent == null) return null;
    final manager = $$AssignmentsTableTableManager($_db, $_db.assignments)
        .filter((f) => f.id($_item.parent!));
    final item = $_typedResult.readTableOrNull(_parentTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static MultiTypedResultKey<$DataSubmissionsTable, List<DataSubmission>>
      _dataSubmissionsRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.dataSubmissions,
              aliasName: $_aliasNameGenerator(
                  db.assignments.id, db.dataSubmissions.assignment));

  $$DataSubmissionsTableProcessedTableManager get dataSubmissionsRefs {
    final manager =
        $$DataSubmissionsTableTableManager($_db, $_db.dataSubmissions)
            .filter((f) => f.assignment.id($_item.id));

    final cache =
        $_typedResult.readTableOrNull(_dataSubmissionsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$AssignmentsTableFilterComposer
    extends Composer<_$AppDatabase, $AssignmentsTable> {
  $$AssignmentsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get lastModifiedDate => $composableBuilder(
      column: $table.lastModifiedDate,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get startDay => $composableBuilder(
      column: $table.startDay, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get startDate => $composableBuilder(
      column: $table.startDate, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<AssignmentStatus?, AssignmentStatus, String>
      get status => $composableBuilder(
          column: $table.status,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<Map<String, Object?>, Map<String, Object>,
          String>
      get allocatedResources => $composableBuilder(
          column: $table.allocatedResources,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<List<String>, List<String>, String>
      get forms => $composableBuilder(
          column: $table.forms,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<EntityScope?, EntityScope, String> get scope =>
      $composableBuilder(
          column: $table.scope,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  $$ActivitiesTableFilterComposer get activity {
    final $$ActivitiesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.activity,
        referencedTable: $db.activities,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ActivitiesTableFilterComposer(
              $db: $db,
              $table: $db.activities,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$TeamsTableFilterComposer get team {
    final $$TeamsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.team,
        referencedTable: $db.teams,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TeamsTableFilterComposer(
              $db: $db,
              $table: $db.teams,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$OrgUnitsTableFilterComposer get orgUnit {
    final $$OrgUnitsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.orgUnit,
        referencedTable: $db.orgUnits,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$OrgUnitsTableFilterComposer(
              $db: $db,
              $table: $db.orgUnits,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$AssignmentsTableFilterComposer get parent {
    final $$AssignmentsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.parent,
        referencedTable: $db.assignments,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AssignmentsTableFilterComposer(
              $db: $db,
              $table: $db.assignments,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<bool> dataSubmissionsRefs(
      Expression<bool> Function($$DataSubmissionsTableFilterComposer f) f) {
    final $$DataSubmissionsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.dataSubmissions,
        getReferencedColumn: (t) => t.assignment,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DataSubmissionsTableFilterComposer(
              $db: $db,
              $table: $db.dataSubmissions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$AssignmentsTableOrderingComposer
    extends Composer<_$AppDatabase, $AssignmentsTable> {
  $$AssignmentsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get lastModifiedDate => $composableBuilder(
      column: $table.lastModifiedDate,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get startDay => $composableBuilder(
      column: $table.startDay, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get startDate => $composableBuilder(
      column: $table.startDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get allocatedResources => $composableBuilder(
      column: $table.allocatedResources,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get forms => $composableBuilder(
      column: $table.forms, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get scope => $composableBuilder(
      column: $table.scope, builder: (column) => ColumnOrderings(column));

  $$ActivitiesTableOrderingComposer get activity {
    final $$ActivitiesTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.activity,
        referencedTable: $db.activities,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ActivitiesTableOrderingComposer(
              $db: $db,
              $table: $db.activities,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$TeamsTableOrderingComposer get team {
    final $$TeamsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.team,
        referencedTable: $db.teams,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TeamsTableOrderingComposer(
              $db: $db,
              $table: $db.teams,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$OrgUnitsTableOrderingComposer get orgUnit {
    final $$OrgUnitsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.orgUnit,
        referencedTable: $db.orgUnits,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$OrgUnitsTableOrderingComposer(
              $db: $db,
              $table: $db.orgUnits,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$AssignmentsTableOrderingComposer get parent {
    final $$AssignmentsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.parent,
        referencedTable: $db.assignments,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AssignmentsTableOrderingComposer(
              $db: $db,
              $table: $db.assignments,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$AssignmentsTableAnnotationComposer
    extends Composer<_$AppDatabase, $AssignmentsTable> {
  $$AssignmentsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get lastModifiedDate => $composableBuilder(
      column: $table.lastModifiedDate, builder: (column) => column);

  GeneratedColumn<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => column);

  GeneratedColumn<int> get startDay =>
      $composableBuilder(column: $table.startDay, builder: (column) => column);

  GeneratedColumn<DateTime> get startDate =>
      $composableBuilder(column: $table.startDate, builder: (column) => column);

  GeneratedColumnWithTypeConverter<AssignmentStatus?, String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumnWithTypeConverter<Map<String, Object?>, String>
      get allocatedResources => $composableBuilder(
          column: $table.allocatedResources, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<String>, String> get forms =>
      $composableBuilder(column: $table.forms, builder: (column) => column);

  GeneratedColumnWithTypeConverter<EntityScope?, String> get scope =>
      $composableBuilder(column: $table.scope, builder: (column) => column);

  $$ActivitiesTableAnnotationComposer get activity {
    final $$ActivitiesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.activity,
        referencedTable: $db.activities,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ActivitiesTableAnnotationComposer(
              $db: $db,
              $table: $db.activities,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$TeamsTableAnnotationComposer get team {
    final $$TeamsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.team,
        referencedTable: $db.teams,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TeamsTableAnnotationComposer(
              $db: $db,
              $table: $db.teams,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$OrgUnitsTableAnnotationComposer get orgUnit {
    final $$OrgUnitsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.orgUnit,
        referencedTable: $db.orgUnits,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$OrgUnitsTableAnnotationComposer(
              $db: $db,
              $table: $db.orgUnits,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$AssignmentsTableAnnotationComposer get parent {
    final $$AssignmentsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.parent,
        referencedTable: $db.assignments,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AssignmentsTableAnnotationComposer(
              $db: $db,
              $table: $db.assignments,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<T> dataSubmissionsRefs<T extends Object>(
      Expression<T> Function($$DataSubmissionsTableAnnotationComposer a) f) {
    final $$DataSubmissionsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.dataSubmissions,
        getReferencedColumn: (t) => t.assignment,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DataSubmissionsTableAnnotationComposer(
              $db: $db,
              $table: $db.dataSubmissions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$AssignmentsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $AssignmentsTable,
    Assignment,
    $$AssignmentsTableFilterComposer,
    $$AssignmentsTableOrderingComposer,
    $$AssignmentsTableAnnotationComposer,
    $$AssignmentsTableCreateCompanionBuilder,
    $$AssignmentsTableUpdateCompanionBuilder,
    (Assignment, $$AssignmentsTableReferences),
    Assignment,
    PrefetchHooks Function(
        {bool activity,
        bool team,
        bool orgUnit,
        bool parent,
        bool dataSubmissionsRefs})> {
  $$AssignmentsTableTableManager(_$AppDatabase db, $AssignmentsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AssignmentsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AssignmentsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AssignmentsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<DateTime> lastModifiedDate = const Value.absent(),
            Value<DateTime> createdDate = const Value.absent(),
            Value<String> activity = const Value.absent(),
            Value<String> team = const Value.absent(),
            Value<String> orgUnit = const Value.absent(),
            Value<String?> parent = const Value.absent(),
            Value<int?> startDay = const Value.absent(),
            Value<DateTime?> startDate = const Value.absent(),
            Value<AssignmentStatus?> status = const Value.absent(),
            Value<Map<String, Object?>> allocatedResources =
                const Value.absent(),
            Value<List<String>> forms = const Value.absent(),
            Value<EntityScope?> scope = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              AssignmentsCompanion(
            id: id,
            lastModifiedDate: lastModifiedDate,
            createdDate: createdDate,
            activity: activity,
            team: team,
            orgUnit: orgUnit,
            parent: parent,
            startDay: startDay,
            startDate: startDate,
            status: status,
            allocatedResources: allocatedResources,
            forms: forms,
            scope: scope,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            Value<DateTime> lastModifiedDate = const Value.absent(),
            Value<DateTime> createdDate = const Value.absent(),
            required String activity,
            required String team,
            required String orgUnit,
            Value<String?> parent = const Value.absent(),
            Value<int?> startDay = const Value.absent(),
            Value<DateTime?> startDate = const Value.absent(),
            Value<AssignmentStatus?> status = const Value.absent(),
            Value<Map<String, Object?>> allocatedResources =
                const Value.absent(),
            Value<List<String>> forms = const Value.absent(),
            Value<EntityScope?> scope = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              AssignmentsCompanion.insert(
            id: id,
            lastModifiedDate: lastModifiedDate,
            createdDate: createdDate,
            activity: activity,
            team: team,
            orgUnit: orgUnit,
            parent: parent,
            startDay: startDay,
            startDate: startDate,
            status: status,
            allocatedResources: allocatedResources,
            forms: forms,
            scope: scope,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$AssignmentsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: (
              {activity = false,
              team = false,
              orgUnit = false,
              parent = false,
              dataSubmissionsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (dataSubmissionsRefs) db.dataSubmissions
              ],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (activity) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.activity,
                    referencedTable:
                        $$AssignmentsTableReferences._activityTable(db),
                    referencedColumn:
                        $$AssignmentsTableReferences._activityTable(db).id,
                  ) as T;
                }
                if (team) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.team,
                    referencedTable:
                        $$AssignmentsTableReferences._teamTable(db),
                    referencedColumn:
                        $$AssignmentsTableReferences._teamTable(db).id,
                  ) as T;
                }
                if (orgUnit) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.orgUnit,
                    referencedTable:
                        $$AssignmentsTableReferences._orgUnitTable(db),
                    referencedColumn:
                        $$AssignmentsTableReferences._orgUnitTable(db).id,
                  ) as T;
                }
                if (parent) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.parent,
                    referencedTable:
                        $$AssignmentsTableReferences._parentTable(db),
                    referencedColumn:
                        $$AssignmentsTableReferences._parentTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (dataSubmissionsRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$AssignmentsTableReferences
                            ._dataSubmissionsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$AssignmentsTableReferences(db, table, p0)
                                .dataSubmissionsRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.assignment == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$AssignmentsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $AssignmentsTable,
    Assignment,
    $$AssignmentsTableFilterComposer,
    $$AssignmentsTableOrderingComposer,
    $$AssignmentsTableAnnotationComposer,
    $$AssignmentsTableCreateCompanionBuilder,
    $$AssignmentsTableUpdateCompanionBuilder,
    (Assignment, $$AssignmentsTableReferences),
    Assignment,
    PrefetchHooks Function(
        {bool activity,
        bool team,
        bool orgUnit,
        bool parent,
        bool dataSubmissionsRefs})>;
typedef $$FormTemplatesTableCreateCompanionBuilder = FormTemplatesCompanion
    Function({
  required String id,
  Value<DateTime> lastModifiedDate,
  Value<DateTime> createdDate,
  Value<String?> name,
  Value<String?> displayName,
  Value<String?> code,
  Value<List<Translation>?> translations,
  Value<Map<String, String>> label,
  required int version,
  Value<int> rowid,
});
typedef $$FormTemplatesTableUpdateCompanionBuilder = FormTemplatesCompanion
    Function({
  Value<String> id,
  Value<DateTime> lastModifiedDate,
  Value<DateTime> createdDate,
  Value<String?> name,
  Value<String?> displayName,
  Value<String?> code,
  Value<List<Translation>?> translations,
  Value<Map<String, String>> label,
  Value<int> version,
  Value<int> rowid,
});

final class $$FormTemplatesTableReferences
    extends BaseReferences<_$AppDatabase, $FormTemplatesTable, FormTemplate> {
  $$FormTemplatesTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$FormVersionsTable, List<FormVersion>>
      _formVersionsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
          db.formVersions,
          aliasName:
              $_aliasNameGenerator(db.formTemplates.id, db.formVersions.form));

  $$FormVersionsTableProcessedTableManager get formVersionsRefs {
    final manager = $$FormVersionsTableTableManager($_db, $_db.formVersions)
        .filter((f) => f.form.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_formVersionsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$FormTemplatesTableFilterComposer
    extends Composer<_$AppDatabase, $FormTemplatesTable> {
  $$FormTemplatesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get lastModifiedDate => $composableBuilder(
      column: $table.lastModifiedDate,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get displayName => $composableBuilder(
      column: $table.displayName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<List<Translation>?, List<Translation>, String>
      get translations => $composableBuilder(
          column: $table.translations,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<Map<String, String>, Map<String, String>,
          String>
      get label => $composableBuilder(
          column: $table.label,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<int> get version => $composableBuilder(
      column: $table.version, builder: (column) => ColumnFilters(column));

  Expression<bool> formVersionsRefs(
      Expression<bool> Function($$FormVersionsTableFilterComposer f) f) {
    final $$FormVersionsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.formVersions,
        getReferencedColumn: (t) => t.form,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$FormVersionsTableFilterComposer(
              $db: $db,
              $table: $db.formVersions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$FormTemplatesTableOrderingComposer
    extends Composer<_$AppDatabase, $FormTemplatesTable> {
  $$FormTemplatesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get lastModifiedDate => $composableBuilder(
      column: $table.lastModifiedDate,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get displayName => $composableBuilder(
      column: $table.displayName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get translations => $composableBuilder(
      column: $table.translations,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get label => $composableBuilder(
      column: $table.label, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get version => $composableBuilder(
      column: $table.version, builder: (column) => ColumnOrderings(column));
}

class $$FormTemplatesTableAnnotationComposer
    extends Composer<_$AppDatabase, $FormTemplatesTable> {
  $$FormTemplatesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get lastModifiedDate => $composableBuilder(
      column: $table.lastModifiedDate, builder: (column) => column);

  GeneratedColumn<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get displayName => $composableBuilder(
      column: $table.displayName, builder: (column) => column);

  GeneratedColumn<String> get code =>
      $composableBuilder(column: $table.code, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<Translation>?, String>
      get translations => $composableBuilder(
          column: $table.translations, builder: (column) => column);

  GeneratedColumnWithTypeConverter<Map<String, String>, String> get label =>
      $composableBuilder(column: $table.label, builder: (column) => column);

  GeneratedColumn<int> get version =>
      $composableBuilder(column: $table.version, builder: (column) => column);

  Expression<T> formVersionsRefs<T extends Object>(
      Expression<T> Function($$FormVersionsTableAnnotationComposer a) f) {
    final $$FormVersionsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.formVersions,
        getReferencedColumn: (t) => t.form,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$FormVersionsTableAnnotationComposer(
              $db: $db,
              $table: $db.formVersions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$FormTemplatesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $FormTemplatesTable,
    FormTemplate,
    $$FormTemplatesTableFilterComposer,
    $$FormTemplatesTableOrderingComposer,
    $$FormTemplatesTableAnnotationComposer,
    $$FormTemplatesTableCreateCompanionBuilder,
    $$FormTemplatesTableUpdateCompanionBuilder,
    (FormTemplate, $$FormTemplatesTableReferences),
    FormTemplate,
    PrefetchHooks Function({bool formVersionsRefs})> {
  $$FormTemplatesTableTableManager(_$AppDatabase db, $FormTemplatesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$FormTemplatesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$FormTemplatesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$FormTemplatesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<DateTime> lastModifiedDate = const Value.absent(),
            Value<DateTime> createdDate = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> displayName = const Value.absent(),
            Value<String?> code = const Value.absent(),
            Value<List<Translation>?> translations = const Value.absent(),
            Value<Map<String, String>> label = const Value.absent(),
            Value<int> version = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              FormTemplatesCompanion(
            id: id,
            lastModifiedDate: lastModifiedDate,
            createdDate: createdDate,
            name: name,
            displayName: displayName,
            code: code,
            translations: translations,
            label: label,
            version: version,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            Value<DateTime> lastModifiedDate = const Value.absent(),
            Value<DateTime> createdDate = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> displayName = const Value.absent(),
            Value<String?> code = const Value.absent(),
            Value<List<Translation>?> translations = const Value.absent(),
            Value<Map<String, String>> label = const Value.absent(),
            required int version,
            Value<int> rowid = const Value.absent(),
          }) =>
              FormTemplatesCompanion.insert(
            id: id,
            lastModifiedDate: lastModifiedDate,
            createdDate: createdDate,
            name: name,
            displayName: displayName,
            code: code,
            translations: translations,
            label: label,
            version: version,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$FormTemplatesTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({formVersionsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (formVersionsRefs) db.formVersions],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (formVersionsRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$FormTemplatesTableReferences
                            ._formVersionsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$FormTemplatesTableReferences(db, table, p0)
                                .formVersionsRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) =>
                                referencedItems.where((e) => e.form == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$FormTemplatesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $FormTemplatesTable,
    FormTemplate,
    $$FormTemplatesTableFilterComposer,
    $$FormTemplatesTableOrderingComposer,
    $$FormTemplatesTableAnnotationComposer,
    $$FormTemplatesTableCreateCompanionBuilder,
    $$FormTemplatesTableUpdateCompanionBuilder,
    (FormTemplate, $$FormTemplatesTableReferences),
    FormTemplate,
    PrefetchHooks Function({bool formVersionsRefs})>;
typedef $$FormVersionsTableCreateCompanionBuilder = FormVersionsCompanion
    Function({
  required String id,
  Value<DateTime> lastModifiedDate,
  Value<DateTime> createdDate,
  Value<String?> name,
  Value<String?> displayName,
  Value<String?> code,
  Value<List<Translation>?> translations,
  required String form,
  required int version,
  Value<List<Template>?> treeFields,
  Value<List<FormOption>> options,
  Value<List<DOptionSet>?> optionSets,
  Value<Map<String, String>> label,
  required String defaultLocal,
  Value<List<Template>?> fieldsConf,
  Value<List<Template>?> sections,
  Value<String?> description,
  required ValidationStrategy validationStrategy,
  Value<int> rowid,
});
typedef $$FormVersionsTableUpdateCompanionBuilder = FormVersionsCompanion
    Function({
  Value<String> id,
  Value<DateTime> lastModifiedDate,
  Value<DateTime> createdDate,
  Value<String?> name,
  Value<String?> displayName,
  Value<String?> code,
  Value<List<Translation>?> translations,
  Value<String> form,
  Value<int> version,
  Value<List<Template>?> treeFields,
  Value<List<FormOption>> options,
  Value<List<DOptionSet>?> optionSets,
  Value<Map<String, String>> label,
  Value<String> defaultLocal,
  Value<List<Template>?> fieldsConf,
  Value<List<Template>?> sections,
  Value<String?> description,
  Value<ValidationStrategy> validationStrategy,
  Value<int> rowid,
});

final class $$FormVersionsTableReferences
    extends BaseReferences<_$AppDatabase, $FormVersionsTable, FormVersion> {
  $$FormVersionsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $FormTemplatesTable _formTable(_$AppDatabase db) =>
      db.formTemplates.createAlias(
          $_aliasNameGenerator(db.formVersions.form, db.formTemplates.id));

  $$FormTemplatesTableProcessedTableManager get form {
    final manager = $$FormTemplatesTableTableManager($_db, $_db.formTemplates)
        .filter((f) => f.id($_item.form));
    final item = $_typedResult.readTableOrNull(_formTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static MultiTypedResultKey<$DataSubmissionsTable, List<DataSubmission>>
      _dataSubmissionsRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.dataSubmissions,
              aliasName: $_aliasNameGenerator(
                  db.formVersions.id, db.dataSubmissions.formVersion));

  $$DataSubmissionsTableProcessedTableManager get dataSubmissionsRefs {
    final manager =
        $$DataSubmissionsTableTableManager($_db, $_db.dataSubmissions)
            .filter((f) => f.formVersion.id($_item.id));

    final cache =
        $_typedResult.readTableOrNull(_dataSubmissionsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$FormVersionsTableFilterComposer
    extends Composer<_$AppDatabase, $FormVersionsTable> {
  $$FormVersionsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get lastModifiedDate => $composableBuilder(
      column: $table.lastModifiedDate,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get displayName => $composableBuilder(
      column: $table.displayName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<List<Translation>?, List<Translation>, String>
      get translations => $composableBuilder(
          column: $table.translations,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<int> get version => $composableBuilder(
      column: $table.version, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<List<Template>?, List<Template>, String>
      get treeFields => $composableBuilder(
          column: $table.treeFields,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<List<FormOption>, List<FormOption>, String>
      get options => $composableBuilder(
          column: $table.options,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<List<DOptionSet>?, List<DOptionSet>, String>
      get optionSets => $composableBuilder(
          column: $table.optionSets,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<Map<String, String>, Map<String, String>,
          String>
      get label => $composableBuilder(
          column: $table.label,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<String> get defaultLocal => $composableBuilder(
      column: $table.defaultLocal, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<List<Template>?, List<Template>, String>
      get fieldsConf => $composableBuilder(
          column: $table.fieldsConf,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<List<Template>?, List<Template>, String>
      get sections => $composableBuilder(
          column: $table.sections,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<ValidationStrategy, ValidationStrategy, String>
      get validationStrategy => $composableBuilder(
          column: $table.validationStrategy,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  $$FormTemplatesTableFilterComposer get form {
    final $$FormTemplatesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.form,
        referencedTable: $db.formTemplates,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$FormTemplatesTableFilterComposer(
              $db: $db,
              $table: $db.formTemplates,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<bool> dataSubmissionsRefs(
      Expression<bool> Function($$DataSubmissionsTableFilterComposer f) f) {
    final $$DataSubmissionsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.dataSubmissions,
        getReferencedColumn: (t) => t.formVersion,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DataSubmissionsTableFilterComposer(
              $db: $db,
              $table: $db.dataSubmissions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$FormVersionsTableOrderingComposer
    extends Composer<_$AppDatabase, $FormVersionsTable> {
  $$FormVersionsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get lastModifiedDate => $composableBuilder(
      column: $table.lastModifiedDate,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get displayName => $composableBuilder(
      column: $table.displayName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get translations => $composableBuilder(
      column: $table.translations,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get version => $composableBuilder(
      column: $table.version, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get treeFields => $composableBuilder(
      column: $table.treeFields, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get options => $composableBuilder(
      column: $table.options, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get optionSets => $composableBuilder(
      column: $table.optionSets, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get label => $composableBuilder(
      column: $table.label, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get defaultLocal => $composableBuilder(
      column: $table.defaultLocal,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get fieldsConf => $composableBuilder(
      column: $table.fieldsConf, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get sections => $composableBuilder(
      column: $table.sections, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get validationStrategy => $composableBuilder(
      column: $table.validationStrategy,
      builder: (column) => ColumnOrderings(column));

  $$FormTemplatesTableOrderingComposer get form {
    final $$FormTemplatesTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.form,
        referencedTable: $db.formTemplates,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$FormTemplatesTableOrderingComposer(
              $db: $db,
              $table: $db.formTemplates,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$FormVersionsTableAnnotationComposer
    extends Composer<_$AppDatabase, $FormVersionsTable> {
  $$FormVersionsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get lastModifiedDate => $composableBuilder(
      column: $table.lastModifiedDate, builder: (column) => column);

  GeneratedColumn<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get displayName => $composableBuilder(
      column: $table.displayName, builder: (column) => column);

  GeneratedColumn<String> get code =>
      $composableBuilder(column: $table.code, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<Translation>?, String>
      get translations => $composableBuilder(
          column: $table.translations, builder: (column) => column);

  GeneratedColumn<int> get version =>
      $composableBuilder(column: $table.version, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<Template>?, String> get treeFields =>
      $composableBuilder(
          column: $table.treeFields, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<FormOption>, String> get options =>
      $composableBuilder(column: $table.options, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<DOptionSet>?, String> get optionSets =>
      $composableBuilder(
          column: $table.optionSets, builder: (column) => column);

  GeneratedColumnWithTypeConverter<Map<String, String>, String> get label =>
      $composableBuilder(column: $table.label, builder: (column) => column);

  GeneratedColumn<String> get defaultLocal => $composableBuilder(
      column: $table.defaultLocal, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<Template>?, String> get fieldsConf =>
      $composableBuilder(
          column: $table.fieldsConf, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<Template>?, String> get sections =>
      $composableBuilder(column: $table.sections, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => column);

  GeneratedColumnWithTypeConverter<ValidationStrategy, String>
      get validationStrategy => $composableBuilder(
          column: $table.validationStrategy, builder: (column) => column);

  $$FormTemplatesTableAnnotationComposer get form {
    final $$FormTemplatesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.form,
        referencedTable: $db.formTemplates,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$FormTemplatesTableAnnotationComposer(
              $db: $db,
              $table: $db.formTemplates,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<T> dataSubmissionsRefs<T extends Object>(
      Expression<T> Function($$DataSubmissionsTableAnnotationComposer a) f) {
    final $$DataSubmissionsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.dataSubmissions,
        getReferencedColumn: (t) => t.formVersion,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DataSubmissionsTableAnnotationComposer(
              $db: $db,
              $table: $db.dataSubmissions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$FormVersionsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $FormVersionsTable,
    FormVersion,
    $$FormVersionsTableFilterComposer,
    $$FormVersionsTableOrderingComposer,
    $$FormVersionsTableAnnotationComposer,
    $$FormVersionsTableCreateCompanionBuilder,
    $$FormVersionsTableUpdateCompanionBuilder,
    (FormVersion, $$FormVersionsTableReferences),
    FormVersion,
    PrefetchHooks Function({bool form, bool dataSubmissionsRefs})> {
  $$FormVersionsTableTableManager(_$AppDatabase db, $FormVersionsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$FormVersionsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$FormVersionsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$FormVersionsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<DateTime> lastModifiedDate = const Value.absent(),
            Value<DateTime> createdDate = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> displayName = const Value.absent(),
            Value<String?> code = const Value.absent(),
            Value<List<Translation>?> translations = const Value.absent(),
            Value<String> form = const Value.absent(),
            Value<int> version = const Value.absent(),
            Value<List<Template>?> treeFields = const Value.absent(),
            Value<List<FormOption>> options = const Value.absent(),
            Value<List<DOptionSet>?> optionSets = const Value.absent(),
            Value<Map<String, String>> label = const Value.absent(),
            Value<String> defaultLocal = const Value.absent(),
            Value<List<Template>?> fieldsConf = const Value.absent(),
            Value<List<Template>?> sections = const Value.absent(),
            Value<String?> description = const Value.absent(),
            Value<ValidationStrategy> validationStrategy = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              FormVersionsCompanion(
            id: id,
            lastModifiedDate: lastModifiedDate,
            createdDate: createdDate,
            name: name,
            displayName: displayName,
            code: code,
            translations: translations,
            form: form,
            version: version,
            treeFields: treeFields,
            options: options,
            optionSets: optionSets,
            label: label,
            defaultLocal: defaultLocal,
            fieldsConf: fieldsConf,
            sections: sections,
            description: description,
            validationStrategy: validationStrategy,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            Value<DateTime> lastModifiedDate = const Value.absent(),
            Value<DateTime> createdDate = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> displayName = const Value.absent(),
            Value<String?> code = const Value.absent(),
            Value<List<Translation>?> translations = const Value.absent(),
            required String form,
            required int version,
            Value<List<Template>?> treeFields = const Value.absent(),
            Value<List<FormOption>> options = const Value.absent(),
            Value<List<DOptionSet>?> optionSets = const Value.absent(),
            Value<Map<String, String>> label = const Value.absent(),
            required String defaultLocal,
            Value<List<Template>?> fieldsConf = const Value.absent(),
            Value<List<Template>?> sections = const Value.absent(),
            Value<String?> description = const Value.absent(),
            required ValidationStrategy validationStrategy,
            Value<int> rowid = const Value.absent(),
          }) =>
              FormVersionsCompanion.insert(
            id: id,
            lastModifiedDate: lastModifiedDate,
            createdDate: createdDate,
            name: name,
            displayName: displayName,
            code: code,
            translations: translations,
            form: form,
            version: version,
            treeFields: treeFields,
            options: options,
            optionSets: optionSets,
            label: label,
            defaultLocal: defaultLocal,
            fieldsConf: fieldsConf,
            sections: sections,
            description: description,
            validationStrategy: validationStrategy,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$FormVersionsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({form = false, dataSubmissionsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (dataSubmissionsRefs) db.dataSubmissions
              ],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (form) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.form,
                    referencedTable:
                        $$FormVersionsTableReferences._formTable(db),
                    referencedColumn:
                        $$FormVersionsTableReferences._formTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (dataSubmissionsRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$FormVersionsTableReferences
                            ._dataSubmissionsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$FormVersionsTableReferences(db, table, p0)
                                .dataSubmissionsRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.formVersion == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$FormVersionsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $FormVersionsTable,
    FormVersion,
    $$FormVersionsTableFilterComposer,
    $$FormVersionsTableOrderingComposer,
    $$FormVersionsTableAnnotationComposer,
    $$FormVersionsTableCreateCompanionBuilder,
    $$FormVersionsTableUpdateCompanionBuilder,
    (FormVersion, $$FormVersionsTableReferences),
    FormVersion,
    PrefetchHooks Function({bool form, bool dataSubmissionsRefs})>;
typedef $$MetadataSubmissionsTableCreateCompanionBuilder
    = MetadataSubmissionsCompanion Function({
  required String id,
  Value<DateTime> lastModifiedDate,
  Value<DateTime> createdDate,
  Value<String?> name,
  Value<String?> displayName,
  Value<String?> code,
  Value<List<Translation>?> translations,
  required MetadataResourceType resourceType,
  required String metadataSchema,
  required int serialNumber,
  required int version,
  required String resourceId,
  Value<Map<String, dynamic>?> formData,
  Value<String?> createdBy,
  Value<String?> lastModifiedBy,
  Value<int> rowid,
});
typedef $$MetadataSubmissionsTableUpdateCompanionBuilder
    = MetadataSubmissionsCompanion Function({
  Value<String> id,
  Value<DateTime> lastModifiedDate,
  Value<DateTime> createdDate,
  Value<String?> name,
  Value<String?> displayName,
  Value<String?> code,
  Value<List<Translation>?> translations,
  Value<MetadataResourceType> resourceType,
  Value<String> metadataSchema,
  Value<int> serialNumber,
  Value<int> version,
  Value<String> resourceId,
  Value<Map<String, dynamic>?> formData,
  Value<String?> createdBy,
  Value<String?> lastModifiedBy,
  Value<int> rowid,
});

class $$MetadataSubmissionsTableFilterComposer
    extends Composer<_$AppDatabase, $MetadataSubmissionsTable> {
  $$MetadataSubmissionsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get lastModifiedDate => $composableBuilder(
      column: $table.lastModifiedDate,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get displayName => $composableBuilder(
      column: $table.displayName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<List<Translation>?, List<Translation>, String>
      get translations => $composableBuilder(
          column: $table.translations,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<MetadataResourceType, MetadataResourceType,
          String>
      get resourceType => $composableBuilder(
          column: $table.resourceType,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<String> get metadataSchema => $composableBuilder(
      column: $table.metadataSchema,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get serialNumber => $composableBuilder(
      column: $table.serialNumber, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get version => $composableBuilder(
      column: $table.version, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get resourceId => $composableBuilder(
      column: $table.resourceId, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<Map<String, dynamic>?, Map<String, dynamic>,
          String>
      get formData => $composableBuilder(
          column: $table.formData,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<String> get createdBy => $composableBuilder(
      column: $table.createdBy, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get lastModifiedBy => $composableBuilder(
      column: $table.lastModifiedBy,
      builder: (column) => ColumnFilters(column));
}

class $$MetadataSubmissionsTableOrderingComposer
    extends Composer<_$AppDatabase, $MetadataSubmissionsTable> {
  $$MetadataSubmissionsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get lastModifiedDate => $composableBuilder(
      column: $table.lastModifiedDate,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get displayName => $composableBuilder(
      column: $table.displayName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get translations => $composableBuilder(
      column: $table.translations,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get resourceType => $composableBuilder(
      column: $table.resourceType,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get metadataSchema => $composableBuilder(
      column: $table.metadataSchema,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get serialNumber => $composableBuilder(
      column: $table.serialNumber,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get version => $composableBuilder(
      column: $table.version, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get resourceId => $composableBuilder(
      column: $table.resourceId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get formData => $composableBuilder(
      column: $table.formData, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get createdBy => $composableBuilder(
      column: $table.createdBy, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get lastModifiedBy => $composableBuilder(
      column: $table.lastModifiedBy,
      builder: (column) => ColumnOrderings(column));
}

class $$MetadataSubmissionsTableAnnotationComposer
    extends Composer<_$AppDatabase, $MetadataSubmissionsTable> {
  $$MetadataSubmissionsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get lastModifiedDate => $composableBuilder(
      column: $table.lastModifiedDate, builder: (column) => column);

  GeneratedColumn<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get displayName => $composableBuilder(
      column: $table.displayName, builder: (column) => column);

  GeneratedColumn<String> get code =>
      $composableBuilder(column: $table.code, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<Translation>?, String>
      get translations => $composableBuilder(
          column: $table.translations, builder: (column) => column);

  GeneratedColumnWithTypeConverter<MetadataResourceType, String>
      get resourceType => $composableBuilder(
          column: $table.resourceType, builder: (column) => column);

  GeneratedColumn<String> get metadataSchema => $composableBuilder(
      column: $table.metadataSchema, builder: (column) => column);

  GeneratedColumn<int> get serialNumber => $composableBuilder(
      column: $table.serialNumber, builder: (column) => column);

  GeneratedColumn<int> get version =>
      $composableBuilder(column: $table.version, builder: (column) => column);

  GeneratedColumn<String> get resourceId => $composableBuilder(
      column: $table.resourceId, builder: (column) => column);

  GeneratedColumnWithTypeConverter<Map<String, dynamic>?, String>
      get formData => $composableBuilder(
          column: $table.formData, builder: (column) => column);

  GeneratedColumn<String> get createdBy =>
      $composableBuilder(column: $table.createdBy, builder: (column) => column);

  GeneratedColumn<String> get lastModifiedBy => $composableBuilder(
      column: $table.lastModifiedBy, builder: (column) => column);
}

class $$MetadataSubmissionsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $MetadataSubmissionsTable,
    MetadataSubmission,
    $$MetadataSubmissionsTableFilterComposer,
    $$MetadataSubmissionsTableOrderingComposer,
    $$MetadataSubmissionsTableAnnotationComposer,
    $$MetadataSubmissionsTableCreateCompanionBuilder,
    $$MetadataSubmissionsTableUpdateCompanionBuilder,
    (
      MetadataSubmission,
      BaseReferences<_$AppDatabase, $MetadataSubmissionsTable,
          MetadataSubmission>
    ),
    MetadataSubmission,
    PrefetchHooks Function()> {
  $$MetadataSubmissionsTableTableManager(
      _$AppDatabase db, $MetadataSubmissionsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MetadataSubmissionsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$MetadataSubmissionsTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MetadataSubmissionsTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<DateTime> lastModifiedDate = const Value.absent(),
            Value<DateTime> createdDate = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> displayName = const Value.absent(),
            Value<String?> code = const Value.absent(),
            Value<List<Translation>?> translations = const Value.absent(),
            Value<MetadataResourceType> resourceType = const Value.absent(),
            Value<String> metadataSchema = const Value.absent(),
            Value<int> serialNumber = const Value.absent(),
            Value<int> version = const Value.absent(),
            Value<String> resourceId = const Value.absent(),
            Value<Map<String, dynamic>?> formData = const Value.absent(),
            Value<String?> createdBy = const Value.absent(),
            Value<String?> lastModifiedBy = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              MetadataSubmissionsCompanion(
            id: id,
            lastModifiedDate: lastModifiedDate,
            createdDate: createdDate,
            name: name,
            displayName: displayName,
            code: code,
            translations: translations,
            resourceType: resourceType,
            metadataSchema: metadataSchema,
            serialNumber: serialNumber,
            version: version,
            resourceId: resourceId,
            formData: formData,
            createdBy: createdBy,
            lastModifiedBy: lastModifiedBy,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            Value<DateTime> lastModifiedDate = const Value.absent(),
            Value<DateTime> createdDate = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> displayName = const Value.absent(),
            Value<String?> code = const Value.absent(),
            Value<List<Translation>?> translations = const Value.absent(),
            required MetadataResourceType resourceType,
            required String metadataSchema,
            required int serialNumber,
            required int version,
            required String resourceId,
            Value<Map<String, dynamic>?> formData = const Value.absent(),
            Value<String?> createdBy = const Value.absent(),
            Value<String?> lastModifiedBy = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              MetadataSubmissionsCompanion.insert(
            id: id,
            lastModifiedDate: lastModifiedDate,
            createdDate: createdDate,
            name: name,
            displayName: displayName,
            code: code,
            translations: translations,
            resourceType: resourceType,
            metadataSchema: metadataSchema,
            serialNumber: serialNumber,
            version: version,
            resourceId: resourceId,
            formData: formData,
            createdBy: createdBy,
            lastModifiedBy: lastModifiedBy,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$MetadataSubmissionsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $MetadataSubmissionsTable,
    MetadataSubmission,
    $$MetadataSubmissionsTableFilterComposer,
    $$MetadataSubmissionsTableOrderingComposer,
    $$MetadataSubmissionsTableAnnotationComposer,
    $$MetadataSubmissionsTableCreateCompanionBuilder,
    $$MetadataSubmissionsTableUpdateCompanionBuilder,
    (
      MetadataSubmission,
      BaseReferences<_$AppDatabase, $MetadataSubmissionsTable,
          MetadataSubmission>
    ),
    MetadataSubmission,
    PrefetchHooks Function()>;
typedef $$DataSubmissionsTableCreateCompanionBuilder = DataSubmissionsCompanion
    Function({
  required String id,
  Value<DateTime> lastModifiedDate,
  Value<DateTime> createdDate,
  Value<bool> deleted,
  Value<String?> form,
  required String formVersion,
  required int version,
  Value<String?> assignment,
  Value<String?> team,
  Value<String?> orgUnit,
  Value<AssignmentStatus?> progressStatus,
  Value<SubmissionStatus> status,
  Value<DateTime?> lastSyncDate,
  Value<String?> lastSyncMessage,
  Value<DateTime> startEntryTime,
  Value<DateTime?> finishedEntryTime,
  Value<String?> createdBy,
  Value<Map<String, dynamic>?> formData,
  Value<int> rowid,
});
typedef $$DataSubmissionsTableUpdateCompanionBuilder = DataSubmissionsCompanion
    Function({
  Value<String> id,
  Value<DateTime> lastModifiedDate,
  Value<DateTime> createdDate,
  Value<bool> deleted,
  Value<String?> form,
  Value<String> formVersion,
  Value<int> version,
  Value<String?> assignment,
  Value<String?> team,
  Value<String?> orgUnit,
  Value<AssignmentStatus?> progressStatus,
  Value<SubmissionStatus> status,
  Value<DateTime?> lastSyncDate,
  Value<String?> lastSyncMessage,
  Value<DateTime> startEntryTime,
  Value<DateTime?> finishedEntryTime,
  Value<String?> createdBy,
  Value<Map<String, dynamic>?> formData,
  Value<int> rowid,
});

final class $$DataSubmissionsTableReferences extends BaseReferences<
    _$AppDatabase, $DataSubmissionsTable, DataSubmission> {
  $$DataSubmissionsTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $FormVersionsTable _formVersionTable(_$AppDatabase db) =>
      db.formVersions.createAlias($_aliasNameGenerator(
          db.dataSubmissions.formVersion, db.formVersions.id));

  $$FormVersionsTableProcessedTableManager get formVersion {
    final manager = $$FormVersionsTableTableManager($_db, $_db.formVersions)
        .filter((f) => f.id($_item.formVersion));
    final item = $_typedResult.readTableOrNull(_formVersionTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $AssignmentsTable _assignmentTable(_$AppDatabase db) =>
      db.assignments.createAlias($_aliasNameGenerator(
          db.dataSubmissions.assignment, db.assignments.id));

  $$AssignmentsTableProcessedTableManager? get assignment {
    if ($_item.assignment == null) return null;
    final manager = $$AssignmentsTableTableManager($_db, $_db.assignments)
        .filter((f) => f.id($_item.assignment!));
    final item = $_typedResult.readTableOrNull(_assignmentTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $TeamsTable _teamTable(_$AppDatabase db) => db.teams
      .createAlias($_aliasNameGenerator(db.dataSubmissions.team, db.teams.id));

  $$TeamsTableProcessedTableManager? get team {
    if ($_item.team == null) return null;
    final manager = $$TeamsTableTableManager($_db, $_db.teams)
        .filter((f) => f.id($_item.team!));
    final item = $_typedResult.readTableOrNull(_teamTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $OrgUnitsTable _orgUnitTable(_$AppDatabase db) =>
      db.orgUnits.createAlias(
          $_aliasNameGenerator(db.dataSubmissions.orgUnit, db.orgUnits.id));

  $$OrgUnitsTableProcessedTableManager? get orgUnit {
    if ($_item.orgUnit == null) return null;
    final manager = $$OrgUnitsTableTableManager($_db, $_db.orgUnits)
        .filter((f) => f.id($_item.orgUnit!));
    final item = $_typedResult.readTableOrNull(_orgUnitTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static MultiTypedResultKey<$RepeatInstancesTable, List<RepeatInstance>>
      _repeatInstancesRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.repeatInstances,
              aliasName: $_aliasNameGenerator(
                  db.dataSubmissions.id, db.repeatInstances.submission));

  $$RepeatInstancesTableProcessedTableManager get repeatInstancesRefs {
    final manager =
        $$RepeatInstancesTableTableManager($_db, $_db.repeatInstances)
            .filter((f) => f.submission.id($_item.id));

    final cache =
        $_typedResult.readTableOrNull(_repeatInstancesRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$DataValuesTable, List<DataValue>>
      _dataValuesRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.dataValues,
              aliasName: $_aliasNameGenerator(
                  db.dataSubmissions.id, db.dataValues.submission));

  $$DataValuesTableProcessedTableManager get dataValuesRefs {
    final manager = $$DataValuesTableTableManager($_db, $_db.dataValues)
        .filter((f) => f.submission.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_dataValuesRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$DataSubmissionsTableFilterComposer
    extends Composer<_$AppDatabase, $DataSubmissionsTable> {
  $$DataSubmissionsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get lastModifiedDate => $composableBuilder(
      column: $table.lastModifiedDate,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get deleted => $composableBuilder(
      column: $table.deleted, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get form => $composableBuilder(
      column: $table.form, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get version => $composableBuilder(
      column: $table.version, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<AssignmentStatus?, AssignmentStatus, String>
      get progressStatus => $composableBuilder(
          column: $table.progressStatus,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<SubmissionStatus, SubmissionStatus, String>
      get status => $composableBuilder(
          column: $table.status,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<DateTime> get lastSyncDate => $composableBuilder(
      column: $table.lastSyncDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get lastSyncMessage => $composableBuilder(
      column: $table.lastSyncMessage,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get startEntryTime => $composableBuilder(
      column: $table.startEntryTime,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get finishedEntryTime => $composableBuilder(
      column: $table.finishedEntryTime,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get createdBy => $composableBuilder(
      column: $table.createdBy, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<Map<String, dynamic>?, Map<String, dynamic>,
          String>
      get formData => $composableBuilder(
          column: $table.formData,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  $$FormVersionsTableFilterComposer get formVersion {
    final $$FormVersionsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.formVersion,
        referencedTable: $db.formVersions,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$FormVersionsTableFilterComposer(
              $db: $db,
              $table: $db.formVersions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$AssignmentsTableFilterComposer get assignment {
    final $$AssignmentsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.assignment,
        referencedTable: $db.assignments,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AssignmentsTableFilterComposer(
              $db: $db,
              $table: $db.assignments,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$TeamsTableFilterComposer get team {
    final $$TeamsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.team,
        referencedTable: $db.teams,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TeamsTableFilterComposer(
              $db: $db,
              $table: $db.teams,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$OrgUnitsTableFilterComposer get orgUnit {
    final $$OrgUnitsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.orgUnit,
        referencedTable: $db.orgUnits,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$OrgUnitsTableFilterComposer(
              $db: $db,
              $table: $db.orgUnits,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<bool> repeatInstancesRefs(
      Expression<bool> Function($$RepeatInstancesTableFilterComposer f) f) {
    final $$RepeatInstancesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.repeatInstances,
        getReferencedColumn: (t) => t.submission,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RepeatInstancesTableFilterComposer(
              $db: $db,
              $table: $db.repeatInstances,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> dataValuesRefs(
      Expression<bool> Function($$DataValuesTableFilterComposer f) f) {
    final $$DataValuesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.dataValues,
        getReferencedColumn: (t) => t.submission,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DataValuesTableFilterComposer(
              $db: $db,
              $table: $db.dataValues,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$DataSubmissionsTableOrderingComposer
    extends Composer<_$AppDatabase, $DataSubmissionsTable> {
  $$DataSubmissionsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get lastModifiedDate => $composableBuilder(
      column: $table.lastModifiedDate,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get deleted => $composableBuilder(
      column: $table.deleted, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get form => $composableBuilder(
      column: $table.form, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get version => $composableBuilder(
      column: $table.version, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get progressStatus => $composableBuilder(
      column: $table.progressStatus,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get lastSyncDate => $composableBuilder(
      column: $table.lastSyncDate,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get lastSyncMessage => $composableBuilder(
      column: $table.lastSyncMessage,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get startEntryTime => $composableBuilder(
      column: $table.startEntryTime,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get finishedEntryTime => $composableBuilder(
      column: $table.finishedEntryTime,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get createdBy => $composableBuilder(
      column: $table.createdBy, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get formData => $composableBuilder(
      column: $table.formData, builder: (column) => ColumnOrderings(column));

  $$FormVersionsTableOrderingComposer get formVersion {
    final $$FormVersionsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.formVersion,
        referencedTable: $db.formVersions,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$FormVersionsTableOrderingComposer(
              $db: $db,
              $table: $db.formVersions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$AssignmentsTableOrderingComposer get assignment {
    final $$AssignmentsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.assignment,
        referencedTable: $db.assignments,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AssignmentsTableOrderingComposer(
              $db: $db,
              $table: $db.assignments,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$TeamsTableOrderingComposer get team {
    final $$TeamsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.team,
        referencedTable: $db.teams,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TeamsTableOrderingComposer(
              $db: $db,
              $table: $db.teams,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$OrgUnitsTableOrderingComposer get orgUnit {
    final $$OrgUnitsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.orgUnit,
        referencedTable: $db.orgUnits,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$OrgUnitsTableOrderingComposer(
              $db: $db,
              $table: $db.orgUnits,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$DataSubmissionsTableAnnotationComposer
    extends Composer<_$AppDatabase, $DataSubmissionsTable> {
  $$DataSubmissionsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get lastModifiedDate => $composableBuilder(
      column: $table.lastModifiedDate, builder: (column) => column);

  GeneratedColumn<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => column);

  GeneratedColumn<bool> get deleted =>
      $composableBuilder(column: $table.deleted, builder: (column) => column);

  GeneratedColumn<String> get form =>
      $composableBuilder(column: $table.form, builder: (column) => column);

  GeneratedColumn<int> get version =>
      $composableBuilder(column: $table.version, builder: (column) => column);

  GeneratedColumnWithTypeConverter<AssignmentStatus?, String>
      get progressStatus => $composableBuilder(
          column: $table.progressStatus, builder: (column) => column);

  GeneratedColumnWithTypeConverter<SubmissionStatus, String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<DateTime> get lastSyncDate => $composableBuilder(
      column: $table.lastSyncDate, builder: (column) => column);

  GeneratedColumn<String> get lastSyncMessage => $composableBuilder(
      column: $table.lastSyncMessage, builder: (column) => column);

  GeneratedColumn<DateTime> get startEntryTime => $composableBuilder(
      column: $table.startEntryTime, builder: (column) => column);

  GeneratedColumn<DateTime> get finishedEntryTime => $composableBuilder(
      column: $table.finishedEntryTime, builder: (column) => column);

  GeneratedColumn<String> get createdBy =>
      $composableBuilder(column: $table.createdBy, builder: (column) => column);

  GeneratedColumnWithTypeConverter<Map<String, dynamic>?, String>
      get formData => $composableBuilder(
          column: $table.formData, builder: (column) => column);

  $$FormVersionsTableAnnotationComposer get formVersion {
    final $$FormVersionsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.formVersion,
        referencedTable: $db.formVersions,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$FormVersionsTableAnnotationComposer(
              $db: $db,
              $table: $db.formVersions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$AssignmentsTableAnnotationComposer get assignment {
    final $$AssignmentsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.assignment,
        referencedTable: $db.assignments,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$AssignmentsTableAnnotationComposer(
              $db: $db,
              $table: $db.assignments,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$TeamsTableAnnotationComposer get team {
    final $$TeamsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.team,
        referencedTable: $db.teams,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TeamsTableAnnotationComposer(
              $db: $db,
              $table: $db.teams,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$OrgUnitsTableAnnotationComposer get orgUnit {
    final $$OrgUnitsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.orgUnit,
        referencedTable: $db.orgUnits,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$OrgUnitsTableAnnotationComposer(
              $db: $db,
              $table: $db.orgUnits,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<T> repeatInstancesRefs<T extends Object>(
      Expression<T> Function($$RepeatInstancesTableAnnotationComposer a) f) {
    final $$RepeatInstancesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.repeatInstances,
        getReferencedColumn: (t) => t.submission,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RepeatInstancesTableAnnotationComposer(
              $db: $db,
              $table: $db.repeatInstances,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> dataValuesRefs<T extends Object>(
      Expression<T> Function($$DataValuesTableAnnotationComposer a) f) {
    final $$DataValuesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.dataValues,
        getReferencedColumn: (t) => t.submission,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DataValuesTableAnnotationComposer(
              $db: $db,
              $table: $db.dataValues,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$DataSubmissionsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $DataSubmissionsTable,
    DataSubmission,
    $$DataSubmissionsTableFilterComposer,
    $$DataSubmissionsTableOrderingComposer,
    $$DataSubmissionsTableAnnotationComposer,
    $$DataSubmissionsTableCreateCompanionBuilder,
    $$DataSubmissionsTableUpdateCompanionBuilder,
    (DataSubmission, $$DataSubmissionsTableReferences),
    DataSubmission,
    PrefetchHooks Function(
        {bool formVersion,
        bool assignment,
        bool team,
        bool orgUnit,
        bool repeatInstancesRefs,
        bool dataValuesRefs})> {
  $$DataSubmissionsTableTableManager(
      _$AppDatabase db, $DataSubmissionsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DataSubmissionsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DataSubmissionsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DataSubmissionsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<DateTime> lastModifiedDate = const Value.absent(),
            Value<DateTime> createdDate = const Value.absent(),
            Value<bool> deleted = const Value.absent(),
            Value<String?> form = const Value.absent(),
            Value<String> formVersion = const Value.absent(),
            Value<int> version = const Value.absent(),
            Value<String?> assignment = const Value.absent(),
            Value<String?> team = const Value.absent(),
            Value<String?> orgUnit = const Value.absent(),
            Value<AssignmentStatus?> progressStatus = const Value.absent(),
            Value<SubmissionStatus> status = const Value.absent(),
            Value<DateTime?> lastSyncDate = const Value.absent(),
            Value<String?> lastSyncMessage = const Value.absent(),
            Value<DateTime> startEntryTime = const Value.absent(),
            Value<DateTime?> finishedEntryTime = const Value.absent(),
            Value<String?> createdBy = const Value.absent(),
            Value<Map<String, dynamic>?> formData = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DataSubmissionsCompanion(
            id: id,
            lastModifiedDate: lastModifiedDate,
            createdDate: createdDate,
            deleted: deleted,
            form: form,
            formVersion: formVersion,
            version: version,
            assignment: assignment,
            team: team,
            orgUnit: orgUnit,
            progressStatus: progressStatus,
            status: status,
            lastSyncDate: lastSyncDate,
            lastSyncMessage: lastSyncMessage,
            startEntryTime: startEntryTime,
            finishedEntryTime: finishedEntryTime,
            createdBy: createdBy,
            formData: formData,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            Value<DateTime> lastModifiedDate = const Value.absent(),
            Value<DateTime> createdDate = const Value.absent(),
            Value<bool> deleted = const Value.absent(),
            Value<String?> form = const Value.absent(),
            required String formVersion,
            required int version,
            Value<String?> assignment = const Value.absent(),
            Value<String?> team = const Value.absent(),
            Value<String?> orgUnit = const Value.absent(),
            Value<AssignmentStatus?> progressStatus = const Value.absent(),
            Value<SubmissionStatus> status = const Value.absent(),
            Value<DateTime?> lastSyncDate = const Value.absent(),
            Value<String?> lastSyncMessage = const Value.absent(),
            Value<DateTime> startEntryTime = const Value.absent(),
            Value<DateTime?> finishedEntryTime = const Value.absent(),
            Value<String?> createdBy = const Value.absent(),
            Value<Map<String, dynamic>?> formData = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DataSubmissionsCompanion.insert(
            id: id,
            lastModifiedDate: lastModifiedDate,
            createdDate: createdDate,
            deleted: deleted,
            form: form,
            formVersion: formVersion,
            version: version,
            assignment: assignment,
            team: team,
            orgUnit: orgUnit,
            progressStatus: progressStatus,
            status: status,
            lastSyncDate: lastSyncDate,
            lastSyncMessage: lastSyncMessage,
            startEntryTime: startEntryTime,
            finishedEntryTime: finishedEntryTime,
            createdBy: createdBy,
            formData: formData,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$DataSubmissionsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: (
              {formVersion = false,
              assignment = false,
              team = false,
              orgUnit = false,
              repeatInstancesRefs = false,
              dataValuesRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (repeatInstancesRefs) db.repeatInstances,
                if (dataValuesRefs) db.dataValues
              ],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (formVersion) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.formVersion,
                    referencedTable:
                        $$DataSubmissionsTableReferences._formVersionTable(db),
                    referencedColumn: $$DataSubmissionsTableReferences
                        ._formVersionTable(db)
                        .id,
                  ) as T;
                }
                if (assignment) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.assignment,
                    referencedTable:
                        $$DataSubmissionsTableReferences._assignmentTable(db),
                    referencedColumn: $$DataSubmissionsTableReferences
                        ._assignmentTable(db)
                        .id,
                  ) as T;
                }
                if (team) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.team,
                    referencedTable:
                        $$DataSubmissionsTableReferences._teamTable(db),
                    referencedColumn:
                        $$DataSubmissionsTableReferences._teamTable(db).id,
                  ) as T;
                }
                if (orgUnit) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.orgUnit,
                    referencedTable:
                        $$DataSubmissionsTableReferences._orgUnitTable(db),
                    referencedColumn:
                        $$DataSubmissionsTableReferences._orgUnitTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (repeatInstancesRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$DataSubmissionsTableReferences
                            ._repeatInstancesRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$DataSubmissionsTableReferences(db, table, p0)
                                .repeatInstancesRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.submission == item.id),
                        typedResults: items),
                  if (dataValuesRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$DataSubmissionsTableReferences
                            ._dataValuesRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$DataSubmissionsTableReferences(db, table, p0)
                                .dataValuesRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.submission == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$DataSubmissionsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $DataSubmissionsTable,
    DataSubmission,
    $$DataSubmissionsTableFilterComposer,
    $$DataSubmissionsTableOrderingComposer,
    $$DataSubmissionsTableAnnotationComposer,
    $$DataSubmissionsTableCreateCompanionBuilder,
    $$DataSubmissionsTableUpdateCompanionBuilder,
    (DataSubmission, $$DataSubmissionsTableReferences),
    DataSubmission,
    PrefetchHooks Function(
        {bool formVersion,
        bool assignment,
        bool team,
        bool orgUnit,
        bool repeatInstancesRefs,
        bool dataValuesRefs})>;
typedef $$RepeatInstancesTableCreateCompanionBuilder = RepeatInstancesCompanion
    Function({
  required String id,
  Value<DateTime> lastModifiedDate,
  Value<DateTime> createdDate,
  required String templatePath,
  required String submission,
  Value<String?> parent,
  required int repeatIndex,
  Value<int> rowid,
});
typedef $$RepeatInstancesTableUpdateCompanionBuilder = RepeatInstancesCompanion
    Function({
  Value<String> id,
  Value<DateTime> lastModifiedDate,
  Value<DateTime> createdDate,
  Value<String> templatePath,
  Value<String> submission,
  Value<String?> parent,
  Value<int> repeatIndex,
  Value<int> rowid,
});

final class $$RepeatInstancesTableReferences extends BaseReferences<
    _$AppDatabase, $RepeatInstancesTable, RepeatInstance> {
  $$RepeatInstancesTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $DataSubmissionsTable _submissionTable(_$AppDatabase db) =>
      db.dataSubmissions.createAlias($_aliasNameGenerator(
          db.repeatInstances.submission, db.dataSubmissions.id));

  $$DataSubmissionsTableProcessedTableManager get submission {
    final manager =
        $$DataSubmissionsTableTableManager($_db, $_db.dataSubmissions)
            .filter((f) => f.id($_item.submission));
    final item = $_typedResult.readTableOrNull(_submissionTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $RepeatInstancesTable _parentTable(_$AppDatabase db) =>
      db.repeatInstances.createAlias($_aliasNameGenerator(
          db.repeatInstances.parent, db.repeatInstances.id));

  $$RepeatInstancesTableProcessedTableManager? get parent {
    if ($_item.parent == null) return null;
    final manager =
        $$RepeatInstancesTableTableManager($_db, $_db.repeatInstances)
            .filter((f) => f.id($_item.parent!));
    final item = $_typedResult.readTableOrNull(_parentTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static MultiTypedResultKey<$DataValuesTable, List<DataValue>>
      _dataValuesRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.dataValues,
              aliasName: $_aliasNameGenerator(
                  db.repeatInstances.id, db.dataValues.parent));

  $$DataValuesTableProcessedTableManager get dataValuesRefs {
    final manager = $$DataValuesTableTableManager($_db, $_db.dataValues)
        .filter((f) => f.parent.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_dataValuesRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$RepeatInstancesTableFilterComposer
    extends Composer<_$AppDatabase, $RepeatInstancesTable> {
  $$RepeatInstancesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get lastModifiedDate => $composableBuilder(
      column: $table.lastModifiedDate,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get templatePath => $composableBuilder(
      column: $table.templatePath, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get repeatIndex => $composableBuilder(
      column: $table.repeatIndex, builder: (column) => ColumnFilters(column));

  $$DataSubmissionsTableFilterComposer get submission {
    final $$DataSubmissionsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.submission,
        referencedTable: $db.dataSubmissions,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DataSubmissionsTableFilterComposer(
              $db: $db,
              $table: $db.dataSubmissions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$RepeatInstancesTableFilterComposer get parent {
    final $$RepeatInstancesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.parent,
        referencedTable: $db.repeatInstances,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RepeatInstancesTableFilterComposer(
              $db: $db,
              $table: $db.repeatInstances,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<bool> dataValuesRefs(
      Expression<bool> Function($$DataValuesTableFilterComposer f) f) {
    final $$DataValuesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.dataValues,
        getReferencedColumn: (t) => t.parent,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DataValuesTableFilterComposer(
              $db: $db,
              $table: $db.dataValues,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$RepeatInstancesTableOrderingComposer
    extends Composer<_$AppDatabase, $RepeatInstancesTable> {
  $$RepeatInstancesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get lastModifiedDate => $composableBuilder(
      column: $table.lastModifiedDate,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get templatePath => $composableBuilder(
      column: $table.templatePath,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get repeatIndex => $composableBuilder(
      column: $table.repeatIndex, builder: (column) => ColumnOrderings(column));

  $$DataSubmissionsTableOrderingComposer get submission {
    final $$DataSubmissionsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.submission,
        referencedTable: $db.dataSubmissions,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DataSubmissionsTableOrderingComposer(
              $db: $db,
              $table: $db.dataSubmissions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$RepeatInstancesTableOrderingComposer get parent {
    final $$RepeatInstancesTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.parent,
        referencedTable: $db.repeatInstances,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RepeatInstancesTableOrderingComposer(
              $db: $db,
              $table: $db.repeatInstances,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$RepeatInstancesTableAnnotationComposer
    extends Composer<_$AppDatabase, $RepeatInstancesTable> {
  $$RepeatInstancesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get lastModifiedDate => $composableBuilder(
      column: $table.lastModifiedDate, builder: (column) => column);

  GeneratedColumn<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => column);

  GeneratedColumn<String> get templatePath => $composableBuilder(
      column: $table.templatePath, builder: (column) => column);

  GeneratedColumn<int> get repeatIndex => $composableBuilder(
      column: $table.repeatIndex, builder: (column) => column);

  $$DataSubmissionsTableAnnotationComposer get submission {
    final $$DataSubmissionsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.submission,
        referencedTable: $db.dataSubmissions,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DataSubmissionsTableAnnotationComposer(
              $db: $db,
              $table: $db.dataSubmissions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$RepeatInstancesTableAnnotationComposer get parent {
    final $$RepeatInstancesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.parent,
        referencedTable: $db.repeatInstances,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RepeatInstancesTableAnnotationComposer(
              $db: $db,
              $table: $db.repeatInstances,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<T> dataValuesRefs<T extends Object>(
      Expression<T> Function($$DataValuesTableAnnotationComposer a) f) {
    final $$DataValuesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.dataValues,
        getReferencedColumn: (t) => t.parent,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DataValuesTableAnnotationComposer(
              $db: $db,
              $table: $db.dataValues,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$RepeatInstancesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $RepeatInstancesTable,
    RepeatInstance,
    $$RepeatInstancesTableFilterComposer,
    $$RepeatInstancesTableOrderingComposer,
    $$RepeatInstancesTableAnnotationComposer,
    $$RepeatInstancesTableCreateCompanionBuilder,
    $$RepeatInstancesTableUpdateCompanionBuilder,
    (RepeatInstance, $$RepeatInstancesTableReferences),
    RepeatInstance,
    PrefetchHooks Function(
        {bool submission, bool parent, bool dataValuesRefs})> {
  $$RepeatInstancesTableTableManager(
      _$AppDatabase db, $RepeatInstancesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RepeatInstancesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RepeatInstancesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RepeatInstancesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<DateTime> lastModifiedDate = const Value.absent(),
            Value<DateTime> createdDate = const Value.absent(),
            Value<String> templatePath = const Value.absent(),
            Value<String> submission = const Value.absent(),
            Value<String?> parent = const Value.absent(),
            Value<int> repeatIndex = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              RepeatInstancesCompanion(
            id: id,
            lastModifiedDate: lastModifiedDate,
            createdDate: createdDate,
            templatePath: templatePath,
            submission: submission,
            parent: parent,
            repeatIndex: repeatIndex,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            Value<DateTime> lastModifiedDate = const Value.absent(),
            Value<DateTime> createdDate = const Value.absent(),
            required String templatePath,
            required String submission,
            Value<String?> parent = const Value.absent(),
            required int repeatIndex,
            Value<int> rowid = const Value.absent(),
          }) =>
              RepeatInstancesCompanion.insert(
            id: id,
            lastModifiedDate: lastModifiedDate,
            createdDate: createdDate,
            templatePath: templatePath,
            submission: submission,
            parent: parent,
            repeatIndex: repeatIndex,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$RepeatInstancesTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: (
              {submission = false, parent = false, dataValuesRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (dataValuesRefs) db.dataValues],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (submission) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.submission,
                    referencedTable:
                        $$RepeatInstancesTableReferences._submissionTable(db),
                    referencedColumn: $$RepeatInstancesTableReferences
                        ._submissionTable(db)
                        .id,
                  ) as T;
                }
                if (parent) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.parent,
                    referencedTable:
                        $$RepeatInstancesTableReferences._parentTable(db),
                    referencedColumn:
                        $$RepeatInstancesTableReferences._parentTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (dataValuesRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$RepeatInstancesTableReferences
                            ._dataValuesRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$RepeatInstancesTableReferences(db, table, p0)
                                .dataValuesRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.parent == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$RepeatInstancesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $RepeatInstancesTable,
    RepeatInstance,
    $$RepeatInstancesTableFilterComposer,
    $$RepeatInstancesTableOrderingComposer,
    $$RepeatInstancesTableAnnotationComposer,
    $$RepeatInstancesTableCreateCompanionBuilder,
    $$RepeatInstancesTableUpdateCompanionBuilder,
    (RepeatInstance, $$RepeatInstancesTableReferences),
    RepeatInstance,
    PrefetchHooks Function(
        {bool submission, bool parent, bool dataValuesRefs})>;
typedef $$DataElementsTableCreateCompanionBuilder = DataElementsCompanion
    Function({
  required String id,
  Value<DateTime> lastModifiedDate,
  Value<DateTime> createdDate,
  Value<String?> name,
  Value<String?> displayName,
  Value<String?> code,
  Value<List<Translation>?> translations,
  Value<String?> description,
  Value<ValueType?> type,
  Value<bool> mandatory,
  Value<String?> defaultValue,
  Value<Map<String, String>> label,
  Value<ScannedCodeProperties?> scannedCodeProperties,
  Value<bool> gs1Enabled,
  Value<MetadataResourceType?> resourceType,
  Value<String?> resourceMetadataSchema,
  Value<int> rowid,
});
typedef $$DataElementsTableUpdateCompanionBuilder = DataElementsCompanion
    Function({
  Value<String> id,
  Value<DateTime> lastModifiedDate,
  Value<DateTime> createdDate,
  Value<String?> name,
  Value<String?> displayName,
  Value<String?> code,
  Value<List<Translation>?> translations,
  Value<String?> description,
  Value<ValueType?> type,
  Value<bool> mandatory,
  Value<String?> defaultValue,
  Value<Map<String, String>> label,
  Value<ScannedCodeProperties?> scannedCodeProperties,
  Value<bool> gs1Enabled,
  Value<MetadataResourceType?> resourceType,
  Value<String?> resourceMetadataSchema,
  Value<int> rowid,
});

final class $$DataElementsTableReferences
    extends BaseReferences<_$AppDatabase, $DataElementsTable, DataElement> {
  $$DataElementsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$DataValuesTable, List<DataValue>>
      _dataValuesRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.dataValues,
              aliasName: $_aliasNameGenerator(
                  db.dataElements.id, db.dataValues.dataElement));

  $$DataValuesTableProcessedTableManager get dataValuesRefs {
    final manager = $$DataValuesTableTableManager($_db, $_db.dataValues)
        .filter((f) => f.dataElement.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_dataValuesRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$DataElementsTableFilterComposer
    extends Composer<_$AppDatabase, $DataElementsTable> {
  $$DataElementsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get lastModifiedDate => $composableBuilder(
      column: $table.lastModifiedDate,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get displayName => $composableBuilder(
      column: $table.displayName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<List<Translation>?, List<Translation>, String>
      get translations => $composableBuilder(
          column: $table.translations,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<ValueType?, ValueType, String> get type =>
      $composableBuilder(
          column: $table.type,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<bool> get mandatory => $composableBuilder(
      column: $table.mandatory, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get defaultValue => $composableBuilder(
      column: $table.defaultValue, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<Map<String, String>, Map<String, String>,
          String>
      get label => $composableBuilder(
          column: $table.label,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<ScannedCodeProperties?, ScannedCodeProperties,
          String>
      get scannedCodeProperties => $composableBuilder(
          column: $table.scannedCodeProperties,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<bool> get gs1Enabled => $composableBuilder(
      column: $table.gs1Enabled, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<MetadataResourceType?, MetadataResourceType,
          String>
      get resourceType => $composableBuilder(
          column: $table.resourceType,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<String> get resourceMetadataSchema => $composableBuilder(
      column: $table.resourceMetadataSchema,
      builder: (column) => ColumnFilters(column));

  Expression<bool> dataValuesRefs(
      Expression<bool> Function($$DataValuesTableFilterComposer f) f) {
    final $$DataValuesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.dataValues,
        getReferencedColumn: (t) => t.dataElement,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DataValuesTableFilterComposer(
              $db: $db,
              $table: $db.dataValues,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$DataElementsTableOrderingComposer
    extends Composer<_$AppDatabase, $DataElementsTable> {
  $$DataElementsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get lastModifiedDate => $composableBuilder(
      column: $table.lastModifiedDate,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get displayName => $composableBuilder(
      column: $table.displayName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get translations => $composableBuilder(
      column: $table.translations,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get mandatory => $composableBuilder(
      column: $table.mandatory, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get defaultValue => $composableBuilder(
      column: $table.defaultValue,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get label => $composableBuilder(
      column: $table.label, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get scannedCodeProperties => $composableBuilder(
      column: $table.scannedCodeProperties,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get gs1Enabled => $composableBuilder(
      column: $table.gs1Enabled, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get resourceType => $composableBuilder(
      column: $table.resourceType,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get resourceMetadataSchema => $composableBuilder(
      column: $table.resourceMetadataSchema,
      builder: (column) => ColumnOrderings(column));
}

class $$DataElementsTableAnnotationComposer
    extends Composer<_$AppDatabase, $DataElementsTable> {
  $$DataElementsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get lastModifiedDate => $composableBuilder(
      column: $table.lastModifiedDate, builder: (column) => column);

  GeneratedColumn<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get displayName => $composableBuilder(
      column: $table.displayName, builder: (column) => column);

  GeneratedColumn<String> get code =>
      $composableBuilder(column: $table.code, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<Translation>?, String>
      get translations => $composableBuilder(
          column: $table.translations, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => column);

  GeneratedColumnWithTypeConverter<ValueType?, String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<bool> get mandatory =>
      $composableBuilder(column: $table.mandatory, builder: (column) => column);

  GeneratedColumn<String> get defaultValue => $composableBuilder(
      column: $table.defaultValue, builder: (column) => column);

  GeneratedColumnWithTypeConverter<Map<String, String>, String> get label =>
      $composableBuilder(column: $table.label, builder: (column) => column);

  GeneratedColumnWithTypeConverter<ScannedCodeProperties?, String>
      get scannedCodeProperties => $composableBuilder(
          column: $table.scannedCodeProperties, builder: (column) => column);

  GeneratedColumn<bool> get gs1Enabled => $composableBuilder(
      column: $table.gs1Enabled, builder: (column) => column);

  GeneratedColumnWithTypeConverter<MetadataResourceType?, String>
      get resourceType => $composableBuilder(
          column: $table.resourceType, builder: (column) => column);

  GeneratedColumn<String> get resourceMetadataSchema => $composableBuilder(
      column: $table.resourceMetadataSchema, builder: (column) => column);

  Expression<T> dataValuesRefs<T extends Object>(
      Expression<T> Function($$DataValuesTableAnnotationComposer a) f) {
    final $$DataValuesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.dataValues,
        getReferencedColumn: (t) => t.dataElement,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DataValuesTableAnnotationComposer(
              $db: $db,
              $table: $db.dataValues,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$DataElementsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $DataElementsTable,
    DataElement,
    $$DataElementsTableFilterComposer,
    $$DataElementsTableOrderingComposer,
    $$DataElementsTableAnnotationComposer,
    $$DataElementsTableCreateCompanionBuilder,
    $$DataElementsTableUpdateCompanionBuilder,
    (DataElement, $$DataElementsTableReferences),
    DataElement,
    PrefetchHooks Function({bool dataValuesRefs})> {
  $$DataElementsTableTableManager(_$AppDatabase db, $DataElementsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DataElementsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DataElementsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DataElementsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<DateTime> lastModifiedDate = const Value.absent(),
            Value<DateTime> createdDate = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> displayName = const Value.absent(),
            Value<String?> code = const Value.absent(),
            Value<List<Translation>?> translations = const Value.absent(),
            Value<String?> description = const Value.absent(),
            Value<ValueType?> type = const Value.absent(),
            Value<bool> mandatory = const Value.absent(),
            Value<String?> defaultValue = const Value.absent(),
            Value<Map<String, String>> label = const Value.absent(),
            Value<ScannedCodeProperties?> scannedCodeProperties =
                const Value.absent(),
            Value<bool> gs1Enabled = const Value.absent(),
            Value<MetadataResourceType?> resourceType = const Value.absent(),
            Value<String?> resourceMetadataSchema = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DataElementsCompanion(
            id: id,
            lastModifiedDate: lastModifiedDate,
            createdDate: createdDate,
            name: name,
            displayName: displayName,
            code: code,
            translations: translations,
            description: description,
            type: type,
            mandatory: mandatory,
            defaultValue: defaultValue,
            label: label,
            scannedCodeProperties: scannedCodeProperties,
            gs1Enabled: gs1Enabled,
            resourceType: resourceType,
            resourceMetadataSchema: resourceMetadataSchema,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            Value<DateTime> lastModifiedDate = const Value.absent(),
            Value<DateTime> createdDate = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> displayName = const Value.absent(),
            Value<String?> code = const Value.absent(),
            Value<List<Translation>?> translations = const Value.absent(),
            Value<String?> description = const Value.absent(),
            Value<ValueType?> type = const Value.absent(),
            Value<bool> mandatory = const Value.absent(),
            Value<String?> defaultValue = const Value.absent(),
            Value<Map<String, String>> label = const Value.absent(),
            Value<ScannedCodeProperties?> scannedCodeProperties =
                const Value.absent(),
            Value<bool> gs1Enabled = const Value.absent(),
            Value<MetadataResourceType?> resourceType = const Value.absent(),
            Value<String?> resourceMetadataSchema = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DataElementsCompanion.insert(
            id: id,
            lastModifiedDate: lastModifiedDate,
            createdDate: createdDate,
            name: name,
            displayName: displayName,
            code: code,
            translations: translations,
            description: description,
            type: type,
            mandatory: mandatory,
            defaultValue: defaultValue,
            label: label,
            scannedCodeProperties: scannedCodeProperties,
            gs1Enabled: gs1Enabled,
            resourceType: resourceType,
            resourceMetadataSchema: resourceMetadataSchema,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$DataElementsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({dataValuesRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (dataValuesRefs) db.dataValues],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (dataValuesRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$DataElementsTableReferences
                            ._dataValuesRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$DataElementsTableReferences(db, table, p0)
                                .dataValuesRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.dataElement == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$DataElementsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $DataElementsTable,
    DataElement,
    $$DataElementsTableFilterComposer,
    $$DataElementsTableOrderingComposer,
    $$DataElementsTableAnnotationComposer,
    $$DataElementsTableCreateCompanionBuilder,
    $$DataElementsTableUpdateCompanionBuilder,
    (DataElement, $$DataElementsTableReferences),
    DataElement,
    PrefetchHooks Function({bool dataValuesRefs})>;
typedef $$DataValuesTableCreateCompanionBuilder = DataValuesCompanion Function({
  required String id,
  Value<DateTime> lastModifiedDate,
  Value<DateTime> createdDate,
  required String templatePath,
  Value<String?> parent,
  required String submission,
  required String dataElement,
  Value<String?> value,
  Value<int> rowid,
});
typedef $$DataValuesTableUpdateCompanionBuilder = DataValuesCompanion Function({
  Value<String> id,
  Value<DateTime> lastModifiedDate,
  Value<DateTime> createdDate,
  Value<String> templatePath,
  Value<String?> parent,
  Value<String> submission,
  Value<String> dataElement,
  Value<String?> value,
  Value<int> rowid,
});

final class $$DataValuesTableReferences
    extends BaseReferences<_$AppDatabase, $DataValuesTable, DataValue> {
  $$DataValuesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $RepeatInstancesTable _parentTable(_$AppDatabase db) =>
      db.repeatInstances.createAlias(
          $_aliasNameGenerator(db.dataValues.parent, db.repeatInstances.id));

  $$RepeatInstancesTableProcessedTableManager? get parent {
    if ($_item.parent == null) return null;
    final manager =
        $$RepeatInstancesTableTableManager($_db, $_db.repeatInstances)
            .filter((f) => f.id($_item.parent!));
    final item = $_typedResult.readTableOrNull(_parentTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $DataSubmissionsTable _submissionTable(_$AppDatabase db) =>
      db.dataSubmissions.createAlias($_aliasNameGenerator(
          db.dataValues.submission, db.dataSubmissions.id));

  $$DataSubmissionsTableProcessedTableManager get submission {
    final manager =
        $$DataSubmissionsTableTableManager($_db, $_db.dataSubmissions)
            .filter((f) => f.id($_item.submission));
    final item = $_typedResult.readTableOrNull(_submissionTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $DataElementsTable _dataElementTable(_$AppDatabase db) =>
      db.dataElements.createAlias(
          $_aliasNameGenerator(db.dataValues.dataElement, db.dataElements.id));

  $$DataElementsTableProcessedTableManager get dataElement {
    final manager = $$DataElementsTableTableManager($_db, $_db.dataElements)
        .filter((f) => f.id($_item.dataElement));
    final item = $_typedResult.readTableOrNull(_dataElementTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$DataValuesTableFilterComposer
    extends Composer<_$AppDatabase, $DataValuesTable> {
  $$DataValuesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get lastModifiedDate => $composableBuilder(
      column: $table.lastModifiedDate,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get templatePath => $composableBuilder(
      column: $table.templatePath, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get value => $composableBuilder(
      column: $table.value, builder: (column) => ColumnFilters(column));

  $$RepeatInstancesTableFilterComposer get parent {
    final $$RepeatInstancesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.parent,
        referencedTable: $db.repeatInstances,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RepeatInstancesTableFilterComposer(
              $db: $db,
              $table: $db.repeatInstances,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$DataSubmissionsTableFilterComposer get submission {
    final $$DataSubmissionsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.submission,
        referencedTable: $db.dataSubmissions,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DataSubmissionsTableFilterComposer(
              $db: $db,
              $table: $db.dataSubmissions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$DataElementsTableFilterComposer get dataElement {
    final $$DataElementsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.dataElement,
        referencedTable: $db.dataElements,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DataElementsTableFilterComposer(
              $db: $db,
              $table: $db.dataElements,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$DataValuesTableOrderingComposer
    extends Composer<_$AppDatabase, $DataValuesTable> {
  $$DataValuesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get lastModifiedDate => $composableBuilder(
      column: $table.lastModifiedDate,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get templatePath => $composableBuilder(
      column: $table.templatePath,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get value => $composableBuilder(
      column: $table.value, builder: (column) => ColumnOrderings(column));

  $$RepeatInstancesTableOrderingComposer get parent {
    final $$RepeatInstancesTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.parent,
        referencedTable: $db.repeatInstances,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RepeatInstancesTableOrderingComposer(
              $db: $db,
              $table: $db.repeatInstances,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$DataSubmissionsTableOrderingComposer get submission {
    final $$DataSubmissionsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.submission,
        referencedTable: $db.dataSubmissions,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DataSubmissionsTableOrderingComposer(
              $db: $db,
              $table: $db.dataSubmissions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$DataElementsTableOrderingComposer get dataElement {
    final $$DataElementsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.dataElement,
        referencedTable: $db.dataElements,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DataElementsTableOrderingComposer(
              $db: $db,
              $table: $db.dataElements,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$DataValuesTableAnnotationComposer
    extends Composer<_$AppDatabase, $DataValuesTable> {
  $$DataValuesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get lastModifiedDate => $composableBuilder(
      column: $table.lastModifiedDate, builder: (column) => column);

  GeneratedColumn<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => column);

  GeneratedColumn<String> get templatePath => $composableBuilder(
      column: $table.templatePath, builder: (column) => column);

  GeneratedColumn<String> get value =>
      $composableBuilder(column: $table.value, builder: (column) => column);

  $$RepeatInstancesTableAnnotationComposer get parent {
    final $$RepeatInstancesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.parent,
        referencedTable: $db.repeatInstances,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RepeatInstancesTableAnnotationComposer(
              $db: $db,
              $table: $db.repeatInstances,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$DataSubmissionsTableAnnotationComposer get submission {
    final $$DataSubmissionsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.submission,
        referencedTable: $db.dataSubmissions,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DataSubmissionsTableAnnotationComposer(
              $db: $db,
              $table: $db.dataSubmissions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$DataElementsTableAnnotationComposer get dataElement {
    final $$DataElementsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.dataElement,
        referencedTable: $db.dataElements,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DataElementsTableAnnotationComposer(
              $db: $db,
              $table: $db.dataElements,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$DataValuesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $DataValuesTable,
    DataValue,
    $$DataValuesTableFilterComposer,
    $$DataValuesTableOrderingComposer,
    $$DataValuesTableAnnotationComposer,
    $$DataValuesTableCreateCompanionBuilder,
    $$DataValuesTableUpdateCompanionBuilder,
    (DataValue, $$DataValuesTableReferences),
    DataValue,
    PrefetchHooks Function({bool parent, bool submission, bool dataElement})> {
  $$DataValuesTableTableManager(_$AppDatabase db, $DataValuesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DataValuesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DataValuesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DataValuesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<DateTime> lastModifiedDate = const Value.absent(),
            Value<DateTime> createdDate = const Value.absent(),
            Value<String> templatePath = const Value.absent(),
            Value<String?> parent = const Value.absent(),
            Value<String> submission = const Value.absent(),
            Value<String> dataElement = const Value.absent(),
            Value<String?> value = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DataValuesCompanion(
            id: id,
            lastModifiedDate: lastModifiedDate,
            createdDate: createdDate,
            templatePath: templatePath,
            parent: parent,
            submission: submission,
            dataElement: dataElement,
            value: value,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            Value<DateTime> lastModifiedDate = const Value.absent(),
            Value<DateTime> createdDate = const Value.absent(),
            required String templatePath,
            Value<String?> parent = const Value.absent(),
            required String submission,
            required String dataElement,
            Value<String?> value = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DataValuesCompanion.insert(
            id: id,
            lastModifiedDate: lastModifiedDate,
            createdDate: createdDate,
            templatePath: templatePath,
            parent: parent,
            submission: submission,
            dataElement: dataElement,
            value: value,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$DataValuesTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: (
              {parent = false, submission = false, dataElement = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (parent) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.parent,
                    referencedTable:
                        $$DataValuesTableReferences._parentTable(db),
                    referencedColumn:
                        $$DataValuesTableReferences._parentTable(db).id,
                  ) as T;
                }
                if (submission) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.submission,
                    referencedTable:
                        $$DataValuesTableReferences._submissionTable(db),
                    referencedColumn:
                        $$DataValuesTableReferences._submissionTable(db).id,
                  ) as T;
                }
                if (dataElement) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.dataElement,
                    referencedTable:
                        $$DataValuesTableReferences._dataElementTable(db),
                    referencedColumn:
                        $$DataValuesTableReferences._dataElementTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$DataValuesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $DataValuesTable,
    DataValue,
    $$DataValuesTableFilterComposer,
    $$DataValuesTableOrderingComposer,
    $$DataValuesTableAnnotationComposer,
    $$DataValuesTableCreateCompanionBuilder,
    $$DataValuesTableUpdateCompanionBuilder,
    (DataValue, $$DataValuesTableReferences),
    DataValue,
    PrefetchHooks Function({bool parent, bool submission, bool dataElement})>;
typedef $$DataOptionSetsTableCreateCompanionBuilder = DataOptionSetsCompanion
    Function({
  required String id,
  Value<DateTime> lastModifiedDate,
  Value<DateTime> createdDate,
  Value<String?> name,
  Value<String?> displayName,
  Value<String?> code,
  Value<List<Translation>?> translations,
  Value<List<FormOption>?> options,
  Value<int> rowid,
});
typedef $$DataOptionSetsTableUpdateCompanionBuilder = DataOptionSetsCompanion
    Function({
  Value<String> id,
  Value<DateTime> lastModifiedDate,
  Value<DateTime> createdDate,
  Value<String?> name,
  Value<String?> displayName,
  Value<String?> code,
  Value<List<Translation>?> translations,
  Value<List<FormOption>?> options,
  Value<int> rowid,
});

final class $$DataOptionSetsTableReferences
    extends BaseReferences<_$AppDatabase, $DataOptionSetsTable, DataOptionSet> {
  $$DataOptionSetsTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$DataOptionsTable, List<DataOption>>
      _dataOptionsRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.dataOptions,
              aliasName: $_aliasNameGenerator(
                  db.dataOptionSets.id, db.dataOptions.optionSet));

  $$DataOptionsTableProcessedTableManager get dataOptionsRefs {
    final manager = $$DataOptionsTableTableManager($_db, $_db.dataOptions)
        .filter((f) => f.optionSet.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_dataOptionsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$DataOptionSetsTableFilterComposer
    extends Composer<_$AppDatabase, $DataOptionSetsTable> {
  $$DataOptionSetsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get lastModifiedDate => $composableBuilder(
      column: $table.lastModifiedDate,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get displayName => $composableBuilder(
      column: $table.displayName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<List<Translation>?, List<Translation>, String>
      get translations => $composableBuilder(
          column: $table.translations,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<List<FormOption>?, List<FormOption>, String>
      get options => $composableBuilder(
          column: $table.options,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  Expression<bool> dataOptionsRefs(
      Expression<bool> Function($$DataOptionsTableFilterComposer f) f) {
    final $$DataOptionsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.dataOptions,
        getReferencedColumn: (t) => t.optionSet,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DataOptionsTableFilterComposer(
              $db: $db,
              $table: $db.dataOptions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$DataOptionSetsTableOrderingComposer
    extends Composer<_$AppDatabase, $DataOptionSetsTable> {
  $$DataOptionSetsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get lastModifiedDate => $composableBuilder(
      column: $table.lastModifiedDate,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get displayName => $composableBuilder(
      column: $table.displayName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get translations => $composableBuilder(
      column: $table.translations,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get options => $composableBuilder(
      column: $table.options, builder: (column) => ColumnOrderings(column));
}

class $$DataOptionSetsTableAnnotationComposer
    extends Composer<_$AppDatabase, $DataOptionSetsTable> {
  $$DataOptionSetsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get lastModifiedDate => $composableBuilder(
      column: $table.lastModifiedDate, builder: (column) => column);

  GeneratedColumn<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get displayName => $composableBuilder(
      column: $table.displayName, builder: (column) => column);

  GeneratedColumn<String> get code =>
      $composableBuilder(column: $table.code, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<Translation>?, String>
      get translations => $composableBuilder(
          column: $table.translations, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<FormOption>?, String> get options =>
      $composableBuilder(column: $table.options, builder: (column) => column);

  Expression<T> dataOptionsRefs<T extends Object>(
      Expression<T> Function($$DataOptionsTableAnnotationComposer a) f) {
    final $$DataOptionsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.dataOptions,
        getReferencedColumn: (t) => t.optionSet,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DataOptionsTableAnnotationComposer(
              $db: $db,
              $table: $db.dataOptions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$DataOptionSetsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $DataOptionSetsTable,
    DataOptionSet,
    $$DataOptionSetsTableFilterComposer,
    $$DataOptionSetsTableOrderingComposer,
    $$DataOptionSetsTableAnnotationComposer,
    $$DataOptionSetsTableCreateCompanionBuilder,
    $$DataOptionSetsTableUpdateCompanionBuilder,
    (DataOptionSet, $$DataOptionSetsTableReferences),
    DataOptionSet,
    PrefetchHooks Function({bool dataOptionsRefs})> {
  $$DataOptionSetsTableTableManager(
      _$AppDatabase db, $DataOptionSetsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DataOptionSetsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DataOptionSetsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DataOptionSetsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<DateTime> lastModifiedDate = const Value.absent(),
            Value<DateTime> createdDate = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> displayName = const Value.absent(),
            Value<String?> code = const Value.absent(),
            Value<List<Translation>?> translations = const Value.absent(),
            Value<List<FormOption>?> options = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DataOptionSetsCompanion(
            id: id,
            lastModifiedDate: lastModifiedDate,
            createdDate: createdDate,
            name: name,
            displayName: displayName,
            code: code,
            translations: translations,
            options: options,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            Value<DateTime> lastModifiedDate = const Value.absent(),
            Value<DateTime> createdDate = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> displayName = const Value.absent(),
            Value<String?> code = const Value.absent(),
            Value<List<Translation>?> translations = const Value.absent(),
            Value<List<FormOption>?> options = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DataOptionSetsCompanion.insert(
            id: id,
            lastModifiedDate: lastModifiedDate,
            createdDate: createdDate,
            name: name,
            displayName: displayName,
            code: code,
            translations: translations,
            options: options,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$DataOptionSetsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({dataOptionsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (dataOptionsRefs) db.dataOptions],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (dataOptionsRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$DataOptionSetsTableReferences
                            ._dataOptionsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$DataOptionSetsTableReferences(db, table, p0)
                                .dataOptionsRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.optionSet == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$DataOptionSetsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $DataOptionSetsTable,
    DataOptionSet,
    $$DataOptionSetsTableFilterComposer,
    $$DataOptionSetsTableOrderingComposer,
    $$DataOptionSetsTableAnnotationComposer,
    $$DataOptionSetsTableCreateCompanionBuilder,
    $$DataOptionSetsTableUpdateCompanionBuilder,
    (DataOptionSet, $$DataOptionSetsTableReferences),
    DataOptionSet,
    PrefetchHooks Function({bool dataOptionsRefs})>;
typedef $$DataOptionsTableCreateCompanionBuilder = DataOptionsCompanion
    Function({
  required String id,
  Value<DateTime> lastModifiedDate,
  Value<DateTime> createdDate,
  Value<String?> name,
  Value<String?> displayName,
  Value<String?> code,
  Value<List<Translation>?> translations,
  required String optionSet,
  required String listName,
  required int order,
  Value<String?> filterExpression,
  Value<Map<String, String>> label,
  Value<Map<String, dynamic>?> properties,
  Value<int> rowid,
});
typedef $$DataOptionsTableUpdateCompanionBuilder = DataOptionsCompanion
    Function({
  Value<String> id,
  Value<DateTime> lastModifiedDate,
  Value<DateTime> createdDate,
  Value<String?> name,
  Value<String?> displayName,
  Value<String?> code,
  Value<List<Translation>?> translations,
  Value<String> optionSet,
  Value<String> listName,
  Value<int> order,
  Value<String?> filterExpression,
  Value<Map<String, String>> label,
  Value<Map<String, dynamic>?> properties,
  Value<int> rowid,
});

final class $$DataOptionsTableReferences
    extends BaseReferences<_$AppDatabase, $DataOptionsTable, DataOption> {
  $$DataOptionsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $DataOptionSetsTable _optionSetTable(_$AppDatabase db) =>
      db.dataOptionSets.createAlias(
          $_aliasNameGenerator(db.dataOptions.optionSet, db.dataOptionSets.id));

  $$DataOptionSetsTableProcessedTableManager get optionSet {
    final manager = $$DataOptionSetsTableTableManager($_db, $_db.dataOptionSets)
        .filter((f) => f.id($_item.optionSet));
    final item = $_typedResult.readTableOrNull(_optionSetTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$DataOptionsTableFilterComposer
    extends Composer<_$AppDatabase, $DataOptionsTable> {
  $$DataOptionsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get lastModifiedDate => $composableBuilder(
      column: $table.lastModifiedDate,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get displayName => $composableBuilder(
      column: $table.displayName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<List<Translation>?, List<Translation>, String>
      get translations => $composableBuilder(
          column: $table.translations,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<String> get listName => $composableBuilder(
      column: $table.listName, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get order => $composableBuilder(
      column: $table.order, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get filterExpression => $composableBuilder(
      column: $table.filterExpression,
      builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<Map<String, String>, Map<String, String>,
          String>
      get label => $composableBuilder(
          column: $table.label,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<Map<String, dynamic>?, Map<String, dynamic>,
          String>
      get properties => $composableBuilder(
          column: $table.properties,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  $$DataOptionSetsTableFilterComposer get optionSet {
    final $$DataOptionSetsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.optionSet,
        referencedTable: $db.dataOptionSets,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DataOptionSetsTableFilterComposer(
              $db: $db,
              $table: $db.dataOptionSets,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$DataOptionsTableOrderingComposer
    extends Composer<_$AppDatabase, $DataOptionsTable> {
  $$DataOptionsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get lastModifiedDate => $composableBuilder(
      column: $table.lastModifiedDate,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get displayName => $composableBuilder(
      column: $table.displayName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get translations => $composableBuilder(
      column: $table.translations,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get listName => $composableBuilder(
      column: $table.listName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get order => $composableBuilder(
      column: $table.order, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get filterExpression => $composableBuilder(
      column: $table.filterExpression,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get label => $composableBuilder(
      column: $table.label, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get properties => $composableBuilder(
      column: $table.properties, builder: (column) => ColumnOrderings(column));

  $$DataOptionSetsTableOrderingComposer get optionSet {
    final $$DataOptionSetsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.optionSet,
        referencedTable: $db.dataOptionSets,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DataOptionSetsTableOrderingComposer(
              $db: $db,
              $table: $db.dataOptionSets,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$DataOptionsTableAnnotationComposer
    extends Composer<_$AppDatabase, $DataOptionsTable> {
  $$DataOptionsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get lastModifiedDate => $composableBuilder(
      column: $table.lastModifiedDate, builder: (column) => column);

  GeneratedColumn<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get displayName => $composableBuilder(
      column: $table.displayName, builder: (column) => column);

  GeneratedColumn<String> get code =>
      $composableBuilder(column: $table.code, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<Translation>?, String>
      get translations => $composableBuilder(
          column: $table.translations, builder: (column) => column);

  GeneratedColumn<String> get listName =>
      $composableBuilder(column: $table.listName, builder: (column) => column);

  GeneratedColumn<int> get order =>
      $composableBuilder(column: $table.order, builder: (column) => column);

  GeneratedColumn<String> get filterExpression => $composableBuilder(
      column: $table.filterExpression, builder: (column) => column);

  GeneratedColumnWithTypeConverter<Map<String, String>, String> get label =>
      $composableBuilder(column: $table.label, builder: (column) => column);

  GeneratedColumnWithTypeConverter<Map<String, dynamic>?, String>
      get properties => $composableBuilder(
          column: $table.properties, builder: (column) => column);

  $$DataOptionSetsTableAnnotationComposer get optionSet {
    final $$DataOptionSetsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.optionSet,
        referencedTable: $db.dataOptionSets,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DataOptionSetsTableAnnotationComposer(
              $db: $db,
              $table: $db.dataOptionSets,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$DataOptionsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $DataOptionsTable,
    DataOption,
    $$DataOptionsTableFilterComposer,
    $$DataOptionsTableOrderingComposer,
    $$DataOptionsTableAnnotationComposer,
    $$DataOptionsTableCreateCompanionBuilder,
    $$DataOptionsTableUpdateCompanionBuilder,
    (DataOption, $$DataOptionsTableReferences),
    DataOption,
    PrefetchHooks Function({bool optionSet})> {
  $$DataOptionsTableTableManager(_$AppDatabase db, $DataOptionsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DataOptionsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DataOptionsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DataOptionsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<DateTime> lastModifiedDate = const Value.absent(),
            Value<DateTime> createdDate = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> displayName = const Value.absent(),
            Value<String?> code = const Value.absent(),
            Value<List<Translation>?> translations = const Value.absent(),
            Value<String> optionSet = const Value.absent(),
            Value<String> listName = const Value.absent(),
            Value<int> order = const Value.absent(),
            Value<String?> filterExpression = const Value.absent(),
            Value<Map<String, String>> label = const Value.absent(),
            Value<Map<String, dynamic>?> properties = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DataOptionsCompanion(
            id: id,
            lastModifiedDate: lastModifiedDate,
            createdDate: createdDate,
            name: name,
            displayName: displayName,
            code: code,
            translations: translations,
            optionSet: optionSet,
            listName: listName,
            order: order,
            filterExpression: filterExpression,
            label: label,
            properties: properties,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            Value<DateTime> lastModifiedDate = const Value.absent(),
            Value<DateTime> createdDate = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> displayName = const Value.absent(),
            Value<String?> code = const Value.absent(),
            Value<List<Translation>?> translations = const Value.absent(),
            required String optionSet,
            required String listName,
            required int order,
            Value<String?> filterExpression = const Value.absent(),
            Value<Map<String, String>> label = const Value.absent(),
            Value<Map<String, dynamic>?> properties = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DataOptionsCompanion.insert(
            id: id,
            lastModifiedDate: lastModifiedDate,
            createdDate: createdDate,
            name: name,
            displayName: displayName,
            code: code,
            translations: translations,
            optionSet: optionSet,
            listName: listName,
            order: order,
            filterExpression: filterExpression,
            label: label,
            properties: properties,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$DataOptionsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({optionSet = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (optionSet) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.optionSet,
                    referencedTable:
                        $$DataOptionsTableReferences._optionSetTable(db),
                    referencedColumn:
                        $$DataOptionsTableReferences._optionSetTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$DataOptionsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $DataOptionsTable,
    DataOption,
    $$DataOptionsTableFilterComposer,
    $$DataOptionsTableOrderingComposer,
    $$DataOptionsTableAnnotationComposer,
    $$DataOptionsTableCreateCompanionBuilder,
    $$DataOptionsTableUpdateCompanionBuilder,
    (DataOption, $$DataOptionsTableReferences),
    DataOption,
    PrefetchHooks Function({bool optionSet})>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$UsersTableTableManager get users =>
      $$UsersTableTableManager(_db, _db.users);
  $$OrgUnitsTableTableManager get orgUnits =>
      $$OrgUnitsTableTableManager(_db, _db.orgUnits);
  $$OuLevelsTableTableManager get ouLevels =>
      $$OuLevelsTableTableManager(_db, _db.ouLevels);
  $$ProjectsTableTableManager get projects =>
      $$ProjectsTableTableManager(_db, _db.projects);
  $$ActivitiesTableTableManager get activities =>
      $$ActivitiesTableTableManager(_db, _db.activities);
  $$TeamsTableTableManager get teams =>
      $$TeamsTableTableManager(_db, _db.teams);
  $$AssignmentsTableTableManager get assignments =>
      $$AssignmentsTableTableManager(_db, _db.assignments);
  $$FormTemplatesTableTableManager get formTemplates =>
      $$FormTemplatesTableTableManager(_db, _db.formTemplates);
  $$FormVersionsTableTableManager get formVersions =>
      $$FormVersionsTableTableManager(_db, _db.formVersions);
  $$MetadataSubmissionsTableTableManager get metadataSubmissions =>
      $$MetadataSubmissionsTableTableManager(_db, _db.metadataSubmissions);
  $$DataSubmissionsTableTableManager get dataSubmissions =>
      $$DataSubmissionsTableTableManager(_db, _db.dataSubmissions);
  $$RepeatInstancesTableTableManager get repeatInstances =>
      $$RepeatInstancesTableTableManager(_db, _db.repeatInstances);
  $$DataElementsTableTableManager get dataElements =>
      $$DataElementsTableTableManager(_db, _db.dataElements);
  $$DataValuesTableTableManager get dataValues =>
      $$DataValuesTableTableManager(_db, _db.dataValues);
  $$DataOptionSetsTableTableManager get dataOptionSets =>
      $$DataOptionSetsTableTableManager(_db, _db.dataOptionSets);
  $$DataOptionsTableTableManager get dataOptions =>
      $$DataOptionsTableTableManager(_db, _db.dataOptions);
}
