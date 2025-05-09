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
      GeneratedColumn<DateTime>('last_modified_date', aliasedName, true,
          type: DriftSqlType.dateTime,
          requiredDuringInsert: false,
          defaultValue: Constant(DateTime.now().toUtc()));
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, true,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: Constant(DateTime.now().toUtc()));
  static const VerificationMeta _usernameMeta =
      const VerificationMeta('username');
  @override
  late final GeneratedColumn<String> username = GeneratedColumn<String>(
      'username', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _firstNameMeta =
      const VerificationMeta('firstName');
  @override
  late final GeneratedColumn<String> firstName = GeneratedColumn<String>(
      'first_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _lastNameMeta =
      const VerificationMeta('lastName');
  @override
  late final GeneratedColumn<String> lastName = GeneratedColumn<String>(
      'last_name', aliasedName, true,
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
      'lang_key', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      clientDefault: () => 'ar');
  static const VerificationMeta _activatedMeta =
      const VerificationMeta('activated');
  @override
  late final GeneratedColumn<bool> activated = GeneratedColumn<bool>(
      'activated', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("activated" IN (0, 1))'),
      defaultValue: Constant(false));
  static const VerificationMeta _imageUrlMeta =
      const VerificationMeta('imageUrl');
  @override
  late final GeneratedColumn<String> imageUrl = GeneratedColumn<String>(
      'image_url', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumnWithTypeConverter<List<String>, String>
      authorities = GeneratedColumn<String>('authorities', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<List<String>>($UsersTable.$converterauthorities);
  static const VerificationMeta _submissionCountMeta =
      const VerificationMeta('submissionCount');
  @override
  late final GeneratedColumn<int> submissionCount = GeneratedColumn<int>(
      'submission_count', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      clientDefault: () => 0);
  static const VerificationMeta _assignmentCountMeta =
      const VerificationMeta('assignmentCount');
  @override
  late final GeneratedColumn<int> assignmentCount = GeneratedColumn<int>(
      'assignment_count', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      clientDefault: () => 0);
  static const VerificationMeta _orgUnitCountMeta =
      const VerificationMeta('orgUnitCount');
  @override
  late final GeneratedColumn<int> orgUnitCount = GeneratedColumn<int>(
      'org_unit_count', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      clientDefault: () => 0);
  @override
  late final GeneratedColumnWithTypeConverter<List<String>, String>
      activityUIDs = GeneratedColumn<String>(
              'activity_u_i_ds', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<List<String>>($UsersTable.$converteractivityUIDs);
  @override
  late final GeneratedColumnWithTypeConverter<List<String>, String>
      userTeamsUIDs = GeneratedColumn<String>(
              'user_teams_u_i_ds', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<List<String>>($UsersTable.$converteruserTeamsUIDs);
  @override
  late final GeneratedColumnWithTypeConverter<List<String>, String>
      managedTeamsUIDs = GeneratedColumn<String>(
              'managed_teams_u_i_ds', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<List<String>>($UsersTable.$convertermanagedTeamsUIDs);
  @override
  late final GeneratedColumnWithTypeConverter<List<String>, String>
      userGroupsUIDs = GeneratedColumn<String>(
              'user_groups_u_i_ds', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<List<String>>($UsersTable.$converteruserGroupsUIDs);
  @override
  late final GeneratedColumnWithTypeConverter<List<String>, String>
      userFormsUIDs = GeneratedColumn<String>(
              'user_forms_u_i_ds', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<List<String>>($UsersTable.$converteruserFormsUIDs);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        lastModifiedDate,
        createdDate,
        username,
        firstName,
        lastName,
        mobile,
        email,
        langKey,
        activated,
        imageUrl,
        authorities,
        submissionCount,
        assignmentCount,
        orgUnitCount,
        activityUIDs,
        userTeamsUIDs,
        managedTeamsUIDs,
        userGroupsUIDs,
        userFormsUIDs
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
    if (data.containsKey('first_name')) {
      context.handle(_firstNameMeta,
          firstName.isAcceptableOrUnknown(data['first_name']!, _firstNameMeta));
    }
    if (data.containsKey('last_name')) {
      context.handle(_lastNameMeta,
          lastName.isAcceptableOrUnknown(data['last_name']!, _lastNameMeta));
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
    if (data.containsKey('submission_count')) {
      context.handle(
          _submissionCountMeta,
          submissionCount.isAcceptableOrUnknown(
              data['submission_count']!, _submissionCountMeta));
    }
    if (data.containsKey('assignment_count')) {
      context.handle(
          _assignmentCountMeta,
          assignmentCount.isAcceptableOrUnknown(
              data['assignment_count']!, _assignmentCountMeta));
    }
    if (data.containsKey('org_unit_count')) {
      context.handle(
          _orgUnitCountMeta,
          orgUnitCount.isAcceptableOrUnknown(
              data['org_unit_count']!, _orgUnitCountMeta));
    }
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
          DriftSqlType.dateTime, data['${effectivePrefix}last_modified_date']),
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date']),
      username: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}username'])!,
      firstName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}first_name']),
      lastName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}last_name']),
      mobile: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}mobile']),
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email']),
      langKey: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}lang_key']),
      activated: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}activated'])!,
      imageUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image_url']),
      authorities: $UsersTable.$converterauthorities.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}authorities'])!),
      submissionCount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}submission_count']),
      assignmentCount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}assignment_count']),
      orgUnitCount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}org_unit_count']),
      activityUIDs: $UsersTable.$converteractivityUIDs.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}activity_u_i_ds'])!),
      userTeamsUIDs: $UsersTable.$converteruserTeamsUIDs.fromSql(
          attachedDatabase.typeMapping.read(DriftSqlType.string,
              data['${effectivePrefix}user_teams_u_i_ds'])!),
      managedTeamsUIDs: $UsersTable.$convertermanagedTeamsUIDs.fromSql(
          attachedDatabase.typeMapping.read(DriftSqlType.string,
              data['${effectivePrefix}managed_teams_u_i_ds'])!),
      userGroupsUIDs: $UsersTable.$converteruserGroupsUIDs.fromSql(
          attachedDatabase.typeMapping.read(DriftSqlType.string,
              data['${effectivePrefix}user_groups_u_i_ds'])!),
      userFormsUIDs: $UsersTable.$converteruserFormsUIDs.fromSql(
          attachedDatabase.typeMapping.read(DriftSqlType.string,
              data['${effectivePrefix}user_forms_u_i_ds'])!),
    );
  }

  @override
  $UsersTable createAlias(String alias) {
    return $UsersTable(attachedDatabase, alias);
  }

  static TypeConverter<List<String>, String> $converterauthorities =
      const ListConverter<String>();
  static TypeConverter<List<String>, String> $converteractivityUIDs =
      const ListConverter<String>();
  static TypeConverter<List<String>, String> $converteruserTeamsUIDs =
      const ListConverter<String>();
  static TypeConverter<List<String>, String> $convertermanagedTeamsUIDs =
      const ListConverter<String>();
  static TypeConverter<List<String>, String> $converteruserGroupsUIDs =
      const ListConverter<String>();
  static TypeConverter<List<String>, String> $converteruserFormsUIDs =
      const ListConverter<String>();
}

class User extends DataClass implements Insertable<User> {
  final String id;
  final DateTime? lastModifiedDate;
  final DateTime? createdDate;
  final String username;
  final String? firstName;
  final String? lastName;
  final String? mobile;
  final String? email;
  final String? langKey;
  final bool activated;
  final String? imageUrl;
  final List<String> authorities;
  final int? submissionCount;
  final int? assignmentCount;
  final int? orgUnitCount;
  final List<String> activityUIDs;
  final List<String> userTeamsUIDs;
  final List<String> managedTeamsUIDs;
  final List<String> userGroupsUIDs;
  final List<String> userFormsUIDs;
  const User(
      {required this.id,
      this.lastModifiedDate,
      this.createdDate,
      required this.username,
      this.firstName,
      this.lastName,
      this.mobile,
      this.email,
      this.langKey,
      required this.activated,
      this.imageUrl,
      required this.authorities,
      this.submissionCount,
      this.assignmentCount,
      this.orgUnitCount,
      required this.activityUIDs,
      required this.userTeamsUIDs,
      required this.managedTeamsUIDs,
      required this.userGroupsUIDs,
      required this.userFormsUIDs});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    if (!nullToAbsent || lastModifiedDate != null) {
      map['last_modified_date'] = Variable<DateTime>(lastModifiedDate);
    }
    if (!nullToAbsent || createdDate != null) {
      map['created_date'] = Variable<DateTime>(createdDate);
    }
    map['username'] = Variable<String>(username);
    if (!nullToAbsent || firstName != null) {
      map['first_name'] = Variable<String>(firstName);
    }
    if (!nullToAbsent || lastName != null) {
      map['last_name'] = Variable<String>(lastName);
    }
    if (!nullToAbsent || mobile != null) {
      map['mobile'] = Variable<String>(mobile);
    }
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String>(email);
    }
    if (!nullToAbsent || langKey != null) {
      map['lang_key'] = Variable<String>(langKey);
    }
    map['activated'] = Variable<bool>(activated);
    if (!nullToAbsent || imageUrl != null) {
      map['image_url'] = Variable<String>(imageUrl);
    }
    {
      map['authorities'] = Variable<String>(
          $UsersTable.$converterauthorities.toSql(authorities));
    }
    if (!nullToAbsent || submissionCount != null) {
      map['submission_count'] = Variable<int>(submissionCount);
    }
    if (!nullToAbsent || assignmentCount != null) {
      map['assignment_count'] = Variable<int>(assignmentCount);
    }
    if (!nullToAbsent || orgUnitCount != null) {
      map['org_unit_count'] = Variable<int>(orgUnitCount);
    }
    {
      map['activity_u_i_ds'] = Variable<String>(
          $UsersTable.$converteractivityUIDs.toSql(activityUIDs));
    }
    {
      map['user_teams_u_i_ds'] = Variable<String>(
          $UsersTable.$converteruserTeamsUIDs.toSql(userTeamsUIDs));
    }
    {
      map['managed_teams_u_i_ds'] = Variable<String>(
          $UsersTable.$convertermanagedTeamsUIDs.toSql(managedTeamsUIDs));
    }
    {
      map['user_groups_u_i_ds'] = Variable<String>(
          $UsersTable.$converteruserGroupsUIDs.toSql(userGroupsUIDs));
    }
    {
      map['user_forms_u_i_ds'] = Variable<String>(
          $UsersTable.$converteruserFormsUIDs.toSql(userFormsUIDs));
    }
    return map;
  }

  UsersCompanion toCompanion(bool nullToAbsent) {
    return UsersCompanion(
      id: Value(id),
      lastModifiedDate: lastModifiedDate == null && nullToAbsent
          ? const Value.absent()
          : Value(lastModifiedDate),
      createdDate: createdDate == null && nullToAbsent
          ? const Value.absent()
          : Value(createdDate),
      username: Value(username),
      firstName: firstName == null && nullToAbsent
          ? const Value.absent()
          : Value(firstName),
      lastName: lastName == null && nullToAbsent
          ? const Value.absent()
          : Value(lastName),
      mobile:
          mobile == null && nullToAbsent ? const Value.absent() : Value(mobile),
      email:
          email == null && nullToAbsent ? const Value.absent() : Value(email),
      langKey: langKey == null && nullToAbsent
          ? const Value.absent()
          : Value(langKey),
      activated: Value(activated),
      imageUrl: imageUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(imageUrl),
      authorities: Value(authorities),
      submissionCount: submissionCount == null && nullToAbsent
          ? const Value.absent()
          : Value(submissionCount),
      assignmentCount: assignmentCount == null && nullToAbsent
          ? const Value.absent()
          : Value(assignmentCount),
      orgUnitCount: orgUnitCount == null && nullToAbsent
          ? const Value.absent()
          : Value(orgUnitCount),
      activityUIDs: Value(activityUIDs),
      userTeamsUIDs: Value(userTeamsUIDs),
      managedTeamsUIDs: Value(managedTeamsUIDs),
      userGroupsUIDs: Value(userGroupsUIDs),
      userFormsUIDs: Value(userFormsUIDs),
    );
  }

  factory User.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return User(
      id: serializer.fromJson<String>(json['id']),
      lastModifiedDate:
          serializer.fromJson<DateTime?>(json['lastModifiedDate']),
      createdDate: serializer.fromJson<DateTime?>(json['createdDate']),
      username: serializer.fromJson<String>(json['username']),
      firstName: serializer.fromJson<String?>(json['firstName']),
      lastName: serializer.fromJson<String?>(json['lastName']),
      mobile: serializer.fromJson<String?>(json['mobile']),
      email: serializer.fromJson<String?>(json['email']),
      langKey: serializer.fromJson<String?>(json['langKey']),
      activated: serializer.fromJson<bool>(json['activated']),
      imageUrl: serializer.fromJson<String?>(json['imageUrl']),
      authorities: serializer.fromJson<List<String>>(json['authorities']),
      submissionCount: serializer.fromJson<int?>(json['submissionCount']),
      assignmentCount: serializer.fromJson<int?>(json['assignmentCount']),
      orgUnitCount: serializer.fromJson<int?>(json['orgUnitCount']),
      activityUIDs: serializer.fromJson<List<String>>(json['activityUIDs']),
      userTeamsUIDs: serializer.fromJson<List<String>>(json['userTeamsUIDs']),
      managedTeamsUIDs:
          serializer.fromJson<List<String>>(json['managedTeamsUIDs']),
      userGroupsUIDs: serializer.fromJson<List<String>>(json['userGroupsUIDs']),
      userFormsUIDs: serializer.fromJson<List<String>>(json['userFormsUIDs']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'lastModifiedDate': serializer.toJson<DateTime?>(lastModifiedDate),
      'createdDate': serializer.toJson<DateTime?>(createdDate),
      'username': serializer.toJson<String>(username),
      'firstName': serializer.toJson<String?>(firstName),
      'lastName': serializer.toJson<String?>(lastName),
      'mobile': serializer.toJson<String?>(mobile),
      'email': serializer.toJson<String?>(email),
      'langKey': serializer.toJson<String?>(langKey),
      'activated': serializer.toJson<bool>(activated),
      'imageUrl': serializer.toJson<String?>(imageUrl),
      'authorities': serializer.toJson<List<String>>(authorities),
      'submissionCount': serializer.toJson<int?>(submissionCount),
      'assignmentCount': serializer.toJson<int?>(assignmentCount),
      'orgUnitCount': serializer.toJson<int?>(orgUnitCount),
      'activityUIDs': serializer.toJson<List<String>>(activityUIDs),
      'userTeamsUIDs': serializer.toJson<List<String>>(userTeamsUIDs),
      'managedTeamsUIDs': serializer.toJson<List<String>>(managedTeamsUIDs),
      'userGroupsUIDs': serializer.toJson<List<String>>(userGroupsUIDs),
      'userFormsUIDs': serializer.toJson<List<String>>(userFormsUIDs),
    };
  }

  User copyWith(
          {String? id,
          Value<DateTime?> lastModifiedDate = const Value.absent(),
          Value<DateTime?> createdDate = const Value.absent(),
          String? username,
          Value<String?> firstName = const Value.absent(),
          Value<String?> lastName = const Value.absent(),
          Value<String?> mobile = const Value.absent(),
          Value<String?> email = const Value.absent(),
          Value<String?> langKey = const Value.absent(),
          bool? activated,
          Value<String?> imageUrl = const Value.absent(),
          List<String>? authorities,
          Value<int?> submissionCount = const Value.absent(),
          Value<int?> assignmentCount = const Value.absent(),
          Value<int?> orgUnitCount = const Value.absent(),
          List<String>? activityUIDs,
          List<String>? userTeamsUIDs,
          List<String>? managedTeamsUIDs,
          List<String>? userGroupsUIDs,
          List<String>? userFormsUIDs}) =>
      User(
        id: id ?? this.id,
        lastModifiedDate: lastModifiedDate.present
            ? lastModifiedDate.value
            : this.lastModifiedDate,
        createdDate: createdDate.present ? createdDate.value : this.createdDate,
        username: username ?? this.username,
        firstName: firstName.present ? firstName.value : this.firstName,
        lastName: lastName.present ? lastName.value : this.lastName,
        mobile: mobile.present ? mobile.value : this.mobile,
        email: email.present ? email.value : this.email,
        langKey: langKey.present ? langKey.value : this.langKey,
        activated: activated ?? this.activated,
        imageUrl: imageUrl.present ? imageUrl.value : this.imageUrl,
        authorities: authorities ?? this.authorities,
        submissionCount: submissionCount.present
            ? submissionCount.value
            : this.submissionCount,
        assignmentCount: assignmentCount.present
            ? assignmentCount.value
            : this.assignmentCount,
        orgUnitCount:
            orgUnitCount.present ? orgUnitCount.value : this.orgUnitCount,
        activityUIDs: activityUIDs ?? this.activityUIDs,
        userTeamsUIDs: userTeamsUIDs ?? this.userTeamsUIDs,
        managedTeamsUIDs: managedTeamsUIDs ?? this.managedTeamsUIDs,
        userGroupsUIDs: userGroupsUIDs ?? this.userGroupsUIDs,
        userFormsUIDs: userFormsUIDs ?? this.userFormsUIDs,
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
      firstName: data.firstName.present ? data.firstName.value : this.firstName,
      lastName: data.lastName.present ? data.lastName.value : this.lastName,
      mobile: data.mobile.present ? data.mobile.value : this.mobile,
      email: data.email.present ? data.email.value : this.email,
      langKey: data.langKey.present ? data.langKey.value : this.langKey,
      activated: data.activated.present ? data.activated.value : this.activated,
      imageUrl: data.imageUrl.present ? data.imageUrl.value : this.imageUrl,
      authorities:
          data.authorities.present ? data.authorities.value : this.authorities,
      submissionCount: data.submissionCount.present
          ? data.submissionCount.value
          : this.submissionCount,
      assignmentCount: data.assignmentCount.present
          ? data.assignmentCount.value
          : this.assignmentCount,
      orgUnitCount: data.orgUnitCount.present
          ? data.orgUnitCount.value
          : this.orgUnitCount,
      activityUIDs: data.activityUIDs.present
          ? data.activityUIDs.value
          : this.activityUIDs,
      userTeamsUIDs: data.userTeamsUIDs.present
          ? data.userTeamsUIDs.value
          : this.userTeamsUIDs,
      managedTeamsUIDs: data.managedTeamsUIDs.present
          ? data.managedTeamsUIDs.value
          : this.managedTeamsUIDs,
      userGroupsUIDs: data.userGroupsUIDs.present
          ? data.userGroupsUIDs.value
          : this.userGroupsUIDs,
      userFormsUIDs: data.userFormsUIDs.present
          ? data.userFormsUIDs.value
          : this.userFormsUIDs,
    );
  }

  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('id: $id, ')
          ..write('lastModifiedDate: $lastModifiedDate, ')
          ..write('createdDate: $createdDate, ')
          ..write('username: $username, ')
          ..write('firstName: $firstName, ')
          ..write('lastName: $lastName, ')
          ..write('mobile: $mobile, ')
          ..write('email: $email, ')
          ..write('langKey: $langKey, ')
          ..write('activated: $activated, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('authorities: $authorities, ')
          ..write('submissionCount: $submissionCount, ')
          ..write('assignmentCount: $assignmentCount, ')
          ..write('orgUnitCount: $orgUnitCount, ')
          ..write('activityUIDs: $activityUIDs, ')
          ..write('userTeamsUIDs: $userTeamsUIDs, ')
          ..write('managedTeamsUIDs: $managedTeamsUIDs, ')
          ..write('userGroupsUIDs: $userGroupsUIDs, ')
          ..write('userFormsUIDs: $userFormsUIDs')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      lastModifiedDate,
      createdDate,
      username,
      firstName,
      lastName,
      mobile,
      email,
      langKey,
      activated,
      imageUrl,
      authorities,
      submissionCount,
      assignmentCount,
      orgUnitCount,
      activityUIDs,
      userTeamsUIDs,
      managedTeamsUIDs,
      userGroupsUIDs,
      userFormsUIDs);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is User &&
          other.id == this.id &&
          other.lastModifiedDate == this.lastModifiedDate &&
          other.createdDate == this.createdDate &&
          other.username == this.username &&
          other.firstName == this.firstName &&
          other.lastName == this.lastName &&
          other.mobile == this.mobile &&
          other.email == this.email &&
          other.langKey == this.langKey &&
          other.activated == this.activated &&
          other.imageUrl == this.imageUrl &&
          other.authorities == this.authorities &&
          other.submissionCount == this.submissionCount &&
          other.assignmentCount == this.assignmentCount &&
          other.orgUnitCount == this.orgUnitCount &&
          other.activityUIDs == this.activityUIDs &&
          other.userTeamsUIDs == this.userTeamsUIDs &&
          other.managedTeamsUIDs == this.managedTeamsUIDs &&
          other.userGroupsUIDs == this.userGroupsUIDs &&
          other.userFormsUIDs == this.userFormsUIDs);
}

class UsersCompanion extends UpdateCompanion<User> {
  final Value<String> id;
  final Value<DateTime?> lastModifiedDate;
  final Value<DateTime?> createdDate;
  final Value<String> username;
  final Value<String?> firstName;
  final Value<String?> lastName;
  final Value<String?> mobile;
  final Value<String?> email;
  final Value<String?> langKey;
  final Value<bool> activated;
  final Value<String?> imageUrl;
  final Value<List<String>> authorities;
  final Value<int?> submissionCount;
  final Value<int?> assignmentCount;
  final Value<int?> orgUnitCount;
  final Value<List<String>> activityUIDs;
  final Value<List<String>> userTeamsUIDs;
  final Value<List<String>> managedTeamsUIDs;
  final Value<List<String>> userGroupsUIDs;
  final Value<List<String>> userFormsUIDs;
  final Value<int> rowid;
  const UsersCompanion({
    this.id = const Value.absent(),
    this.lastModifiedDate = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.username = const Value.absent(),
    this.firstName = const Value.absent(),
    this.lastName = const Value.absent(),
    this.mobile = const Value.absent(),
    this.email = const Value.absent(),
    this.langKey = const Value.absent(),
    this.activated = const Value.absent(),
    this.imageUrl = const Value.absent(),
    this.authorities = const Value.absent(),
    this.submissionCount = const Value.absent(),
    this.assignmentCount = const Value.absent(),
    this.orgUnitCount = const Value.absent(),
    this.activityUIDs = const Value.absent(),
    this.userTeamsUIDs = const Value.absent(),
    this.managedTeamsUIDs = const Value.absent(),
    this.userGroupsUIDs = const Value.absent(),
    this.userFormsUIDs = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UsersCompanion.insert({
    required String id,
    this.lastModifiedDate = const Value.absent(),
    this.createdDate = const Value.absent(),
    required String username,
    this.firstName = const Value.absent(),
    this.lastName = const Value.absent(),
    this.mobile = const Value.absent(),
    this.email = const Value.absent(),
    this.langKey = const Value.absent(),
    this.activated = const Value.absent(),
    this.imageUrl = const Value.absent(),
    required List<String> authorities,
    this.submissionCount = const Value.absent(),
    this.assignmentCount = const Value.absent(),
    this.orgUnitCount = const Value.absent(),
    required List<String> activityUIDs,
    required List<String> userTeamsUIDs,
    required List<String> managedTeamsUIDs,
    required List<String> userGroupsUIDs,
    required List<String> userFormsUIDs,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        username = Value(username),
        authorities = Value(authorities),
        activityUIDs = Value(activityUIDs),
        userTeamsUIDs = Value(userTeamsUIDs),
        managedTeamsUIDs = Value(managedTeamsUIDs),
        userGroupsUIDs = Value(userGroupsUIDs),
        userFormsUIDs = Value(userFormsUIDs);
  static Insertable<User> custom({
    Expression<String>? id,
    Expression<DateTime>? lastModifiedDate,
    Expression<DateTime>? createdDate,
    Expression<String>? username,
    Expression<String>? firstName,
    Expression<String>? lastName,
    Expression<String>? mobile,
    Expression<String>? email,
    Expression<String>? langKey,
    Expression<bool>? activated,
    Expression<String>? imageUrl,
    Expression<String>? authorities,
    Expression<int>? submissionCount,
    Expression<int>? assignmentCount,
    Expression<int>? orgUnitCount,
    Expression<String>? activityUIDs,
    Expression<String>? userTeamsUIDs,
    Expression<String>? managedTeamsUIDs,
    Expression<String>? userGroupsUIDs,
    Expression<String>? userFormsUIDs,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (lastModifiedDate != null) 'last_modified_date': lastModifiedDate,
      if (createdDate != null) 'created_date': createdDate,
      if (username != null) 'username': username,
      if (firstName != null) 'first_name': firstName,
      if (lastName != null) 'last_name': lastName,
      if (mobile != null) 'mobile': mobile,
      if (email != null) 'email': email,
      if (langKey != null) 'lang_key': langKey,
      if (activated != null) 'activated': activated,
      if (imageUrl != null) 'image_url': imageUrl,
      if (authorities != null) 'authorities': authorities,
      if (submissionCount != null) 'submission_count': submissionCount,
      if (assignmentCount != null) 'assignment_count': assignmentCount,
      if (orgUnitCount != null) 'org_unit_count': orgUnitCount,
      if (activityUIDs != null) 'activity_u_i_ds': activityUIDs,
      if (userTeamsUIDs != null) 'user_teams_u_i_ds': userTeamsUIDs,
      if (managedTeamsUIDs != null) 'managed_teams_u_i_ds': managedTeamsUIDs,
      if (userGroupsUIDs != null) 'user_groups_u_i_ds': userGroupsUIDs,
      if (userFormsUIDs != null) 'user_forms_u_i_ds': userFormsUIDs,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UsersCompanion copyWith(
      {Value<String>? id,
      Value<DateTime?>? lastModifiedDate,
      Value<DateTime?>? createdDate,
      Value<String>? username,
      Value<String?>? firstName,
      Value<String?>? lastName,
      Value<String?>? mobile,
      Value<String?>? email,
      Value<String?>? langKey,
      Value<bool>? activated,
      Value<String?>? imageUrl,
      Value<List<String>>? authorities,
      Value<int?>? submissionCount,
      Value<int?>? assignmentCount,
      Value<int?>? orgUnitCount,
      Value<List<String>>? activityUIDs,
      Value<List<String>>? userTeamsUIDs,
      Value<List<String>>? managedTeamsUIDs,
      Value<List<String>>? userGroupsUIDs,
      Value<List<String>>? userFormsUIDs,
      Value<int>? rowid}) {
    return UsersCompanion(
      id: id ?? this.id,
      lastModifiedDate: lastModifiedDate ?? this.lastModifiedDate,
      createdDate: createdDate ?? this.createdDate,
      username: username ?? this.username,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      mobile: mobile ?? this.mobile,
      email: email ?? this.email,
      langKey: langKey ?? this.langKey,
      activated: activated ?? this.activated,
      imageUrl: imageUrl ?? this.imageUrl,
      authorities: authorities ?? this.authorities,
      submissionCount: submissionCount ?? this.submissionCount,
      assignmentCount: assignmentCount ?? this.assignmentCount,
      orgUnitCount: orgUnitCount ?? this.orgUnitCount,
      activityUIDs: activityUIDs ?? this.activityUIDs,
      userTeamsUIDs: userTeamsUIDs ?? this.userTeamsUIDs,
      managedTeamsUIDs: managedTeamsUIDs ?? this.managedTeamsUIDs,
      userGroupsUIDs: userGroupsUIDs ?? this.userGroupsUIDs,
      userFormsUIDs: userFormsUIDs ?? this.userFormsUIDs,
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
    if (firstName.present) {
      map['first_name'] = Variable<String>(firstName.value);
    }
    if (lastName.present) {
      map['last_name'] = Variable<String>(lastName.value);
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
    if (submissionCount.present) {
      map['submission_count'] = Variable<int>(submissionCount.value);
    }
    if (assignmentCount.present) {
      map['assignment_count'] = Variable<int>(assignmentCount.value);
    }
    if (orgUnitCount.present) {
      map['org_unit_count'] = Variable<int>(orgUnitCount.value);
    }
    if (activityUIDs.present) {
      map['activity_u_i_ds'] = Variable<String>(
          $UsersTable.$converteractivityUIDs.toSql(activityUIDs.value));
    }
    if (userTeamsUIDs.present) {
      map['user_teams_u_i_ds'] = Variable<String>(
          $UsersTable.$converteruserTeamsUIDs.toSql(userTeamsUIDs.value));
    }
    if (managedTeamsUIDs.present) {
      map['managed_teams_u_i_ds'] = Variable<String>(
          $UsersTable.$convertermanagedTeamsUIDs.toSql(managedTeamsUIDs.value));
    }
    if (userGroupsUIDs.present) {
      map['user_groups_u_i_ds'] = Variable<String>(
          $UsersTable.$converteruserGroupsUIDs.toSql(userGroupsUIDs.value));
    }
    if (userFormsUIDs.present) {
      map['user_forms_u_i_ds'] = Variable<String>(
          $UsersTable.$converteruserFormsUIDs.toSql(userFormsUIDs.value));
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
          ..write('firstName: $firstName, ')
          ..write('lastName: $lastName, ')
          ..write('mobile: $mobile, ')
          ..write('email: $email, ')
          ..write('langKey: $langKey, ')
          ..write('activated: $activated, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('authorities: $authorities, ')
          ..write('submissionCount: $submissionCount, ')
          ..write('assignmentCount: $assignmentCount, ')
          ..write('orgUnitCount: $orgUnitCount, ')
          ..write('activityUIDs: $activityUIDs, ')
          ..write('userTeamsUIDs: $userTeamsUIDs, ')
          ..write('managedTeamsUIDs: $managedTeamsUIDs, ')
          ..write('userGroupsUIDs: $userGroupsUIDs, ')
          ..write('userFormsUIDs: $userFormsUIDs, ')
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
      GeneratedColumn<DateTime>('last_modified_date', aliasedName, true,
          type: DriftSqlType.dateTime,
          requiredDuringInsert: false,
          defaultValue: Constant(DateTime.now().toUtc()));
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, true,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: Constant(DateTime.now().toUtc()));
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
  @override
  late final GeneratedColumnWithTypeConverter<Map<String, dynamic>?, String>
      label = GeneratedColumn<String>('label', aliasedName, true,
              type: DriftSqlType.string,
              requiredDuringInsert: false,
              clientDefault: () => '{}')
          .withConverter<Map<String, dynamic>?>($OrgUnitsTable.$converterlabel);
  @override
  late final GeneratedColumnWithTypeConverter<List<Translation>, String>
      translations = GeneratedColumn<String>('translations', aliasedName, false,
              type: DriftSqlType.string,
              requiredDuringInsert: false,
              defaultValue: Constant('[]'))
          .withConverter<List<Translation>>(
              $OrgUnitsTable.$convertertranslations);
  static const VerificationMeta _pathMeta = const VerificationMeta('path');
  @override
  late final GeneratedColumn<String> path = GeneratedColumn<String>(
      'path', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _levelMeta = const VerificationMeta('level');
  @override
  late final GeneratedColumn<int> level = GeneratedColumn<int>(
      'level', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _parentMeta = const VerificationMeta('parent');
  @override
  late final GeneratedColumn<String> parent = GeneratedColumn<String>(
      'parent', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES org_units (id)'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        lastModifiedDate,
        createdDate,
        name,
        displayName,
        code,
        label,
        translations,
        path,
        level,
        parent
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
    if (data.containsKey('path')) {
      context.handle(
          _pathMeta, path.isAcceptableOrUnknown(data['path']!, _pathMeta));
    } else if (isInserting) {
      context.missing(_pathMeta);
    }
    if (data.containsKey('level')) {
      context.handle(
          _levelMeta, level.isAcceptableOrUnknown(data['level']!, _levelMeta));
    } else if (isInserting) {
      context.missing(_levelMeta);
    }
    if (data.containsKey('parent')) {
      context.handle(_parentMeta,
          parent.isAcceptableOrUnknown(data['parent']!, _parentMeta));
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
          DriftSqlType.dateTime, data['${effectivePrefix}last_modified_date']),
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date']),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      displayName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}display_name']),
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code']),
      label: $OrgUnitsTable.$converterlabel.fromSql(attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}label'])),
      translations: $OrgUnitsTable.$convertertranslations.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}translations'])!),
      path: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}path'])!,
      level: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}level'])!,
      parent: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}parent']),
    );
  }

  @override
  $OrgUnitsTable createAlias(String alias) {
    return $OrgUnitsTable(attachedDatabase, alias);
  }

  static TypeConverter<Map<String, dynamic>?, String?> $converterlabel =
      const NullAwareMapConverter();
  static TypeConverter<List<Translation>, String> $convertertranslations =
      const TranslationConverter();
}

class OrgUnit extends DataClass implements Insertable<OrgUnit> {
  final String id;
  final DateTime? lastModifiedDate;
  final DateTime? createdDate;
  final String? name;
  final String? displayName;
  final String? code;
  final Map<String, dynamic>? label;

  /// List of Translations
  final List<Translation> translations;
  final String path;
  final int level;
  final String? parent;
  const OrgUnit(
      {required this.id,
      this.lastModifiedDate,
      this.createdDate,
      this.name,
      this.displayName,
      this.code,
      this.label,
      required this.translations,
      required this.path,
      required this.level,
      this.parent});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    if (!nullToAbsent || lastModifiedDate != null) {
      map['last_modified_date'] = Variable<DateTime>(lastModifiedDate);
    }
    if (!nullToAbsent || createdDate != null) {
      map['created_date'] = Variable<DateTime>(createdDate);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || displayName != null) {
      map['display_name'] = Variable<String>(displayName);
    }
    if (!nullToAbsent || code != null) {
      map['code'] = Variable<String>(code);
    }
    if (!nullToAbsent || label != null) {
      map['label'] =
          Variable<String>($OrgUnitsTable.$converterlabel.toSql(label));
    }
    {
      map['translations'] = Variable<String>(
          $OrgUnitsTable.$convertertranslations.toSql(translations));
    }
    map['path'] = Variable<String>(path);
    map['level'] = Variable<int>(level);
    if (!nullToAbsent || parent != null) {
      map['parent'] = Variable<String>(parent);
    }
    return map;
  }

  OrgUnitsCompanion toCompanion(bool nullToAbsent) {
    return OrgUnitsCompanion(
      id: Value(id),
      lastModifiedDate: lastModifiedDate == null && nullToAbsent
          ? const Value.absent()
          : Value(lastModifiedDate),
      createdDate: createdDate == null && nullToAbsent
          ? const Value.absent()
          : Value(createdDate),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      displayName: displayName == null && nullToAbsent
          ? const Value.absent()
          : Value(displayName),
      code: code == null && nullToAbsent ? const Value.absent() : Value(code),
      label:
          label == null && nullToAbsent ? const Value.absent() : Value(label),
      translations: Value(translations),
      path: Value(path),
      level: Value(level),
      parent:
          parent == null && nullToAbsent ? const Value.absent() : Value(parent),
    );
  }

  factory OrgUnit.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OrgUnit(
      id: serializer.fromJson<String>(json['id']),
      lastModifiedDate:
          serializer.fromJson<DateTime?>(json['lastModifiedDate']),
      createdDate: serializer.fromJson<DateTime?>(json['createdDate']),
      name: serializer.fromJson<String?>(json['name']),
      displayName: serializer.fromJson<String?>(json['displayName']),
      code: serializer.fromJson<String?>(json['code']),
      label: serializer.fromJson<Map<String, dynamic>?>(json['label']),
      translations:
          serializer.fromJson<List<Translation>>(json['translations']),
      path: serializer.fromJson<String>(json['path']),
      level: serializer.fromJson<int>(json['level']),
      parent: serializer.fromJson<String?>(json['parent']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'lastModifiedDate': serializer.toJson<DateTime?>(lastModifiedDate),
      'createdDate': serializer.toJson<DateTime?>(createdDate),
      'name': serializer.toJson<String?>(name),
      'displayName': serializer.toJson<String?>(displayName),
      'code': serializer.toJson<String?>(code),
      'label': serializer.toJson<Map<String, dynamic>?>(label),
      'translations': serializer.toJson<List<Translation>>(translations),
      'path': serializer.toJson<String>(path),
      'level': serializer.toJson<int>(level),
      'parent': serializer.toJson<String?>(parent),
    };
  }

  OrgUnit copyWith(
          {String? id,
          Value<DateTime?> lastModifiedDate = const Value.absent(),
          Value<DateTime?> createdDate = const Value.absent(),
          Value<String?> name = const Value.absent(),
          Value<String?> displayName = const Value.absent(),
          Value<String?> code = const Value.absent(),
          Value<Map<String, dynamic>?> label = const Value.absent(),
          List<Translation>? translations,
          String? path,
          int? level,
          Value<String?> parent = const Value.absent()}) =>
      OrgUnit(
        id: id ?? this.id,
        lastModifiedDate: lastModifiedDate.present
            ? lastModifiedDate.value
            : this.lastModifiedDate,
        createdDate: createdDate.present ? createdDate.value : this.createdDate,
        name: name.present ? name.value : this.name,
        displayName: displayName.present ? displayName.value : this.displayName,
        code: code.present ? code.value : this.code,
        label: label.present ? label.value : this.label,
        translations: translations ?? this.translations,
        path: path ?? this.path,
        level: level ?? this.level,
        parent: parent.present ? parent.value : this.parent,
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
      label: data.label.present ? data.label.value : this.label,
      translations: data.translations.present
          ? data.translations.value
          : this.translations,
      path: data.path.present ? data.path.value : this.path,
      level: data.level.present ? data.level.value : this.level,
      parent: data.parent.present ? data.parent.value : this.parent,
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
          ..write('label: $label, ')
          ..write('translations: $translations, ')
          ..write('path: $path, ')
          ..write('level: $level, ')
          ..write('parent: $parent')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, lastModifiedDate, createdDate, name,
      displayName, code, label, translations, path, level, parent);
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
          other.label == this.label &&
          other.translations == this.translations &&
          other.path == this.path &&
          other.level == this.level &&
          other.parent == this.parent);
}

class OrgUnitsCompanion extends UpdateCompanion<OrgUnit> {
  final Value<String> id;
  final Value<DateTime?> lastModifiedDate;
  final Value<DateTime?> createdDate;
  final Value<String?> name;
  final Value<String?> displayName;
  final Value<String?> code;
  final Value<Map<String, dynamic>?> label;
  final Value<List<Translation>> translations;
  final Value<String> path;
  final Value<int> level;
  final Value<String?> parent;
  final Value<int> rowid;
  const OrgUnitsCompanion({
    this.id = const Value.absent(),
    this.lastModifiedDate = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.name = const Value.absent(),
    this.displayName = const Value.absent(),
    this.code = const Value.absent(),
    this.label = const Value.absent(),
    this.translations = const Value.absent(),
    this.path = const Value.absent(),
    this.level = const Value.absent(),
    this.parent = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  OrgUnitsCompanion.insert({
    required String id,
    this.lastModifiedDate = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.name = const Value.absent(),
    this.displayName = const Value.absent(),
    this.code = const Value.absent(),
    this.label = const Value.absent(),
    this.translations = const Value.absent(),
    required String path,
    required int level,
    this.parent = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        path = Value(path),
        level = Value(level);
  static Insertable<OrgUnit> custom({
    Expression<String>? id,
    Expression<DateTime>? lastModifiedDate,
    Expression<DateTime>? createdDate,
    Expression<String>? name,
    Expression<String>? displayName,
    Expression<String>? code,
    Expression<String>? label,
    Expression<String>? translations,
    Expression<String>? path,
    Expression<int>? level,
    Expression<String>? parent,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (lastModifiedDate != null) 'last_modified_date': lastModifiedDate,
      if (createdDate != null) 'created_date': createdDate,
      if (name != null) 'name': name,
      if (displayName != null) 'display_name': displayName,
      if (code != null) 'code': code,
      if (label != null) 'label': label,
      if (translations != null) 'translations': translations,
      if (path != null) 'path': path,
      if (level != null) 'level': level,
      if (parent != null) 'parent': parent,
      if (rowid != null) 'rowid': rowid,
    });
  }

  OrgUnitsCompanion copyWith(
      {Value<String>? id,
      Value<DateTime?>? lastModifiedDate,
      Value<DateTime?>? createdDate,
      Value<String?>? name,
      Value<String?>? displayName,
      Value<String?>? code,
      Value<Map<String, dynamic>?>? label,
      Value<List<Translation>>? translations,
      Value<String>? path,
      Value<int>? level,
      Value<String?>? parent,
      Value<int>? rowid}) {
    return OrgUnitsCompanion(
      id: id ?? this.id,
      lastModifiedDate: lastModifiedDate ?? this.lastModifiedDate,
      createdDate: createdDate ?? this.createdDate,
      name: name ?? this.name,
      displayName: displayName ?? this.displayName,
      code: code ?? this.code,
      label: label ?? this.label,
      translations: translations ?? this.translations,
      path: path ?? this.path,
      level: level ?? this.level,
      parent: parent ?? this.parent,
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
    if (label.present) {
      map['label'] =
          Variable<String>($OrgUnitsTable.$converterlabel.toSql(label.value));
    }
    if (translations.present) {
      map['translations'] = Variable<String>(
          $OrgUnitsTable.$convertertranslations.toSql(translations.value));
    }
    if (path.present) {
      map['path'] = Variable<String>(path.value);
    }
    if (level.present) {
      map['level'] = Variable<int>(level.value);
    }
    if (parent.present) {
      map['parent'] = Variable<String>(parent.value);
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
          ..write('label: $label, ')
          ..write('translations: $translations, ')
          ..write('path: $path, ')
          ..write('level: $level, ')
          ..write('parent: $parent, ')
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
      GeneratedColumn<DateTime>('last_modified_date', aliasedName, true,
          type: DriftSqlType.dateTime,
          requiredDuringInsert: false,
          defaultValue: Constant(DateTime.now().toUtc()));
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, true,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: Constant(DateTime.now().toUtc()));
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
  @override
  late final GeneratedColumnWithTypeConverter<Map<String, dynamic>?, String>
      label = GeneratedColumn<String>('label', aliasedName, true,
              type: DriftSqlType.string,
              requiredDuringInsert: false,
              clientDefault: () => '{}')
          .withConverter<Map<String, dynamic>?>($OuLevelsTable.$converterlabel);
  @override
  late final GeneratedColumnWithTypeConverter<List<Translation>, String>
      translations = GeneratedColumn<String>('translations', aliasedName, false,
              type: DriftSqlType.string,
              requiredDuringInsert: false,
              defaultValue: Constant('[]'))
          .withConverter<List<Translation>>(
              $OuLevelsTable.$convertertranslations);
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
        label,
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
          DriftSqlType.dateTime, data['${effectivePrefix}last_modified_date']),
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date']),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      displayName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}display_name']),
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code']),
      label: $OuLevelsTable.$converterlabel.fromSql(attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}label'])),
      translations: $OuLevelsTable.$convertertranslations.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}translations'])!),
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

  static TypeConverter<Map<String, dynamic>?, String?> $converterlabel =
      const NullAwareMapConverter();
  static TypeConverter<List<Translation>, String> $convertertranslations =
      const TranslationConverter();
}

class OuLevel extends DataClass implements Insertable<OuLevel> {
  final String id;
  final DateTime? lastModifiedDate;
  final DateTime? createdDate;
  final String? name;
  final String? displayName;
  final String? code;
  final Map<String, dynamic>? label;

  /// List of Translations
  final List<Translation> translations;
  final int level;
  final int? offlineLevels;
  const OuLevel(
      {required this.id,
      this.lastModifiedDate,
      this.createdDate,
      this.name,
      this.displayName,
      this.code,
      this.label,
      required this.translations,
      required this.level,
      this.offlineLevels});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    if (!nullToAbsent || lastModifiedDate != null) {
      map['last_modified_date'] = Variable<DateTime>(lastModifiedDate);
    }
    if (!nullToAbsent || createdDate != null) {
      map['created_date'] = Variable<DateTime>(createdDate);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || displayName != null) {
      map['display_name'] = Variable<String>(displayName);
    }
    if (!nullToAbsent || code != null) {
      map['code'] = Variable<String>(code);
    }
    if (!nullToAbsent || label != null) {
      map['label'] =
          Variable<String>($OuLevelsTable.$converterlabel.toSql(label));
    }
    {
      map['translations'] = Variable<String>(
          $OuLevelsTable.$convertertranslations.toSql(translations));
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
      lastModifiedDate: lastModifiedDate == null && nullToAbsent
          ? const Value.absent()
          : Value(lastModifiedDate),
      createdDate: createdDate == null && nullToAbsent
          ? const Value.absent()
          : Value(createdDate),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      displayName: displayName == null && nullToAbsent
          ? const Value.absent()
          : Value(displayName),
      code: code == null && nullToAbsent ? const Value.absent() : Value(code),
      label:
          label == null && nullToAbsent ? const Value.absent() : Value(label),
      translations: Value(translations),
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
      lastModifiedDate:
          serializer.fromJson<DateTime?>(json['lastModifiedDate']),
      createdDate: serializer.fromJson<DateTime?>(json['createdDate']),
      name: serializer.fromJson<String?>(json['name']),
      displayName: serializer.fromJson<String?>(json['displayName']),
      code: serializer.fromJson<String?>(json['code']),
      label: serializer.fromJson<Map<String, dynamic>?>(json['label']),
      translations:
          serializer.fromJson<List<Translation>>(json['translations']),
      level: serializer.fromJson<int>(json['level']),
      offlineLevels: serializer.fromJson<int?>(json['offlineLevels']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'lastModifiedDate': serializer.toJson<DateTime?>(lastModifiedDate),
      'createdDate': serializer.toJson<DateTime?>(createdDate),
      'name': serializer.toJson<String?>(name),
      'displayName': serializer.toJson<String?>(displayName),
      'code': serializer.toJson<String?>(code),
      'label': serializer.toJson<Map<String, dynamic>?>(label),
      'translations': serializer.toJson<List<Translation>>(translations),
      'level': serializer.toJson<int>(level),
      'offlineLevels': serializer.toJson<int?>(offlineLevels),
    };
  }

  OuLevel copyWith(
          {String? id,
          Value<DateTime?> lastModifiedDate = const Value.absent(),
          Value<DateTime?> createdDate = const Value.absent(),
          Value<String?> name = const Value.absent(),
          Value<String?> displayName = const Value.absent(),
          Value<String?> code = const Value.absent(),
          Value<Map<String, dynamic>?> label = const Value.absent(),
          List<Translation>? translations,
          int? level,
          Value<int?> offlineLevels = const Value.absent()}) =>
      OuLevel(
        id: id ?? this.id,
        lastModifiedDate: lastModifiedDate.present
            ? lastModifiedDate.value
            : this.lastModifiedDate,
        createdDate: createdDate.present ? createdDate.value : this.createdDate,
        name: name.present ? name.value : this.name,
        displayName: displayName.present ? displayName.value : this.displayName,
        code: code.present ? code.value : this.code,
        label: label.present ? label.value : this.label,
        translations: translations ?? this.translations,
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
      label: data.label.present ? data.label.value : this.label,
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
          ..write('label: $label, ')
          ..write('translations: $translations, ')
          ..write('level: $level, ')
          ..write('offlineLevels: $offlineLevels')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, lastModifiedDate, createdDate, name,
      displayName, code, label, translations, level, offlineLevels);
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
          other.label == this.label &&
          other.translations == this.translations &&
          other.level == this.level &&
          other.offlineLevels == this.offlineLevels);
}

class OuLevelsCompanion extends UpdateCompanion<OuLevel> {
  final Value<String> id;
  final Value<DateTime?> lastModifiedDate;
  final Value<DateTime?> createdDate;
  final Value<String?> name;
  final Value<String?> displayName;
  final Value<String?> code;
  final Value<Map<String, dynamic>?> label;
  final Value<List<Translation>> translations;
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
    this.label = const Value.absent(),
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
    this.label = const Value.absent(),
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
    Expression<String>? label,
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
      if (label != null) 'label': label,
      if (translations != null) 'translations': translations,
      if (level != null) 'level': level,
      if (offlineLevels != null) 'offline_levels': offlineLevels,
      if (rowid != null) 'rowid': rowid,
    });
  }

  OuLevelsCompanion copyWith(
      {Value<String>? id,
      Value<DateTime?>? lastModifiedDate,
      Value<DateTime?>? createdDate,
      Value<String?>? name,
      Value<String?>? displayName,
      Value<String?>? code,
      Value<Map<String, dynamic>?>? label,
      Value<List<Translation>>? translations,
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
      label: label ?? this.label,
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
    if (label.present) {
      map['label'] =
          Variable<String>($OuLevelsTable.$converterlabel.toSql(label.value));
    }
    if (translations.present) {
      map['translations'] = Variable<String>(
          $OuLevelsTable.$convertertranslations.toSql(translations.value));
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
          ..write('label: $label, ')
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
      GeneratedColumn<DateTime>('last_modified_date', aliasedName, true,
          type: DriftSqlType.dateTime,
          requiredDuringInsert: false,
          defaultValue: Constant(DateTime.now().toUtc()));
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, true,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: Constant(DateTime.now().toUtc()));
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
  @override
  late final GeneratedColumnWithTypeConverter<Map<String, dynamic>?, String>
      label = GeneratedColumn<String>('label', aliasedName, true,
              type: DriftSqlType.string,
              requiredDuringInsert: false,
              clientDefault: () => '{}')
          .withConverter<Map<String, dynamic>?>($ProjectsTable.$converterlabel);
  @override
  late final GeneratedColumnWithTypeConverter<List<Translation>, String>
      translations = GeneratedColumn<String>('translations', aliasedName, false,
              type: DriftSqlType.string,
              requiredDuringInsert: false,
              defaultValue: Constant('[]'))
          .withConverter<List<Translation>>(
              $ProjectsTable.$convertertranslations);
  static const VerificationMeta _disabledMeta =
      const VerificationMeta('disabled');
  @override
  late final GeneratedColumn<bool> disabled = GeneratedColumn<bool>(
      'disabled', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("disabled" IN (0, 1))'),
      clientDefault: () => false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        lastModifiedDate,
        createdDate,
        name,
        displayName,
        code,
        label,
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
    if (data.containsKey('disabled')) {
      context.handle(_disabledMeta,
          disabled.isAcceptableOrUnknown(data['disabled']!, _disabledMeta));
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
          DriftSqlType.dateTime, data['${effectivePrefix}last_modified_date']),
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date']),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      displayName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}display_name']),
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code']),
      label: $ProjectsTable.$converterlabel.fromSql(attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}label'])),
      translations: $ProjectsTable.$convertertranslations.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}translations'])!),
      disabled: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}disabled'])!,
    );
  }

  @override
  $ProjectsTable createAlias(String alias) {
    return $ProjectsTable(attachedDatabase, alias);
  }

  static TypeConverter<Map<String, dynamic>?, String?> $converterlabel =
      const NullAwareMapConverter();
  static TypeConverter<List<Translation>, String> $convertertranslations =
      const TranslationConverter();
}

class Project extends DataClass implements Insertable<Project> {
  final String id;
  final DateTime? lastModifiedDate;
  final DateTime? createdDate;
  final String? name;
  final String? displayName;
  final String? code;
  final Map<String, dynamic>? label;

  /// List of Translations
  final List<Translation> translations;
  final bool disabled;
  const Project(
      {required this.id,
      this.lastModifiedDate,
      this.createdDate,
      this.name,
      this.displayName,
      this.code,
      this.label,
      required this.translations,
      required this.disabled});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    if (!nullToAbsent || lastModifiedDate != null) {
      map['last_modified_date'] = Variable<DateTime>(lastModifiedDate);
    }
    if (!nullToAbsent || createdDate != null) {
      map['created_date'] = Variable<DateTime>(createdDate);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || displayName != null) {
      map['display_name'] = Variable<String>(displayName);
    }
    if (!nullToAbsent || code != null) {
      map['code'] = Variable<String>(code);
    }
    if (!nullToAbsent || label != null) {
      map['label'] =
          Variable<String>($ProjectsTable.$converterlabel.toSql(label));
    }
    {
      map['translations'] = Variable<String>(
          $ProjectsTable.$convertertranslations.toSql(translations));
    }
    map['disabled'] = Variable<bool>(disabled);
    return map;
  }

  ProjectsCompanion toCompanion(bool nullToAbsent) {
    return ProjectsCompanion(
      id: Value(id),
      lastModifiedDate: lastModifiedDate == null && nullToAbsent
          ? const Value.absent()
          : Value(lastModifiedDate),
      createdDate: createdDate == null && nullToAbsent
          ? const Value.absent()
          : Value(createdDate),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      displayName: displayName == null && nullToAbsent
          ? const Value.absent()
          : Value(displayName),
      code: code == null && nullToAbsent ? const Value.absent() : Value(code),
      label:
          label == null && nullToAbsent ? const Value.absent() : Value(label),
      translations: Value(translations),
      disabled: Value(disabled),
    );
  }

  factory Project.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Project(
      id: serializer.fromJson<String>(json['id']),
      lastModifiedDate:
          serializer.fromJson<DateTime?>(json['lastModifiedDate']),
      createdDate: serializer.fromJson<DateTime?>(json['createdDate']),
      name: serializer.fromJson<String?>(json['name']),
      displayName: serializer.fromJson<String?>(json['displayName']),
      code: serializer.fromJson<String?>(json['code']),
      label: serializer.fromJson<Map<String, dynamic>?>(json['label']),
      translations:
          serializer.fromJson<List<Translation>>(json['translations']),
      disabled: serializer.fromJson<bool>(json['disabled']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'lastModifiedDate': serializer.toJson<DateTime?>(lastModifiedDate),
      'createdDate': serializer.toJson<DateTime?>(createdDate),
      'name': serializer.toJson<String?>(name),
      'displayName': serializer.toJson<String?>(displayName),
      'code': serializer.toJson<String?>(code),
      'label': serializer.toJson<Map<String, dynamic>?>(label),
      'translations': serializer.toJson<List<Translation>>(translations),
      'disabled': serializer.toJson<bool>(disabled),
    };
  }

  Project copyWith(
          {String? id,
          Value<DateTime?> lastModifiedDate = const Value.absent(),
          Value<DateTime?> createdDate = const Value.absent(),
          Value<String?> name = const Value.absent(),
          Value<String?> displayName = const Value.absent(),
          Value<String?> code = const Value.absent(),
          Value<Map<String, dynamic>?> label = const Value.absent(),
          List<Translation>? translations,
          bool? disabled}) =>
      Project(
        id: id ?? this.id,
        lastModifiedDate: lastModifiedDate.present
            ? lastModifiedDate.value
            : this.lastModifiedDate,
        createdDate: createdDate.present ? createdDate.value : this.createdDate,
        name: name.present ? name.value : this.name,
        displayName: displayName.present ? displayName.value : this.displayName,
        code: code.present ? code.value : this.code,
        label: label.present ? label.value : this.label,
        translations: translations ?? this.translations,
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
      label: data.label.present ? data.label.value : this.label,
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
          ..write('label: $label, ')
          ..write('translations: $translations, ')
          ..write('disabled: $disabled')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, lastModifiedDate, createdDate, name,
      displayName, code, label, translations, disabled);
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
          other.label == this.label &&
          other.translations == this.translations &&
          other.disabled == this.disabled);
}

class ProjectsCompanion extends UpdateCompanion<Project> {
  final Value<String> id;
  final Value<DateTime?> lastModifiedDate;
  final Value<DateTime?> createdDate;
  final Value<String?> name;
  final Value<String?> displayName;
  final Value<String?> code;
  final Value<Map<String, dynamic>?> label;
  final Value<List<Translation>> translations;
  final Value<bool> disabled;
  final Value<int> rowid;
  const ProjectsCompanion({
    this.id = const Value.absent(),
    this.lastModifiedDate = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.name = const Value.absent(),
    this.displayName = const Value.absent(),
    this.code = const Value.absent(),
    this.label = const Value.absent(),
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
    this.label = const Value.absent(),
    this.translations = const Value.absent(),
    this.disabled = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id);
  static Insertable<Project> custom({
    Expression<String>? id,
    Expression<DateTime>? lastModifiedDate,
    Expression<DateTime>? createdDate,
    Expression<String>? name,
    Expression<String>? displayName,
    Expression<String>? code,
    Expression<String>? label,
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
      if (label != null) 'label': label,
      if (translations != null) 'translations': translations,
      if (disabled != null) 'disabled': disabled,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ProjectsCompanion copyWith(
      {Value<String>? id,
      Value<DateTime?>? lastModifiedDate,
      Value<DateTime?>? createdDate,
      Value<String?>? name,
      Value<String?>? displayName,
      Value<String?>? code,
      Value<Map<String, dynamic>?>? label,
      Value<List<Translation>>? translations,
      Value<bool>? disabled,
      Value<int>? rowid}) {
    return ProjectsCompanion(
      id: id ?? this.id,
      lastModifiedDate: lastModifiedDate ?? this.lastModifiedDate,
      createdDate: createdDate ?? this.createdDate,
      name: name ?? this.name,
      displayName: displayName ?? this.displayName,
      code: code ?? this.code,
      label: label ?? this.label,
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
    if (label.present) {
      map['label'] =
          Variable<String>($ProjectsTable.$converterlabel.toSql(label.value));
    }
    if (translations.present) {
      map['translations'] = Variable<String>(
          $ProjectsTable.$convertertranslations.toSql(translations.value));
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
          ..write('label: $label, ')
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
      GeneratedColumn<DateTime>('last_modified_date', aliasedName, true,
          type: DriftSqlType.dateTime,
          requiredDuringInsert: false,
          defaultValue: Constant(DateTime.now().toUtc()));
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, true,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: Constant(DateTime.now().toUtc()));
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
  @override
  late final GeneratedColumnWithTypeConverter<Map<String, dynamic>?, String>
      label = GeneratedColumn<String>('label', aliasedName, true,
              type: DriftSqlType.string,
              requiredDuringInsert: false,
              clientDefault: () => '{}')
          .withConverter<Map<String, dynamic>?>(
              $ActivitiesTable.$converterlabel);
  @override
  late final GeneratedColumnWithTypeConverter<List<Translation>, String>
      translations = GeneratedColumn<String>('translations', aliasedName, false,
              type: DriftSqlType.string,
              requiredDuringInsert: false,
              defaultValue: Constant('[]'))
          .withConverter<List<Translation>>(
              $ActivitiesTable.$convertertranslations);
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
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("disabled" IN (0, 1))'),
      clientDefault: () => false);
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
        label,
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
    if (data.containsKey('project')) {
      context.handle(_projectMeta,
          project.isAcceptableOrUnknown(data['project']!, _projectMeta));
    } else if (isInserting) {
      context.missing(_projectMeta);
    }
    if (data.containsKey('disabled')) {
      context.handle(_disabledMeta,
          disabled.isAcceptableOrUnknown(data['disabled']!, _disabledMeta));
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
          DriftSqlType.dateTime, data['${effectivePrefix}last_modified_date']),
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date']),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      displayName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}display_name']),
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code']),
      label: $ActivitiesTable.$converterlabel.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}label'])),
      translations: $ActivitiesTable.$convertertranslations.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}translations'])!),
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

  static TypeConverter<Map<String, dynamic>?, String?> $converterlabel =
      const NullAwareMapConverter();
  static TypeConverter<List<Translation>, String> $convertertranslations =
      const TranslationConverter();
}

class Activity extends DataClass implements Insertable<Activity> {
  final String id;
  final DateTime? lastModifiedDate;
  final DateTime? createdDate;
  final String? name;
  final String? displayName;
  final String? code;
  final Map<String, dynamic>? label;

  /// List of Translations
  final List<Translation> translations;
  final String project;
  final bool disabled;
  final DateTime? startDate;
  final DateTime? endDate;
  final String? description;
  const Activity(
      {required this.id,
      this.lastModifiedDate,
      this.createdDate,
      this.name,
      this.displayName,
      this.code,
      this.label,
      required this.translations,
      required this.project,
      required this.disabled,
      this.startDate,
      this.endDate,
      this.description});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    if (!nullToAbsent || lastModifiedDate != null) {
      map['last_modified_date'] = Variable<DateTime>(lastModifiedDate);
    }
    if (!nullToAbsent || createdDate != null) {
      map['created_date'] = Variable<DateTime>(createdDate);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || displayName != null) {
      map['display_name'] = Variable<String>(displayName);
    }
    if (!nullToAbsent || code != null) {
      map['code'] = Variable<String>(code);
    }
    if (!nullToAbsent || label != null) {
      map['label'] =
          Variable<String>($ActivitiesTable.$converterlabel.toSql(label));
    }
    {
      map['translations'] = Variable<String>(
          $ActivitiesTable.$convertertranslations.toSql(translations));
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
      lastModifiedDate: lastModifiedDate == null && nullToAbsent
          ? const Value.absent()
          : Value(lastModifiedDate),
      createdDate: createdDate == null && nullToAbsent
          ? const Value.absent()
          : Value(createdDate),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      displayName: displayName == null && nullToAbsent
          ? const Value.absent()
          : Value(displayName),
      code: code == null && nullToAbsent ? const Value.absent() : Value(code),
      label:
          label == null && nullToAbsent ? const Value.absent() : Value(label),
      translations: Value(translations),
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
      lastModifiedDate:
          serializer.fromJson<DateTime?>(json['lastModifiedDate']),
      createdDate: serializer.fromJson<DateTime?>(json['createdDate']),
      name: serializer.fromJson<String?>(json['name']),
      displayName: serializer.fromJson<String?>(json['displayName']),
      code: serializer.fromJson<String?>(json['code']),
      label: serializer.fromJson<Map<String, dynamic>?>(json['label']),
      translations:
          serializer.fromJson<List<Translation>>(json['translations']),
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
      'lastModifiedDate': serializer.toJson<DateTime?>(lastModifiedDate),
      'createdDate': serializer.toJson<DateTime?>(createdDate),
      'name': serializer.toJson<String?>(name),
      'displayName': serializer.toJson<String?>(displayName),
      'code': serializer.toJson<String?>(code),
      'label': serializer.toJson<Map<String, dynamic>?>(label),
      'translations': serializer.toJson<List<Translation>>(translations),
      'project': serializer.toJson<String>(project),
      'disabled': serializer.toJson<bool>(disabled),
      'startDate': serializer.toJson<DateTime?>(startDate),
      'endDate': serializer.toJson<DateTime?>(endDate),
      'description': serializer.toJson<String?>(description),
    };
  }

  Activity copyWith(
          {String? id,
          Value<DateTime?> lastModifiedDate = const Value.absent(),
          Value<DateTime?> createdDate = const Value.absent(),
          Value<String?> name = const Value.absent(),
          Value<String?> displayName = const Value.absent(),
          Value<String?> code = const Value.absent(),
          Value<Map<String, dynamic>?> label = const Value.absent(),
          List<Translation>? translations,
          String? project,
          bool? disabled,
          Value<DateTime?> startDate = const Value.absent(),
          Value<DateTime?> endDate = const Value.absent(),
          Value<String?> description = const Value.absent()}) =>
      Activity(
        id: id ?? this.id,
        lastModifiedDate: lastModifiedDate.present
            ? lastModifiedDate.value
            : this.lastModifiedDate,
        createdDate: createdDate.present ? createdDate.value : this.createdDate,
        name: name.present ? name.value : this.name,
        displayName: displayName.present ? displayName.value : this.displayName,
        code: code.present ? code.value : this.code,
        label: label.present ? label.value : this.label,
        translations: translations ?? this.translations,
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
      label: data.label.present ? data.label.value : this.label,
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
          ..write('label: $label, ')
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
      label,
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
          other.label == this.label &&
          other.translations == this.translations &&
          other.project == this.project &&
          other.disabled == this.disabled &&
          other.startDate == this.startDate &&
          other.endDate == this.endDate &&
          other.description == this.description);
}

class ActivitiesCompanion extends UpdateCompanion<Activity> {
  final Value<String> id;
  final Value<DateTime?> lastModifiedDate;
  final Value<DateTime?> createdDate;
  final Value<String?> name;
  final Value<String?> displayName;
  final Value<String?> code;
  final Value<Map<String, dynamic>?> label;
  final Value<List<Translation>> translations;
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
    this.label = const Value.absent(),
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
    this.label = const Value.absent(),
    this.translations = const Value.absent(),
    required String project,
    this.disabled = const Value.absent(),
    this.startDate = const Value.absent(),
    this.endDate = const Value.absent(),
    this.description = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        project = Value(project);
  static Insertable<Activity> custom({
    Expression<String>? id,
    Expression<DateTime>? lastModifiedDate,
    Expression<DateTime>? createdDate,
    Expression<String>? name,
    Expression<String>? displayName,
    Expression<String>? code,
    Expression<String>? label,
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
      if (label != null) 'label': label,
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
      Value<DateTime?>? lastModifiedDate,
      Value<DateTime?>? createdDate,
      Value<String?>? name,
      Value<String?>? displayName,
      Value<String?>? code,
      Value<Map<String, dynamic>?>? label,
      Value<List<Translation>>? translations,
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
      label: label ?? this.label,
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
    if (label.present) {
      map['label'] =
          Variable<String>($ActivitiesTable.$converterlabel.toSql(label.value));
    }
    if (translations.present) {
      map['translations'] = Variable<String>(
          $ActivitiesTable.$convertertranslations.toSql(translations.value));
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
          ..write('label: $label, ')
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
      GeneratedColumn<DateTime>('last_modified_date', aliasedName, true,
          type: DriftSqlType.dateTime,
          requiredDuringInsert: false,
          defaultValue: Constant(DateTime.now().toUtc()));
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, true,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: Constant(DateTime.now().toUtc()));
  static const VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String> code = GeneratedColumn<String>(
      'code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _disabledMeta =
      const VerificationMeta('disabled');
  @override
  late final GeneratedColumn<bool> disabled = GeneratedColumn<bool>(
      'disabled', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("disabled" IN (0, 1))'));
  static const VerificationMeta _activityMeta =
      const VerificationMeta('activity');
  @override
  late final GeneratedColumn<String> activity = GeneratedColumn<String>(
      'activity', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES activities (id)'));
  static const VerificationMeta _userMeta = const VerificationMeta('user');
  @override
  late final GeneratedColumn<String> user = GeneratedColumn<String>(
      'user', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES users (id)'));
  @override
  List<GeneratedColumn> get $columns =>
      [id, lastModifiedDate, createdDate, code, disabled, activity, user];
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
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    }
    if (data.containsKey('disabled')) {
      context.handle(_disabledMeta,
          disabled.isAcceptableOrUnknown(data['disabled']!, _disabledMeta));
    }
    if (data.containsKey('activity')) {
      context.handle(_activityMeta,
          activity.isAcceptableOrUnknown(data['activity']!, _activityMeta));
    } else if (isInserting) {
      context.missing(_activityMeta);
    }
    if (data.containsKey('user')) {
      context.handle(
          _userMeta, user.isAcceptableOrUnknown(data['user']!, _userMeta));
    } else if (isInserting) {
      context.missing(_userMeta);
    }
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
          DriftSqlType.dateTime, data['${effectivePrefix}last_modified_date']),
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date']),
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code']),
      disabled: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}disabled']),
      activity: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}activity'])!,
      user: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user'])!,
    );
  }

  @override
  $TeamsTable createAlias(String alias) {
    return $TeamsTable(attachedDatabase, alias);
  }
}

class Team extends DataClass implements Insertable<Team> {
  final String id;
  final DateTime? lastModifiedDate;
  final DateTime? createdDate;
  final String? code;

  /// Boolean columns with defaults.
  final bool? disabled;
  final String activity;
  final String user;
  const Team(
      {required this.id,
      this.lastModifiedDate,
      this.createdDate,
      this.code,
      this.disabled,
      required this.activity,
      required this.user});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    if (!nullToAbsent || lastModifiedDate != null) {
      map['last_modified_date'] = Variable<DateTime>(lastModifiedDate);
    }
    if (!nullToAbsent || createdDate != null) {
      map['created_date'] = Variable<DateTime>(createdDate);
    }
    if (!nullToAbsent || code != null) {
      map['code'] = Variable<String>(code);
    }
    if (!nullToAbsent || disabled != null) {
      map['disabled'] = Variable<bool>(disabled);
    }
    map['activity'] = Variable<String>(activity);
    map['user'] = Variable<String>(user);
    return map;
  }

  TeamsCompanion toCompanion(bool nullToAbsent) {
    return TeamsCompanion(
      id: Value(id),
      lastModifiedDate: lastModifiedDate == null && nullToAbsent
          ? const Value.absent()
          : Value(lastModifiedDate),
      createdDate: createdDate == null && nullToAbsent
          ? const Value.absent()
          : Value(createdDate),
      code: code == null && nullToAbsent ? const Value.absent() : Value(code),
      disabled: disabled == null && nullToAbsent
          ? const Value.absent()
          : Value(disabled),
      activity: Value(activity),
      user: Value(user),
    );
  }

  factory Team.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Team(
      id: serializer.fromJson<String>(json['id']),
      lastModifiedDate:
          serializer.fromJson<DateTime?>(json['lastModifiedDate']),
      createdDate: serializer.fromJson<DateTime?>(json['createdDate']),
      code: serializer.fromJson<String?>(json['code']),
      disabled: serializer.fromJson<bool?>(json['disabled']),
      activity: serializer.fromJson<String>(json['activity']),
      user: serializer.fromJson<String>(json['user']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'lastModifiedDate': serializer.toJson<DateTime?>(lastModifiedDate),
      'createdDate': serializer.toJson<DateTime?>(createdDate),
      'code': serializer.toJson<String?>(code),
      'disabled': serializer.toJson<bool?>(disabled),
      'activity': serializer.toJson<String>(activity),
      'user': serializer.toJson<String>(user),
    };
  }

  Team copyWith(
          {String? id,
          Value<DateTime?> lastModifiedDate = const Value.absent(),
          Value<DateTime?> createdDate = const Value.absent(),
          Value<String?> code = const Value.absent(),
          Value<bool?> disabled = const Value.absent(),
          String? activity,
          String? user}) =>
      Team(
        id: id ?? this.id,
        lastModifiedDate: lastModifiedDate.present
            ? lastModifiedDate.value
            : this.lastModifiedDate,
        createdDate: createdDate.present ? createdDate.value : this.createdDate,
        code: code.present ? code.value : this.code,
        disabled: disabled.present ? disabled.value : this.disabled,
        activity: activity ?? this.activity,
        user: user ?? this.user,
      );
  Team copyWithCompanion(TeamsCompanion data) {
    return Team(
      id: data.id.present ? data.id.value : this.id,
      lastModifiedDate: data.lastModifiedDate.present
          ? data.lastModifiedDate.value
          : this.lastModifiedDate,
      createdDate:
          data.createdDate.present ? data.createdDate.value : this.createdDate,
      code: data.code.present ? data.code.value : this.code,
      disabled: data.disabled.present ? data.disabled.value : this.disabled,
      activity: data.activity.present ? data.activity.value : this.activity,
      user: data.user.present ? data.user.value : this.user,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Team(')
          ..write('id: $id, ')
          ..write('lastModifiedDate: $lastModifiedDate, ')
          ..write('createdDate: $createdDate, ')
          ..write('code: $code, ')
          ..write('disabled: $disabled, ')
          ..write('activity: $activity, ')
          ..write('user: $user')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, lastModifiedDate, createdDate, code, disabled, activity, user);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Team &&
          other.id == this.id &&
          other.lastModifiedDate == this.lastModifiedDate &&
          other.createdDate == this.createdDate &&
          other.code == this.code &&
          other.disabled == this.disabled &&
          other.activity == this.activity &&
          other.user == this.user);
}

class TeamsCompanion extends UpdateCompanion<Team> {
  final Value<String> id;
  final Value<DateTime?> lastModifiedDate;
  final Value<DateTime?> createdDate;
  final Value<String?> code;
  final Value<bool?> disabled;
  final Value<String> activity;
  final Value<String> user;
  final Value<int> rowid;
  const TeamsCompanion({
    this.id = const Value.absent(),
    this.lastModifiedDate = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.code = const Value.absent(),
    this.disabled = const Value.absent(),
    this.activity = const Value.absent(),
    this.user = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  TeamsCompanion.insert({
    required String id,
    this.lastModifiedDate = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.code = const Value.absent(),
    this.disabled = const Value.absent(),
    required String activity,
    required String user,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        activity = Value(activity),
        user = Value(user);
  static Insertable<Team> custom({
    Expression<String>? id,
    Expression<DateTime>? lastModifiedDate,
    Expression<DateTime>? createdDate,
    Expression<String>? code,
    Expression<bool>? disabled,
    Expression<String>? activity,
    Expression<String>? user,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (lastModifiedDate != null) 'last_modified_date': lastModifiedDate,
      if (createdDate != null) 'created_date': createdDate,
      if (code != null) 'code': code,
      if (disabled != null) 'disabled': disabled,
      if (activity != null) 'activity': activity,
      if (user != null) 'user': user,
      if (rowid != null) 'rowid': rowid,
    });
  }

  TeamsCompanion copyWith(
      {Value<String>? id,
      Value<DateTime?>? lastModifiedDate,
      Value<DateTime?>? createdDate,
      Value<String?>? code,
      Value<bool?>? disabled,
      Value<String>? activity,
      Value<String>? user,
      Value<int>? rowid}) {
    return TeamsCompanion(
      id: id ?? this.id,
      lastModifiedDate: lastModifiedDate ?? this.lastModifiedDate,
      createdDate: createdDate ?? this.createdDate,
      code: code ?? this.code,
      disabled: disabled ?? this.disabled,
      activity: activity ?? this.activity,
      user: user ?? this.user,
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
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (disabled.present) {
      map['disabled'] = Variable<bool>(disabled.value);
    }
    if (activity.present) {
      map['activity'] = Variable<String>(activity.value);
    }
    if (user.present) {
      map['user'] = Variable<String>(user.value);
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
          ..write('code: $code, ')
          ..write('disabled: $disabled, ')
          ..write('activity: $activity, ')
          ..write('user: $user, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ManagedTeamsTable extends ManagedTeams
    with TableInfo<$ManagedTeamsTable, ManagedTeam> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ManagedTeamsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lastModifiedDateMeta =
      const VerificationMeta('lastModifiedDate');
  @override
  late final GeneratedColumn<DateTime> lastModifiedDate =
      GeneratedColumn<DateTime>('last_modified_date', aliasedName, true,
          type: DriftSqlType.dateTime,
          requiredDuringInsert: false,
          defaultValue: Constant(DateTime.now().toUtc()));
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, true,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: Constant(DateTime.now().toUtc()));
  static const VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String> code = GeneratedColumn<String>(
      'code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _disabledMeta =
      const VerificationMeta('disabled');
  @override
  late final GeneratedColumn<bool> disabled = GeneratedColumn<bool>(
      'disabled', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("disabled" IN (0, 1))'));
  static const VerificationMeta _activityMeta =
      const VerificationMeta('activity');
  @override
  late final GeneratedColumn<String> activity = GeneratedColumn<String>(
      'activity', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES activities (id)'));
  static const VerificationMeta _userMeta = const VerificationMeta('user');
  @override
  late final GeneratedColumn<String> user = GeneratedColumn<String>(
      'user', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES users (id)'));
  @override
  late final GeneratedColumnWithTypeConverter<List<dynamic>, String> teamUsers =
      GeneratedColumn<String>('team_users', aliasedName, false,
              type: DriftSqlType.string,
              requiredDuringInsert: false,
              clientDefault: () => '[]')
          .withConverter<List<dynamic>>($ManagedTeamsTable.$converterteamUsers);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        lastModifiedDate,
        createdDate,
        code,
        disabled,
        activity,
        user,
        teamUsers
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'managed_teams';
  @override
  VerificationContext validateIntegrity(Insertable<ManagedTeam> instance,
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
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    }
    if (data.containsKey('disabled')) {
      context.handle(_disabledMeta,
          disabled.isAcceptableOrUnknown(data['disabled']!, _disabledMeta));
    }
    if (data.containsKey('activity')) {
      context.handle(_activityMeta,
          activity.isAcceptableOrUnknown(data['activity']!, _activityMeta));
    } else if (isInserting) {
      context.missing(_activityMeta);
    }
    if (data.containsKey('user')) {
      context.handle(
          _userMeta, user.isAcceptableOrUnknown(data['user']!, _userMeta));
    } else if (isInserting) {
      context.missing(_userMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ManagedTeam map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ManagedTeam(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      lastModifiedDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}last_modified_date']),
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date']),
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code']),
      disabled: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}disabled']),
      activity: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}activity'])!,
      user: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user'])!,
      teamUsers: $ManagedTeamsTable.$converterteamUsers.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}team_users'])!),
    );
  }

  @override
  $ManagedTeamsTable createAlias(String alias) {
    return $ManagedTeamsTable(attachedDatabase, alias);
  }

  static TypeConverter<List<dynamic>, String> $converterteamUsers =
      const TeamUsersConverter();
}

class ManagedTeam extends DataClass implements Insertable<ManagedTeam> {
  final String id;
  final DateTime? lastModifiedDate;
  final DateTime? createdDate;
  final String? code;

  /// Boolean columns with defaults.
  final bool? disabled;
  final String activity;
  final String user;

  /// Form permissions stored as JSON representing a list of TeamFormPermission.
  final List<dynamic> teamUsers;
  const ManagedTeam(
      {required this.id,
      this.lastModifiedDate,
      this.createdDate,
      this.code,
      this.disabled,
      required this.activity,
      required this.user,
      required this.teamUsers});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    if (!nullToAbsent || lastModifiedDate != null) {
      map['last_modified_date'] = Variable<DateTime>(lastModifiedDate);
    }
    if (!nullToAbsent || createdDate != null) {
      map['created_date'] = Variable<DateTime>(createdDate);
    }
    if (!nullToAbsent || code != null) {
      map['code'] = Variable<String>(code);
    }
    if (!nullToAbsent || disabled != null) {
      map['disabled'] = Variable<bool>(disabled);
    }
    map['activity'] = Variable<String>(activity);
    map['user'] = Variable<String>(user);
    {
      map['team_users'] = Variable<String>(
          $ManagedTeamsTable.$converterteamUsers.toSql(teamUsers));
    }
    return map;
  }

  ManagedTeamsCompanion toCompanion(bool nullToAbsent) {
    return ManagedTeamsCompanion(
      id: Value(id),
      lastModifiedDate: lastModifiedDate == null && nullToAbsent
          ? const Value.absent()
          : Value(lastModifiedDate),
      createdDate: createdDate == null && nullToAbsent
          ? const Value.absent()
          : Value(createdDate),
      code: code == null && nullToAbsent ? const Value.absent() : Value(code),
      disabled: disabled == null && nullToAbsent
          ? const Value.absent()
          : Value(disabled),
      activity: Value(activity),
      user: Value(user),
      teamUsers: Value(teamUsers),
    );
  }

  factory ManagedTeam.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ManagedTeam(
      id: serializer.fromJson<String>(json['id']),
      lastModifiedDate:
          serializer.fromJson<DateTime?>(json['lastModifiedDate']),
      createdDate: serializer.fromJson<DateTime?>(json['createdDate']),
      code: serializer.fromJson<String?>(json['code']),
      disabled: serializer.fromJson<bool?>(json['disabled']),
      activity: serializer.fromJson<String>(json['activity']),
      user: serializer.fromJson<String>(json['user']),
      teamUsers: serializer.fromJson<List<dynamic>>(json['teamUsers']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'lastModifiedDate': serializer.toJson<DateTime?>(lastModifiedDate),
      'createdDate': serializer.toJson<DateTime?>(createdDate),
      'code': serializer.toJson<String?>(code),
      'disabled': serializer.toJson<bool?>(disabled),
      'activity': serializer.toJson<String>(activity),
      'user': serializer.toJson<String>(user),
      'teamUsers': serializer.toJson<List<dynamic>>(teamUsers),
    };
  }

  ManagedTeam copyWith(
          {String? id,
          Value<DateTime?> lastModifiedDate = const Value.absent(),
          Value<DateTime?> createdDate = const Value.absent(),
          Value<String?> code = const Value.absent(),
          Value<bool?> disabled = const Value.absent(),
          String? activity,
          String? user,
          List<dynamic>? teamUsers}) =>
      ManagedTeam(
        id: id ?? this.id,
        lastModifiedDate: lastModifiedDate.present
            ? lastModifiedDate.value
            : this.lastModifiedDate,
        createdDate: createdDate.present ? createdDate.value : this.createdDate,
        code: code.present ? code.value : this.code,
        disabled: disabled.present ? disabled.value : this.disabled,
        activity: activity ?? this.activity,
        user: user ?? this.user,
        teamUsers: teamUsers ?? this.teamUsers,
      );
  ManagedTeam copyWithCompanion(ManagedTeamsCompanion data) {
    return ManagedTeam(
      id: data.id.present ? data.id.value : this.id,
      lastModifiedDate: data.lastModifiedDate.present
          ? data.lastModifiedDate.value
          : this.lastModifiedDate,
      createdDate:
          data.createdDate.present ? data.createdDate.value : this.createdDate,
      code: data.code.present ? data.code.value : this.code,
      disabled: data.disabled.present ? data.disabled.value : this.disabled,
      activity: data.activity.present ? data.activity.value : this.activity,
      user: data.user.present ? data.user.value : this.user,
      teamUsers: data.teamUsers.present ? data.teamUsers.value : this.teamUsers,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ManagedTeam(')
          ..write('id: $id, ')
          ..write('lastModifiedDate: $lastModifiedDate, ')
          ..write('createdDate: $createdDate, ')
          ..write('code: $code, ')
          ..write('disabled: $disabled, ')
          ..write('activity: $activity, ')
          ..write('user: $user, ')
          ..write('teamUsers: $teamUsers')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, lastModifiedDate, createdDate, code,
      disabled, activity, user, teamUsers);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ManagedTeam &&
          other.id == this.id &&
          other.lastModifiedDate == this.lastModifiedDate &&
          other.createdDate == this.createdDate &&
          other.code == this.code &&
          other.disabled == this.disabled &&
          other.activity == this.activity &&
          other.user == this.user &&
          other.teamUsers == this.teamUsers);
}

class ManagedTeamsCompanion extends UpdateCompanion<ManagedTeam> {
  final Value<String> id;
  final Value<DateTime?> lastModifiedDate;
  final Value<DateTime?> createdDate;
  final Value<String?> code;
  final Value<bool?> disabled;
  final Value<String> activity;
  final Value<String> user;
  final Value<List<dynamic>> teamUsers;
  final Value<int> rowid;
  const ManagedTeamsCompanion({
    this.id = const Value.absent(),
    this.lastModifiedDate = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.code = const Value.absent(),
    this.disabled = const Value.absent(),
    this.activity = const Value.absent(),
    this.user = const Value.absent(),
    this.teamUsers = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ManagedTeamsCompanion.insert({
    required String id,
    this.lastModifiedDate = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.code = const Value.absent(),
    this.disabled = const Value.absent(),
    required String activity,
    required String user,
    this.teamUsers = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        activity = Value(activity),
        user = Value(user);
  static Insertable<ManagedTeam> custom({
    Expression<String>? id,
    Expression<DateTime>? lastModifiedDate,
    Expression<DateTime>? createdDate,
    Expression<String>? code,
    Expression<bool>? disabled,
    Expression<String>? activity,
    Expression<String>? user,
    Expression<String>? teamUsers,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (lastModifiedDate != null) 'last_modified_date': lastModifiedDate,
      if (createdDate != null) 'created_date': createdDate,
      if (code != null) 'code': code,
      if (disabled != null) 'disabled': disabled,
      if (activity != null) 'activity': activity,
      if (user != null) 'user': user,
      if (teamUsers != null) 'team_users': teamUsers,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ManagedTeamsCompanion copyWith(
      {Value<String>? id,
      Value<DateTime?>? lastModifiedDate,
      Value<DateTime?>? createdDate,
      Value<String?>? code,
      Value<bool?>? disabled,
      Value<String>? activity,
      Value<String>? user,
      Value<List<dynamic>>? teamUsers,
      Value<int>? rowid}) {
    return ManagedTeamsCompanion(
      id: id ?? this.id,
      lastModifiedDate: lastModifiedDate ?? this.lastModifiedDate,
      createdDate: createdDate ?? this.createdDate,
      code: code ?? this.code,
      disabled: disabled ?? this.disabled,
      activity: activity ?? this.activity,
      user: user ?? this.user,
      teamUsers: teamUsers ?? this.teamUsers,
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
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (disabled.present) {
      map['disabled'] = Variable<bool>(disabled.value);
    }
    if (activity.present) {
      map['activity'] = Variable<String>(activity.value);
    }
    if (user.present) {
      map['user'] = Variable<String>(user.value);
    }
    if (teamUsers.present) {
      map['team_users'] = Variable<String>(
          $ManagedTeamsTable.$converterteamUsers.toSql(teamUsers.value));
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ManagedTeamsCompanion(')
          ..write('id: $id, ')
          ..write('lastModifiedDate: $lastModifiedDate, ')
          ..write('createdDate: $createdDate, ')
          ..write('code: $code, ')
          ..write('disabled: $disabled, ')
          ..write('activity: $activity, ')
          ..write('user: $user, ')
          ..write('teamUsers: $teamUsers, ')
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
      GeneratedColumn<DateTime>('last_modified_date', aliasedName, true,
          type: DriftSqlType.dateTime,
          requiredDuringInsert: false,
          defaultValue: Constant(DateTime.now().toUtc()));
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, true,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: Constant(DateTime.now().toUtc()));
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
  static const VerificationMeta _activityNameMeta =
      const VerificationMeta('activityName');
  @override
  late final GeneratedColumn<String> activityName = GeneratedColumn<String>(
      'activity_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _orgUnitCodeMeta =
      const VerificationMeta('orgUnitCode');
  @override
  late final GeneratedColumn<String> orgUnitCode = GeneratedColumn<String>(
      'org_unit_code', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _orgUnitNameMeta =
      const VerificationMeta('orgUnitName');
  @override
  late final GeneratedColumn<String> orgUnitName = GeneratedColumn<String>(
      'org_unit_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _teamCodeMeta =
      const VerificationMeta('teamCode');
  @override
  late final GeneratedColumn<String> teamCode = GeneratedColumn<String>(
      'team_code', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _parentMeta = const VerificationMeta('parent');
  @override
  late final GeneratedColumn<String> parent = GeneratedColumn<String>(
      'parent', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES assignments (id)'));
  static const VerificationMeta _levelMeta = const VerificationMeta('level');
  @override
  late final GeneratedColumn<int> level = GeneratedColumn<int>(
      'level', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      clientDefault: () => 1);
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
  @override
  late final GeneratedColumnWithTypeConverter<AssignmentStatus?, String>
      progressStatus = GeneratedColumn<String>(
              'progress_status', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<AssignmentStatus?>(
              $AssignmentsTable.$converterprogressStatusn);
  @override
  late final GeneratedColumnWithTypeConverter<Map<String, dynamic>?, String>
      allocatedResources = GeneratedColumn<String>(
              'allocated_resources', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<Map<String, dynamic>?>(
              $AssignmentsTable.$converterallocatedResources);
  @override
  late final GeneratedColumnWithTypeConverter<List<String>?, String> forms =
      GeneratedColumn<String>('forms', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<String>?>($AssignmentsTable.$converterforms);
  @override
  late final GeneratedColumnWithTypeConverter<EntityScope, String> scope =
      GeneratedColumn<String>('scope', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<EntityScope>($AssignmentsTable.$converterscope);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        lastModifiedDate,
        createdDate,
        activity,
        team,
        orgUnit,
        activityName,
        orgUnitCode,
        orgUnitName,
        teamCode,
        parent,
        level,
        startDay,
        startDate,
        progressStatus,
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
    if (data.containsKey('activity_name')) {
      context.handle(
          _activityNameMeta,
          activityName.isAcceptableOrUnknown(
              data['activity_name']!, _activityNameMeta));
    } else if (isInserting) {
      context.missing(_activityNameMeta);
    }
    if (data.containsKey('org_unit_code')) {
      context.handle(
          _orgUnitCodeMeta,
          orgUnitCode.isAcceptableOrUnknown(
              data['org_unit_code']!, _orgUnitCodeMeta));
    } else if (isInserting) {
      context.missing(_orgUnitCodeMeta);
    }
    if (data.containsKey('org_unit_name')) {
      context.handle(
          _orgUnitNameMeta,
          orgUnitName.isAcceptableOrUnknown(
              data['org_unit_name']!, _orgUnitNameMeta));
    } else if (isInserting) {
      context.missing(_orgUnitNameMeta);
    }
    if (data.containsKey('team_code')) {
      context.handle(_teamCodeMeta,
          teamCode.isAcceptableOrUnknown(data['team_code']!, _teamCodeMeta));
    } else if (isInserting) {
      context.missing(_teamCodeMeta);
    }
    if (data.containsKey('parent')) {
      context.handle(_parentMeta,
          parent.isAcceptableOrUnknown(data['parent']!, _parentMeta));
    }
    if (data.containsKey('level')) {
      context.handle(
          _levelMeta, level.isAcceptableOrUnknown(data['level']!, _levelMeta));
    }
    if (data.containsKey('start_day')) {
      context.handle(_startDayMeta,
          startDay.isAcceptableOrUnknown(data['start_day']!, _startDayMeta));
    }
    if (data.containsKey('start_date')) {
      context.handle(_startDateMeta,
          startDate.isAcceptableOrUnknown(data['start_date']!, _startDateMeta));
    }
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
          DriftSqlType.dateTime, data['${effectivePrefix}last_modified_date']),
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date']),
      activity: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}activity'])!,
      team: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}team'])!,
      orgUnit: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}org_unit'])!,
      activityName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}activity_name'])!,
      orgUnitCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}org_unit_code'])!,
      orgUnitName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}org_unit_name'])!,
      teamCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}team_code'])!,
      parent: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}parent']),
      level: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}level']),
      startDay: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}start_day']),
      startDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}start_date']),
      progressStatus: $AssignmentsTable.$converterprogressStatusn.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}progress_status'])),
      allocatedResources: $AssignmentsTable.$converterallocatedResources
          .fromSql(attachedDatabase.typeMapping.read(DriftSqlType.string,
              data['${effectivePrefix}allocated_resources'])),
      forms: $AssignmentsTable.$converterforms.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}forms'])),
      scope: $AssignmentsTable.$converterscope.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}scope'])!),
    );
  }

  @override
  $AssignmentsTable createAlias(String alias) {
    return $AssignmentsTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<AssignmentStatus, String, String>
      $converterprogressStatus =
      const EnumNameConverter(AssignmentStatus.values);
  static JsonTypeConverter2<AssignmentStatus?, String?, String?>
      $converterprogressStatusn =
      JsonTypeConverter2.asNullable($converterprogressStatus);
  static TypeConverter<Map<String, dynamic>?, String?>
      $converterallocatedResources = const NullAwareMapConverter();
  static TypeConverter<List<String>?, String?> $converterforms =
      const NullAwareListConverter<String>();
  static JsonTypeConverter2<EntityScope, String, String> $converterscope =
      const EnumNameConverter(EntityScope.values);
}

class Assignment extends DataClass implements Insertable<Assignment> {
  final String id;
  final DateTime? lastModifiedDate;
  final DateTime? createdDate;
  final String activity;
  final String team;
  final String orgUnit;
  final String activityName;
  final String orgUnitCode;
  final String orgUnitName;
  final String teamCode;

  /// Parent reference (stored as a text foreign key, if applicable)
  final String? parent;
  final int? level;

  /// Start day as integer, nullable
  final int? startDay;

  /// Start date as text (ISO string, for example)
  final DateTime? startDate;

  /// Assignment status stored as text via a converter
  final AssignmentStatus? progressStatus;

  /// allocatedResources stored as JSON string
  final Map<String, dynamic>? allocatedResources;

  /// forms stored as JSON string representing a List<String>
  final List<String>? forms;

  /// scope stored as text via a converter
  final EntityScope scope;
  const Assignment(
      {required this.id,
      this.lastModifiedDate,
      this.createdDate,
      required this.activity,
      required this.team,
      required this.orgUnit,
      required this.activityName,
      required this.orgUnitCode,
      required this.orgUnitName,
      required this.teamCode,
      this.parent,
      this.level,
      this.startDay,
      this.startDate,
      this.progressStatus,
      this.allocatedResources,
      this.forms,
      required this.scope});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    if (!nullToAbsent || lastModifiedDate != null) {
      map['last_modified_date'] = Variable<DateTime>(lastModifiedDate);
    }
    if (!nullToAbsent || createdDate != null) {
      map['created_date'] = Variable<DateTime>(createdDate);
    }
    map['activity'] = Variable<String>(activity);
    map['team'] = Variable<String>(team);
    map['org_unit'] = Variable<String>(orgUnit);
    map['activity_name'] = Variable<String>(activityName);
    map['org_unit_code'] = Variable<String>(orgUnitCode);
    map['org_unit_name'] = Variable<String>(orgUnitName);
    map['team_code'] = Variable<String>(teamCode);
    if (!nullToAbsent || parent != null) {
      map['parent'] = Variable<String>(parent);
    }
    if (!nullToAbsent || level != null) {
      map['level'] = Variable<int>(level);
    }
    if (!nullToAbsent || startDay != null) {
      map['start_day'] = Variable<int>(startDay);
    }
    if (!nullToAbsent || startDate != null) {
      map['start_date'] = Variable<DateTime>(startDate);
    }
    if (!nullToAbsent || progressStatus != null) {
      map['progress_status'] = Variable<String>(
          $AssignmentsTable.$converterprogressStatusn.toSql(progressStatus));
    }
    if (!nullToAbsent || allocatedResources != null) {
      map['allocated_resources'] = Variable<String>($AssignmentsTable
          .$converterallocatedResources
          .toSql(allocatedResources));
    }
    if (!nullToAbsent || forms != null) {
      map['forms'] =
          Variable<String>($AssignmentsTable.$converterforms.toSql(forms));
    }
    {
      map['scope'] =
          Variable<String>($AssignmentsTable.$converterscope.toSql(scope));
    }
    return map;
  }

  AssignmentsCompanion toCompanion(bool nullToAbsent) {
    return AssignmentsCompanion(
      id: Value(id),
      lastModifiedDate: lastModifiedDate == null && nullToAbsent
          ? const Value.absent()
          : Value(lastModifiedDate),
      createdDate: createdDate == null && nullToAbsent
          ? const Value.absent()
          : Value(createdDate),
      activity: Value(activity),
      team: Value(team),
      orgUnit: Value(orgUnit),
      activityName: Value(activityName),
      orgUnitCode: Value(orgUnitCode),
      orgUnitName: Value(orgUnitName),
      teamCode: Value(teamCode),
      parent:
          parent == null && nullToAbsent ? const Value.absent() : Value(parent),
      level:
          level == null && nullToAbsent ? const Value.absent() : Value(level),
      startDay: startDay == null && nullToAbsent
          ? const Value.absent()
          : Value(startDay),
      startDate: startDate == null && nullToAbsent
          ? const Value.absent()
          : Value(startDate),
      progressStatus: progressStatus == null && nullToAbsent
          ? const Value.absent()
          : Value(progressStatus),
      allocatedResources: allocatedResources == null && nullToAbsent
          ? const Value.absent()
          : Value(allocatedResources),
      forms:
          forms == null && nullToAbsent ? const Value.absent() : Value(forms),
      scope: Value(scope),
    );
  }

  factory Assignment.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Assignment(
      id: serializer.fromJson<String>(json['id']),
      lastModifiedDate:
          serializer.fromJson<DateTime?>(json['lastModifiedDate']),
      createdDate: serializer.fromJson<DateTime?>(json['createdDate']),
      activity: serializer.fromJson<String>(json['activity']),
      team: serializer.fromJson<String>(json['team']),
      orgUnit: serializer.fromJson<String>(json['orgUnit']),
      activityName: serializer.fromJson<String>(json['activityName']),
      orgUnitCode: serializer.fromJson<String>(json['orgUnitCode']),
      orgUnitName: serializer.fromJson<String>(json['orgUnitName']),
      teamCode: serializer.fromJson<String>(json['teamCode']),
      parent: serializer.fromJson<String?>(json['parent']),
      level: serializer.fromJson<int?>(json['level']),
      startDay: serializer.fromJson<int?>(json['startDay']),
      startDate: serializer.fromJson<DateTime?>(json['startDate']),
      progressStatus: $AssignmentsTable.$converterprogressStatusn
          .fromJson(serializer.fromJson<String?>(json['progressStatus'])),
      allocatedResources: serializer
          .fromJson<Map<String, dynamic>?>(json['allocatedResources']),
      forms: serializer.fromJson<List<String>?>(json['forms']),
      scope: $AssignmentsTable.$converterscope
          .fromJson(serializer.fromJson<String>(json['scope'])),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'lastModifiedDate': serializer.toJson<DateTime?>(lastModifiedDate),
      'createdDate': serializer.toJson<DateTime?>(createdDate),
      'activity': serializer.toJson<String>(activity),
      'team': serializer.toJson<String>(team),
      'orgUnit': serializer.toJson<String>(orgUnit),
      'activityName': serializer.toJson<String>(activityName),
      'orgUnitCode': serializer.toJson<String>(orgUnitCode),
      'orgUnitName': serializer.toJson<String>(orgUnitName),
      'teamCode': serializer.toJson<String>(teamCode),
      'parent': serializer.toJson<String?>(parent),
      'level': serializer.toJson<int?>(level),
      'startDay': serializer.toJson<int?>(startDay),
      'startDate': serializer.toJson<DateTime?>(startDate),
      'progressStatus': serializer.toJson<String?>(
          $AssignmentsTable.$converterprogressStatusn.toJson(progressStatus)),
      'allocatedResources':
          serializer.toJson<Map<String, dynamic>?>(allocatedResources),
      'forms': serializer.toJson<List<String>?>(forms),
      'scope': serializer
          .toJson<String>($AssignmentsTable.$converterscope.toJson(scope)),
    };
  }

  Assignment copyWith(
          {String? id,
          Value<DateTime?> lastModifiedDate = const Value.absent(),
          Value<DateTime?> createdDate = const Value.absent(),
          String? activity,
          String? team,
          String? orgUnit,
          String? activityName,
          String? orgUnitCode,
          String? orgUnitName,
          String? teamCode,
          Value<String?> parent = const Value.absent(),
          Value<int?> level = const Value.absent(),
          Value<int?> startDay = const Value.absent(),
          Value<DateTime?> startDate = const Value.absent(),
          Value<AssignmentStatus?> progressStatus = const Value.absent(),
          Value<Map<String, dynamic>?> allocatedResources =
              const Value.absent(),
          Value<List<String>?> forms = const Value.absent(),
          EntityScope? scope}) =>
      Assignment(
        id: id ?? this.id,
        lastModifiedDate: lastModifiedDate.present
            ? lastModifiedDate.value
            : this.lastModifiedDate,
        createdDate: createdDate.present ? createdDate.value : this.createdDate,
        activity: activity ?? this.activity,
        team: team ?? this.team,
        orgUnit: orgUnit ?? this.orgUnit,
        activityName: activityName ?? this.activityName,
        orgUnitCode: orgUnitCode ?? this.orgUnitCode,
        orgUnitName: orgUnitName ?? this.orgUnitName,
        teamCode: teamCode ?? this.teamCode,
        parent: parent.present ? parent.value : this.parent,
        level: level.present ? level.value : this.level,
        startDay: startDay.present ? startDay.value : this.startDay,
        startDate: startDate.present ? startDate.value : this.startDate,
        progressStatus:
            progressStatus.present ? progressStatus.value : this.progressStatus,
        allocatedResources: allocatedResources.present
            ? allocatedResources.value
            : this.allocatedResources,
        forms: forms.present ? forms.value : this.forms,
        scope: scope ?? this.scope,
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
      activityName: data.activityName.present
          ? data.activityName.value
          : this.activityName,
      orgUnitCode:
          data.orgUnitCode.present ? data.orgUnitCode.value : this.orgUnitCode,
      orgUnitName:
          data.orgUnitName.present ? data.orgUnitName.value : this.orgUnitName,
      teamCode: data.teamCode.present ? data.teamCode.value : this.teamCode,
      parent: data.parent.present ? data.parent.value : this.parent,
      level: data.level.present ? data.level.value : this.level,
      startDay: data.startDay.present ? data.startDay.value : this.startDay,
      startDate: data.startDate.present ? data.startDate.value : this.startDate,
      progressStatus: data.progressStatus.present
          ? data.progressStatus.value
          : this.progressStatus,
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
          ..write('activityName: $activityName, ')
          ..write('orgUnitCode: $orgUnitCode, ')
          ..write('orgUnitName: $orgUnitName, ')
          ..write('teamCode: $teamCode, ')
          ..write('parent: $parent, ')
          ..write('level: $level, ')
          ..write('startDay: $startDay, ')
          ..write('startDate: $startDate, ')
          ..write('progressStatus: $progressStatus, ')
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
      activityName,
      orgUnitCode,
      orgUnitName,
      teamCode,
      parent,
      level,
      startDay,
      startDate,
      progressStatus,
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
          other.activityName == this.activityName &&
          other.orgUnitCode == this.orgUnitCode &&
          other.orgUnitName == this.orgUnitName &&
          other.teamCode == this.teamCode &&
          other.parent == this.parent &&
          other.level == this.level &&
          other.startDay == this.startDay &&
          other.startDate == this.startDate &&
          other.progressStatus == this.progressStatus &&
          other.allocatedResources == this.allocatedResources &&
          other.forms == this.forms &&
          other.scope == this.scope);
}

class AssignmentsCompanion extends UpdateCompanion<Assignment> {
  final Value<String> id;
  final Value<DateTime?> lastModifiedDate;
  final Value<DateTime?> createdDate;
  final Value<String> activity;
  final Value<String> team;
  final Value<String> orgUnit;
  final Value<String> activityName;
  final Value<String> orgUnitCode;
  final Value<String> orgUnitName;
  final Value<String> teamCode;
  final Value<String?> parent;
  final Value<int?> level;
  final Value<int?> startDay;
  final Value<DateTime?> startDate;
  final Value<AssignmentStatus?> progressStatus;
  final Value<Map<String, dynamic>?> allocatedResources;
  final Value<List<String>?> forms;
  final Value<EntityScope> scope;
  final Value<int> rowid;
  const AssignmentsCompanion({
    this.id = const Value.absent(),
    this.lastModifiedDate = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.activity = const Value.absent(),
    this.team = const Value.absent(),
    this.orgUnit = const Value.absent(),
    this.activityName = const Value.absent(),
    this.orgUnitCode = const Value.absent(),
    this.orgUnitName = const Value.absent(),
    this.teamCode = const Value.absent(),
    this.parent = const Value.absent(),
    this.level = const Value.absent(),
    this.startDay = const Value.absent(),
    this.startDate = const Value.absent(),
    this.progressStatus = const Value.absent(),
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
    required String activityName,
    required String orgUnitCode,
    required String orgUnitName,
    required String teamCode,
    this.parent = const Value.absent(),
    this.level = const Value.absent(),
    this.startDay = const Value.absent(),
    this.startDate = const Value.absent(),
    this.progressStatus = const Value.absent(),
    this.allocatedResources = const Value.absent(),
    this.forms = const Value.absent(),
    required EntityScope scope,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        activity = Value(activity),
        team = Value(team),
        orgUnit = Value(orgUnit),
        activityName = Value(activityName),
        orgUnitCode = Value(orgUnitCode),
        orgUnitName = Value(orgUnitName),
        teamCode = Value(teamCode),
        scope = Value(scope);
  static Insertable<Assignment> custom({
    Expression<String>? id,
    Expression<DateTime>? lastModifiedDate,
    Expression<DateTime>? createdDate,
    Expression<String>? activity,
    Expression<String>? team,
    Expression<String>? orgUnit,
    Expression<String>? activityName,
    Expression<String>? orgUnitCode,
    Expression<String>? orgUnitName,
    Expression<String>? teamCode,
    Expression<String>? parent,
    Expression<int>? level,
    Expression<int>? startDay,
    Expression<DateTime>? startDate,
    Expression<String>? progressStatus,
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
      if (activityName != null) 'activity_name': activityName,
      if (orgUnitCode != null) 'org_unit_code': orgUnitCode,
      if (orgUnitName != null) 'org_unit_name': orgUnitName,
      if (teamCode != null) 'team_code': teamCode,
      if (parent != null) 'parent': parent,
      if (level != null) 'level': level,
      if (startDay != null) 'start_day': startDay,
      if (startDate != null) 'start_date': startDate,
      if (progressStatus != null) 'progress_status': progressStatus,
      if (allocatedResources != null) 'allocated_resources': allocatedResources,
      if (forms != null) 'forms': forms,
      if (scope != null) 'scope': scope,
      if (rowid != null) 'rowid': rowid,
    });
  }

  AssignmentsCompanion copyWith(
      {Value<String>? id,
      Value<DateTime?>? lastModifiedDate,
      Value<DateTime?>? createdDate,
      Value<String>? activity,
      Value<String>? team,
      Value<String>? orgUnit,
      Value<String>? activityName,
      Value<String>? orgUnitCode,
      Value<String>? orgUnitName,
      Value<String>? teamCode,
      Value<String?>? parent,
      Value<int?>? level,
      Value<int?>? startDay,
      Value<DateTime?>? startDate,
      Value<AssignmentStatus?>? progressStatus,
      Value<Map<String, dynamic>?>? allocatedResources,
      Value<List<String>?>? forms,
      Value<EntityScope>? scope,
      Value<int>? rowid}) {
    return AssignmentsCompanion(
      id: id ?? this.id,
      lastModifiedDate: lastModifiedDate ?? this.lastModifiedDate,
      createdDate: createdDate ?? this.createdDate,
      activity: activity ?? this.activity,
      team: team ?? this.team,
      orgUnit: orgUnit ?? this.orgUnit,
      activityName: activityName ?? this.activityName,
      orgUnitCode: orgUnitCode ?? this.orgUnitCode,
      orgUnitName: orgUnitName ?? this.orgUnitName,
      teamCode: teamCode ?? this.teamCode,
      parent: parent ?? this.parent,
      level: level ?? this.level,
      startDay: startDay ?? this.startDay,
      startDate: startDate ?? this.startDate,
      progressStatus: progressStatus ?? this.progressStatus,
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
    if (activityName.present) {
      map['activity_name'] = Variable<String>(activityName.value);
    }
    if (orgUnitCode.present) {
      map['org_unit_code'] = Variable<String>(orgUnitCode.value);
    }
    if (orgUnitName.present) {
      map['org_unit_name'] = Variable<String>(orgUnitName.value);
    }
    if (teamCode.present) {
      map['team_code'] = Variable<String>(teamCode.value);
    }
    if (parent.present) {
      map['parent'] = Variable<String>(parent.value);
    }
    if (level.present) {
      map['level'] = Variable<int>(level.value);
    }
    if (startDay.present) {
      map['start_day'] = Variable<int>(startDay.value);
    }
    if (startDate.present) {
      map['start_date'] = Variable<DateTime>(startDate.value);
    }
    if (progressStatus.present) {
      map['progress_status'] = Variable<String>($AssignmentsTable
          .$converterprogressStatusn
          .toSql(progressStatus.value));
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
          $AssignmentsTable.$converterscope.toSql(scope.value));
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
          ..write('activityName: $activityName, ')
          ..write('orgUnitCode: $orgUnitCode, ')
          ..write('orgUnitName: $orgUnitName, ')
          ..write('teamCode: $teamCode, ')
          ..write('parent: $parent, ')
          ..write('level: $level, ')
          ..write('startDay: $startDay, ')
          ..write('startDate: $startDate, ')
          ..write('progressStatus: $progressStatus, ')
          ..write('allocatedResources: $allocatedResources, ')
          ..write('forms: $forms, ')
          ..write('scope: $scope, ')
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
      GeneratedColumn<DateTime>('last_modified_date', aliasedName, true,
          type: DriftSqlType.dateTime,
          requiredDuringInsert: false,
          defaultValue: Constant(DateTime.now().toUtc()));
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, true,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: Constant(DateTime.now().toUtc()));
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
  @override
  late final GeneratedColumnWithTypeConverter<Map<String, dynamic>?, String>
      label = GeneratedColumn<String>('label', aliasedName, true,
              type: DriftSqlType.string,
              requiredDuringInsert: false,
              clientDefault: () => '{}')
          .withConverter<Map<String, dynamic>?>(
              $FormVersionsTable.$converterlabel);
  @override
  late final GeneratedColumnWithTypeConverter<List<Translation>, String>
      translations = GeneratedColumn<String>('translations', aliasedName, false,
              type: DriftSqlType.string,
              requiredDuringInsert: false,
              defaultValue: Constant('[]'))
          .withConverter<List<Translation>>(
              $FormVersionsTable.$convertertranslations);
  static const VerificationMeta _formMeta = const VerificationMeta('form');
  @override
  late final GeneratedColumn<String> form = GeneratedColumn<String>(
      'form', aliasedName, false,
      generatedAs:
          GeneratedAs(StringExpressionOperators(id).substr(1, 11), true),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  static const VerificationMeta _versionMeta =
      const VerificationMeta('version');
  @override
  late final GeneratedColumn<int> version = GeneratedColumn<int>(
      'version', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  late final GeneratedColumnWithTypeConverter<List<Template>, String>
      treeFields = GeneratedColumn<String>('tree_fields', aliasedName, false,
              type: DriftSqlType.string,
              requiredDuringInsert: false,
              clientDefault: () => '[]')
          .withConverter<List<Template>>(
              $FormVersionsTable.$convertertreeFields);
  @override
  late final GeneratedColumnWithTypeConverter<List<FormOption>, String>
      options = GeneratedColumn<String>('options', aliasedName, false,
              type: DriftSqlType.string,
              requiredDuringInsert: false,
              clientDefault: () => '[]')
          .withConverter<List<FormOption>>(
              $FormVersionsTable.$converteroptions);
  @override
  late final GeneratedColumnWithTypeConverter<List<DOptionSet>, String>
      optionSets = GeneratedColumn<String>('option_sets', aliasedName, false,
              type: DriftSqlType.string,
              requiredDuringInsert: false,
              clientDefault: () => '[]')
          .withConverter<List<DOptionSet>>(
              $FormVersionsTable.$converteroptionSets);
  static const VerificationMeta _defaultLocalMeta =
      const VerificationMeta('defaultLocal');
  @override
  late final GeneratedColumn<String> defaultLocal = GeneratedColumn<String>(
      'default_local', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumnWithTypeConverter<List<Template>, String>
      fieldsConf = GeneratedColumn<String>('fields_conf', aliasedName, false,
              type: DriftSqlType.string,
              requiredDuringInsert: false,
              clientDefault: () => '[]')
          .withConverter<List<Template>>(
              $FormVersionsTable.$converterfieldsConf);
  @override
  late final GeneratedColumnWithTypeConverter<List<Template>, String> sections =
      GeneratedColumn<String>('sections', aliasedName, false,
              type: DriftSqlType.string,
              requiredDuringInsert: false,
              clientDefault: () => '[]')
          .withConverter<List<Template>>($FormVersionsTable.$convertersections);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumnWithTypeConverter<ValidationStrategy?, String>
      validationStrategy = GeneratedColumn<String>(
              'validation_strategy', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<ValidationStrategy?>(
              $FormVersionsTable.$convertervalidationStrategyn);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        lastModifiedDate,
        createdDate,
        name,
        displayName,
        code,
        label,
        translations,
        form,
        version,
        treeFields,
        options,
        optionSets,
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
    if (data.containsKey('form')) {
      context.handle(
          _formMeta, form.isAcceptableOrUnknown(data['form']!, _formMeta));
    }
    if (data.containsKey('version')) {
      context.handle(_versionMeta,
          version.isAcceptableOrUnknown(data['version']!, _versionMeta));
    } else if (isInserting) {
      context.missing(_versionMeta);
    }
    if (data.containsKey('default_local')) {
      context.handle(
          _defaultLocalMeta,
          defaultLocal.isAcceptableOrUnknown(
              data['default_local']!, _defaultLocalMeta));
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
  FormVersion map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FormVersion(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      lastModifiedDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}last_modified_date']),
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date']),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      displayName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}display_name']),
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code']),
      label: $FormVersionsTable.$converterlabel.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}label'])),
      translations: $FormVersionsTable.$convertertranslations.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}translations'])!),
      form: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}form'])!,
      version: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}version'])!,
      treeFields: $FormVersionsTable.$convertertreeFields.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}tree_fields'])!),
      options: $FormVersionsTable.$converteroptions.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}options'])!),
      optionSets: $FormVersionsTable.$converteroptionSets.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}option_sets'])!),
      defaultLocal: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}default_local']),
      fieldsConf: $FormVersionsTable.$converterfieldsConf.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}fields_conf'])!),
      sections: $FormVersionsTable.$convertersections.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}sections'])!),
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
      validationStrategy: $FormVersionsTable.$convertervalidationStrategyn
          .fromSql(attachedDatabase.typeMapping.read(DriftSqlType.string,
              data['${effectivePrefix}validation_strategy'])),
    );
  }

  @override
  $FormVersionsTable createAlias(String alias) {
    return $FormVersionsTable(attachedDatabase, alias);
  }

  static TypeConverter<Map<String, dynamic>?, String?> $converterlabel =
      const NullAwareMapConverter();
  static TypeConverter<List<Translation>, String> $convertertranslations =
      const TranslationConverter();
  static TypeConverter<List<Template>, String> $convertertreeFields =
      const TemplateListConverter();
  static TypeConverter<List<FormOption>, String> $converteroptions =
      const FormOptionListConverter();
  static TypeConverter<List<DOptionSet>, String> $converteroptionSets =
      const DOptionSetListConverter();
  static TypeConverter<List<Template>, String> $converterfieldsConf =
      const TemplateListConverter();
  static TypeConverter<List<Template>, String> $convertersections =
      const TemplateListConverter();
  static JsonTypeConverter2<ValidationStrategy, String, String>
      $convertervalidationStrategy =
      const EnumNameConverter(ValidationStrategy.values);
  static JsonTypeConverter2<ValidationStrategy?, String?, String?>
      $convertervalidationStrategyn =
      JsonTypeConverter2.asNullable($convertervalidationStrategy);
}

class FormVersion extends DataClass implements Insertable<FormVersion> {
  final String id;
  final DateTime? lastModifiedDate;
  final DateTime? createdDate;
  final String? name;
  final String? displayName;
  final String? code;
  final Map<String, dynamic>? label;

  /// List of Translations
  final List<Translation> translations;
  final String form;

  /// Version is an integer.
  final int version;

  /// List of Template objects (as List<Template>), stored as JSON.
  final List<Template> treeFields;

  /// List of FormOption objects, stored as JSON.
  final List<FormOption> options;

  /// List of DOptionSet objects, stored as JSON.
  final List<DOptionSet> optionSets;

  /// Default locale.
  final String? defaultLocal;

  /// fieldsConf stored as IList<Template>, as JSON.
  final List<Template> fieldsConf;

  /// sections stored as IList<Template>, as JSON.
  final List<Template> sections;

  /// Description is nullable.
  final String? description;

  /// Validation strategy stored as text via a converter.
  final ValidationStrategy? validationStrategy;
  const FormVersion(
      {required this.id,
      this.lastModifiedDate,
      this.createdDate,
      this.name,
      this.displayName,
      this.code,
      this.label,
      required this.translations,
      required this.form,
      required this.version,
      required this.treeFields,
      required this.options,
      required this.optionSets,
      this.defaultLocal,
      required this.fieldsConf,
      required this.sections,
      this.description,
      this.validationStrategy});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    if (!nullToAbsent || lastModifiedDate != null) {
      map['last_modified_date'] = Variable<DateTime>(lastModifiedDate);
    }
    if (!nullToAbsent || createdDate != null) {
      map['created_date'] = Variable<DateTime>(createdDate);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || displayName != null) {
      map['display_name'] = Variable<String>(displayName);
    }
    if (!nullToAbsent || code != null) {
      map['code'] = Variable<String>(code);
    }
    if (!nullToAbsent || label != null) {
      map['label'] =
          Variable<String>($FormVersionsTable.$converterlabel.toSql(label));
    }
    {
      map['translations'] = Variable<String>(
          $FormVersionsTable.$convertertranslations.toSql(translations));
    }
    map['version'] = Variable<int>(version);
    {
      map['tree_fields'] = Variable<String>(
          $FormVersionsTable.$convertertreeFields.toSql(treeFields));
    }
    {
      map['options'] =
          Variable<String>($FormVersionsTable.$converteroptions.toSql(options));
    }
    {
      map['option_sets'] = Variable<String>(
          $FormVersionsTable.$converteroptionSets.toSql(optionSets));
    }
    if (!nullToAbsent || defaultLocal != null) {
      map['default_local'] = Variable<String>(defaultLocal);
    }
    {
      map['fields_conf'] = Variable<String>(
          $FormVersionsTable.$converterfieldsConf.toSql(fieldsConf));
    }
    {
      map['sections'] = Variable<String>(
          $FormVersionsTable.$convertersections.toSql(sections));
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || validationStrategy != null) {
      map['validation_strategy'] = Variable<String>($FormVersionsTable
          .$convertervalidationStrategyn
          .toSql(validationStrategy));
    }
    return map;
  }

  FormVersionsCompanion toCompanion(bool nullToAbsent) {
    return FormVersionsCompanion(
      id: Value(id),
      lastModifiedDate: lastModifiedDate == null && nullToAbsent
          ? const Value.absent()
          : Value(lastModifiedDate),
      createdDate: createdDate == null && nullToAbsent
          ? const Value.absent()
          : Value(createdDate),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      displayName: displayName == null && nullToAbsent
          ? const Value.absent()
          : Value(displayName),
      code: code == null && nullToAbsent ? const Value.absent() : Value(code),
      label:
          label == null && nullToAbsent ? const Value.absent() : Value(label),
      translations: Value(translations),
      version: Value(version),
      treeFields: Value(treeFields),
      options: Value(options),
      optionSets: Value(optionSets),
      defaultLocal: defaultLocal == null && nullToAbsent
          ? const Value.absent()
          : Value(defaultLocal),
      fieldsConf: Value(fieldsConf),
      sections: Value(sections),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      validationStrategy: validationStrategy == null && nullToAbsent
          ? const Value.absent()
          : Value(validationStrategy),
    );
  }

  factory FormVersion.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FormVersion(
      id: serializer.fromJson<String>(json['id']),
      lastModifiedDate:
          serializer.fromJson<DateTime?>(json['lastModifiedDate']),
      createdDate: serializer.fromJson<DateTime?>(json['createdDate']),
      name: serializer.fromJson<String?>(json['name']),
      displayName: serializer.fromJson<String?>(json['displayName']),
      code: serializer.fromJson<String?>(json['code']),
      label: serializer.fromJson<Map<String, dynamic>?>(json['label']),
      translations:
          serializer.fromJson<List<Translation>>(json['translations']),
      form: serializer.fromJson<String>(json['form']),
      version: serializer.fromJson<int>(json['version']),
      treeFields: serializer.fromJson<List<Template>>(json['treeFields']),
      options: serializer.fromJson<List<FormOption>>(json['options']),
      optionSets: serializer.fromJson<List<DOptionSet>>(json['optionSets']),
      defaultLocal: serializer.fromJson<String?>(json['defaultLocal']),
      fieldsConf: serializer.fromJson<List<Template>>(json['fieldsConf']),
      sections: serializer.fromJson<List<Template>>(json['sections']),
      description: serializer.fromJson<String?>(json['description']),
      validationStrategy: $FormVersionsTable.$convertervalidationStrategyn
          .fromJson(serializer.fromJson<String?>(json['validationStrategy'])),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'lastModifiedDate': serializer.toJson<DateTime?>(lastModifiedDate),
      'createdDate': serializer.toJson<DateTime?>(createdDate),
      'name': serializer.toJson<String?>(name),
      'displayName': serializer.toJson<String?>(displayName),
      'code': serializer.toJson<String?>(code),
      'label': serializer.toJson<Map<String, dynamic>?>(label),
      'translations': serializer.toJson<List<Translation>>(translations),
      'form': serializer.toJson<String>(form),
      'version': serializer.toJson<int>(version),
      'treeFields': serializer.toJson<List<Template>>(treeFields),
      'options': serializer.toJson<List<FormOption>>(options),
      'optionSets': serializer.toJson<List<DOptionSet>>(optionSets),
      'defaultLocal': serializer.toJson<String?>(defaultLocal),
      'fieldsConf': serializer.toJson<List<Template>>(fieldsConf),
      'sections': serializer.toJson<List<Template>>(sections),
      'description': serializer.toJson<String?>(description),
      'validationStrategy': serializer.toJson<String?>($FormVersionsTable
          .$convertervalidationStrategyn
          .toJson(validationStrategy)),
    };
  }

  FormVersion copyWith(
          {String? id,
          Value<DateTime?> lastModifiedDate = const Value.absent(),
          Value<DateTime?> createdDate = const Value.absent(),
          Value<String?> name = const Value.absent(),
          Value<String?> displayName = const Value.absent(),
          Value<String?> code = const Value.absent(),
          Value<Map<String, dynamic>?> label = const Value.absent(),
          List<Translation>? translations,
          String? form,
          int? version,
          List<Template>? treeFields,
          List<FormOption>? options,
          List<DOptionSet>? optionSets,
          Value<String?> defaultLocal = const Value.absent(),
          List<Template>? fieldsConf,
          List<Template>? sections,
          Value<String?> description = const Value.absent(),
          Value<ValidationStrategy?> validationStrategy =
              const Value.absent()}) =>
      FormVersion(
        id: id ?? this.id,
        lastModifiedDate: lastModifiedDate.present
            ? lastModifiedDate.value
            : this.lastModifiedDate,
        createdDate: createdDate.present ? createdDate.value : this.createdDate,
        name: name.present ? name.value : this.name,
        displayName: displayName.present ? displayName.value : this.displayName,
        code: code.present ? code.value : this.code,
        label: label.present ? label.value : this.label,
        translations: translations ?? this.translations,
        form: form ?? this.form,
        version: version ?? this.version,
        treeFields: treeFields ?? this.treeFields,
        options: options ?? this.options,
        optionSets: optionSets ?? this.optionSets,
        defaultLocal:
            defaultLocal.present ? defaultLocal.value : this.defaultLocal,
        fieldsConf: fieldsConf ?? this.fieldsConf,
        sections: sections ?? this.sections,
        description: description.present ? description.value : this.description,
        validationStrategy: validationStrategy.present
            ? validationStrategy.value
            : this.validationStrategy,
      );
  @override
  String toString() {
    return (StringBuffer('FormVersion(')
          ..write('id: $id, ')
          ..write('lastModifiedDate: $lastModifiedDate, ')
          ..write('createdDate: $createdDate, ')
          ..write('name: $name, ')
          ..write('displayName: $displayName, ')
          ..write('code: $code, ')
          ..write('label: $label, ')
          ..write('translations: $translations, ')
          ..write('form: $form, ')
          ..write('version: $version, ')
          ..write('treeFields: $treeFields, ')
          ..write('options: $options, ')
          ..write('optionSets: $optionSets, ')
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
      label,
      translations,
      form,
      version,
      treeFields,
      options,
      optionSets,
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
          other.label == this.label &&
          other.translations == this.translations &&
          other.form == this.form &&
          other.version == this.version &&
          other.treeFields == this.treeFields &&
          other.options == this.options &&
          other.optionSets == this.optionSets &&
          other.defaultLocal == this.defaultLocal &&
          other.fieldsConf == this.fieldsConf &&
          other.sections == this.sections &&
          other.description == this.description &&
          other.validationStrategy == this.validationStrategy);
}

class FormVersionsCompanion extends UpdateCompanion<FormVersion> {
  final Value<String> id;
  final Value<DateTime?> lastModifiedDate;
  final Value<DateTime?> createdDate;
  final Value<String?> name;
  final Value<String?> displayName;
  final Value<String?> code;
  final Value<Map<String, dynamic>?> label;
  final Value<List<Translation>> translations;
  final Value<int> version;
  final Value<List<Template>> treeFields;
  final Value<List<FormOption>> options;
  final Value<List<DOptionSet>> optionSets;
  final Value<String?> defaultLocal;
  final Value<List<Template>> fieldsConf;
  final Value<List<Template>> sections;
  final Value<String?> description;
  final Value<ValidationStrategy?> validationStrategy;
  final Value<int> rowid;
  const FormVersionsCompanion({
    this.id = const Value.absent(),
    this.lastModifiedDate = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.name = const Value.absent(),
    this.displayName = const Value.absent(),
    this.code = const Value.absent(),
    this.label = const Value.absent(),
    this.translations = const Value.absent(),
    this.version = const Value.absent(),
    this.treeFields = const Value.absent(),
    this.options = const Value.absent(),
    this.optionSets = const Value.absent(),
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
    this.label = const Value.absent(),
    this.translations = const Value.absent(),
    required int version,
    this.treeFields = const Value.absent(),
    this.options = const Value.absent(),
    this.optionSets = const Value.absent(),
    this.defaultLocal = const Value.absent(),
    this.fieldsConf = const Value.absent(),
    this.sections = const Value.absent(),
    this.description = const Value.absent(),
    this.validationStrategy = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        version = Value(version);
  static Insertable<FormVersion> custom({
    Expression<String>? id,
    Expression<DateTime>? lastModifiedDate,
    Expression<DateTime>? createdDate,
    Expression<String>? name,
    Expression<String>? displayName,
    Expression<String>? code,
    Expression<String>? label,
    Expression<String>? translations,
    Expression<int>? version,
    Expression<String>? treeFields,
    Expression<String>? options,
    Expression<String>? optionSets,
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
      if (label != null) 'label': label,
      if (translations != null) 'translations': translations,
      if (version != null) 'version': version,
      if (treeFields != null) 'tree_fields': treeFields,
      if (options != null) 'options': options,
      if (optionSets != null) 'option_sets': optionSets,
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
      Value<DateTime?>? lastModifiedDate,
      Value<DateTime?>? createdDate,
      Value<String?>? name,
      Value<String?>? displayName,
      Value<String?>? code,
      Value<Map<String, dynamic>?>? label,
      Value<List<Translation>>? translations,
      Value<int>? version,
      Value<List<Template>>? treeFields,
      Value<List<FormOption>>? options,
      Value<List<DOptionSet>>? optionSets,
      Value<String?>? defaultLocal,
      Value<List<Template>>? fieldsConf,
      Value<List<Template>>? sections,
      Value<String?>? description,
      Value<ValidationStrategy?>? validationStrategy,
      Value<int>? rowid}) {
    return FormVersionsCompanion(
      id: id ?? this.id,
      lastModifiedDate: lastModifiedDate ?? this.lastModifiedDate,
      createdDate: createdDate ?? this.createdDate,
      name: name ?? this.name,
      displayName: displayName ?? this.displayName,
      code: code ?? this.code,
      label: label ?? this.label,
      translations: translations ?? this.translations,
      version: version ?? this.version,
      treeFields: treeFields ?? this.treeFields,
      options: options ?? this.options,
      optionSets: optionSets ?? this.optionSets,
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
    if (label.present) {
      map['label'] = Variable<String>(
          $FormVersionsTable.$converterlabel.toSql(label.value));
    }
    if (translations.present) {
      map['translations'] = Variable<String>(
          $FormVersionsTable.$convertertranslations.toSql(translations.value));
    }
    if (version.present) {
      map['version'] = Variable<int>(version.value);
    }
    if (treeFields.present) {
      map['tree_fields'] = Variable<String>(
          $FormVersionsTable.$convertertreeFields.toSql(treeFields.value));
    }
    if (options.present) {
      map['options'] = Variable<String>(
          $FormVersionsTable.$converteroptions.toSql(options.value));
    }
    if (optionSets.present) {
      map['option_sets'] = Variable<String>(
          $FormVersionsTable.$converteroptionSets.toSql(optionSets.value));
    }
    if (defaultLocal.present) {
      map['default_local'] = Variable<String>(defaultLocal.value);
    }
    if (fieldsConf.present) {
      map['fields_conf'] = Variable<String>(
          $FormVersionsTable.$converterfieldsConf.toSql(fieldsConf.value));
    }
    if (sections.present) {
      map['sections'] = Variable<String>(
          $FormVersionsTable.$convertersections.toSql(sections.value));
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (validationStrategy.present) {
      map['validation_strategy'] = Variable<String>($FormVersionsTable
          .$convertervalidationStrategyn
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
          ..write('label: $label, ')
          ..write('translations: $translations, ')
          ..write('version: $version, ')
          ..write('treeFields: $treeFields, ')
          ..write('options: $options, ')
          ..write('optionSets: $optionSets, ')
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
      GeneratedColumn<DateTime>('last_modified_date', aliasedName, true,
          type: DriftSqlType.dateTime,
          requiredDuringInsert: false,
          defaultValue: Constant(DateTime.now().toUtc()));
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, true,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: Constant(DateTime.now().toUtc()));
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
  @override
  late final GeneratedColumnWithTypeConverter<Map<String, dynamic>?, String>
      label = GeneratedColumn<String>('label', aliasedName, true,
              type: DriftSqlType.string,
              requiredDuringInsert: false,
              clientDefault: () => '{}')
          .withConverter<Map<String, dynamic>?>(
              $MetadataSubmissionsTable.$converterlabel);
  @override
  late final GeneratedColumnWithTypeConverter<List<Translation>, String>
      translations = GeneratedColumn<String>('translations', aliasedName, false,
              type: DriftSqlType.string,
              requiredDuringInsert: false,
              defaultValue: Constant('[]'))
          .withConverter<List<Translation>>(
              $MetadataSubmissionsTable.$convertertranslations);
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
  @override
  late final GeneratedColumnWithTypeConverter<Map<String, dynamic>?, String>
      formData = GeneratedColumn<String>('form_data', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<Map<String, dynamic>?>(
              $MetadataSubmissionsTable.$converterformData);
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
        label,
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
          DriftSqlType.dateTime, data['${effectivePrefix}last_modified_date']),
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date']),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      displayName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}display_name']),
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code']),
      label: $MetadataSubmissionsTable.$converterlabel.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}label'])),
      translations: $MetadataSubmissionsTable.$convertertranslations.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}translations'])!),
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
      formData: $MetadataSubmissionsTable.$converterformData.fromSql(
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

  static TypeConverter<Map<String, dynamic>?, String?> $converterlabel =
      const NullAwareMapConverter();
  static TypeConverter<List<Translation>, String> $convertertranslations =
      const TranslationConverter();
  static JsonTypeConverter2<MetadataResourceType, String, String>
      $converterresourceType =
      const EnumNameConverter(MetadataResourceType.values);
  static TypeConverter<Map<String, dynamic>?, String?> $converterformData =
      const NullAwareMapConverter();
}

class MetadataSubmission extends DataClass
    implements Insertable<MetadataSubmission> {
  final String id;
  final DateTime? lastModifiedDate;
  final DateTime? createdDate;
  final String? name;
  final String? displayName;
  final String? code;
  final Map<String, dynamic>? label;

  /// List of Translations
  final List<Translation> translations;

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
      this.lastModifiedDate,
      this.createdDate,
      this.name,
      this.displayName,
      this.code,
      this.label,
      required this.translations,
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
    if (!nullToAbsent || lastModifiedDate != null) {
      map['last_modified_date'] = Variable<DateTime>(lastModifiedDate);
    }
    if (!nullToAbsent || createdDate != null) {
      map['created_date'] = Variable<DateTime>(createdDate);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || displayName != null) {
      map['display_name'] = Variable<String>(displayName);
    }
    if (!nullToAbsent || code != null) {
      map['code'] = Variable<String>(code);
    }
    if (!nullToAbsent || label != null) {
      map['label'] = Variable<String>(
          $MetadataSubmissionsTable.$converterlabel.toSql(label));
    }
    {
      map['translations'] = Variable<String>(
          $MetadataSubmissionsTable.$convertertranslations.toSql(translations));
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
          $MetadataSubmissionsTable.$converterformData.toSql(formData));
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
      lastModifiedDate: lastModifiedDate == null && nullToAbsent
          ? const Value.absent()
          : Value(lastModifiedDate),
      createdDate: createdDate == null && nullToAbsent
          ? const Value.absent()
          : Value(createdDate),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      displayName: displayName == null && nullToAbsent
          ? const Value.absent()
          : Value(displayName),
      code: code == null && nullToAbsent ? const Value.absent() : Value(code),
      label:
          label == null && nullToAbsent ? const Value.absent() : Value(label),
      translations: Value(translations),
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
      lastModifiedDate:
          serializer.fromJson<DateTime?>(json['lastModifiedDate']),
      createdDate: serializer.fromJson<DateTime?>(json['createdDate']),
      name: serializer.fromJson<String?>(json['name']),
      displayName: serializer.fromJson<String?>(json['displayName']),
      code: serializer.fromJson<String?>(json['code']),
      label: serializer.fromJson<Map<String, dynamic>?>(json['label']),
      translations:
          serializer.fromJson<List<Translation>>(json['translations']),
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
      'lastModifiedDate': serializer.toJson<DateTime?>(lastModifiedDate),
      'createdDate': serializer.toJson<DateTime?>(createdDate),
      'name': serializer.toJson<String?>(name),
      'displayName': serializer.toJson<String?>(displayName),
      'code': serializer.toJson<String?>(code),
      'label': serializer.toJson<Map<String, dynamic>?>(label),
      'translations': serializer.toJson<List<Translation>>(translations),
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
          Value<DateTime?> lastModifiedDate = const Value.absent(),
          Value<DateTime?> createdDate = const Value.absent(),
          Value<String?> name = const Value.absent(),
          Value<String?> displayName = const Value.absent(),
          Value<String?> code = const Value.absent(),
          Value<Map<String, dynamic>?> label = const Value.absent(),
          List<Translation>? translations,
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
        lastModifiedDate: lastModifiedDate.present
            ? lastModifiedDate.value
            : this.lastModifiedDate,
        createdDate: createdDate.present ? createdDate.value : this.createdDate,
        name: name.present ? name.value : this.name,
        displayName: displayName.present ? displayName.value : this.displayName,
        code: code.present ? code.value : this.code,
        label: label.present ? label.value : this.label,
        translations: translations ?? this.translations,
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
      label: data.label.present ? data.label.value : this.label,
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
          ..write('label: $label, ')
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
      label,
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
          other.label == this.label &&
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
  final Value<DateTime?> lastModifiedDate;
  final Value<DateTime?> createdDate;
  final Value<String?> name;
  final Value<String?> displayName;
  final Value<String?> code;
  final Value<Map<String, dynamic>?> label;
  final Value<List<Translation>> translations;
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
    this.label = const Value.absent(),
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
    this.label = const Value.absent(),
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
    Expression<String>? label,
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
      if (label != null) 'label': label,
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
      Value<DateTime?>? lastModifiedDate,
      Value<DateTime?>? createdDate,
      Value<String?>? name,
      Value<String?>? displayName,
      Value<String?>? code,
      Value<Map<String, dynamic>?>? label,
      Value<List<Translation>>? translations,
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
      label: label ?? this.label,
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
    if (label.present) {
      map['label'] = Variable<String>(
          $MetadataSubmissionsTable.$converterlabel.toSql(label.value));
    }
    if (translations.present) {
      map['translations'] = Variable<String>($MetadataSubmissionsTable
          .$convertertranslations
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
          $MetadataSubmissionsTable.$converterformData.toSql(formData.value));
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
          ..write('label: $label, ')
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

class $DataFormTemplateVersionsTable extends DataFormTemplateVersions
    with TableInfo<$DataFormTemplateVersionsTable, DataFormTemplateVersion> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DataFormTemplateVersionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lastModifiedDateMeta =
      const VerificationMeta('lastModifiedDate');
  @override
  late final GeneratedColumn<DateTime> lastModifiedDate =
      GeneratedColumn<DateTime>('last_modified_date', aliasedName, true,
          type: DriftSqlType.dateTime,
          requiredDuringInsert: false,
          defaultValue: Constant(DateTime.now().toUtc()));
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, true,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: Constant(DateTime.now().toUtc()));
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
  @override
  late final GeneratedColumnWithTypeConverter<Map<String, dynamic>?, String>
      label = GeneratedColumn<String>('label', aliasedName, true,
              type: DriftSqlType.string,
              requiredDuringInsert: false,
              clientDefault: () => '{}')
          .withConverter<Map<String, dynamic>?>(
              $DataFormTemplateVersionsTable.$converterlabel);
  @override
  late final GeneratedColumnWithTypeConverter<List<Translation>, String>
      translations = GeneratedColumn<String>('translations', aliasedName, false,
              type: DriftSqlType.string,
              requiredDuringInsert: false,
              defaultValue: Constant('[]'))
          .withConverter<List<Translation>>(
              $DataFormTemplateVersionsTable.$convertertranslations);
  static const VerificationMeta _versionMeta =
      const VerificationMeta('version');
  @override
  late final GeneratedColumn<int> version = GeneratedColumn<int>(
      'version', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _defaultLocalMeta =
      const VerificationMeta('defaultLocal');
  @override
  late final GeneratedColumn<String> defaultLocal = GeneratedColumn<String>(
      'default_local', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumnWithTypeConverter<List<Template>, String> fields =
      GeneratedColumn<String>('fields', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<List<Template>>(
              $DataFormTemplateVersionsTable.$converterfields);
  @override
  late final GeneratedColumnWithTypeConverter<List<Template>, String> sections =
      GeneratedColumn<String>('sections', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<List<Template>>(
              $DataFormTemplateVersionsTable.$convertersections);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumnWithTypeConverter<ValidationStrategy?, String>
      validationStrategy = GeneratedColumn<String>(
              'validation_strategy', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<ValidationStrategy?>(
              $DataFormTemplateVersionsTable.$convertervalidationStrategyn);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        lastModifiedDate,
        createdDate,
        name,
        displayName,
        code,
        label,
        translations,
        version,
        defaultLocal,
        fields,
        sections,
        description,
        validationStrategy
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'data_form_template_versions';
  @override
  VerificationContext validateIntegrity(
      Insertable<DataFormTemplateVersion> instance,
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
    if (data.containsKey('version')) {
      context.handle(_versionMeta,
          version.isAcceptableOrUnknown(data['version']!, _versionMeta));
    } else if (isInserting) {
      context.missing(_versionMeta);
    }
    if (data.containsKey('default_local')) {
      context.handle(
          _defaultLocalMeta,
          defaultLocal.isAcceptableOrUnknown(
              data['default_local']!, _defaultLocalMeta));
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
  DataFormTemplateVersion map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DataFormTemplateVersion(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      lastModifiedDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}last_modified_date']),
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date']),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      displayName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}display_name']),
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code']),
      label: $DataFormTemplateVersionsTable.$converterlabel.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.string, data['${effectivePrefix}label'])),
      translations: $DataFormTemplateVersionsTable.$convertertranslations
          .fromSql(attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}translations'])!),
      version: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}version'])!,
      defaultLocal: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}default_local']),
      fields: $DataFormTemplateVersionsTable.$converterfields.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.string, data['${effectivePrefix}fields'])!),
      sections: $DataFormTemplateVersionsTable.$convertersections.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.string, data['${effectivePrefix}sections'])!),
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
      validationStrategy: $DataFormTemplateVersionsTable
          .$convertervalidationStrategyn
          .fromSql(attachedDatabase.typeMapping.read(DriftSqlType.string,
              data['${effectivePrefix}validation_strategy'])),
    );
  }

  @override
  $DataFormTemplateVersionsTable createAlias(String alias) {
    return $DataFormTemplateVersionsTable(attachedDatabase, alias);
  }

  static TypeConverter<Map<String, dynamic>?, String?> $converterlabel =
      const NullAwareMapConverter();
  static TypeConverter<List<Translation>, String> $convertertranslations =
      const TranslationConverter();
  static TypeConverter<List<Template>, String> $converterfields =
      const TemplateListConverter();
  static TypeConverter<List<Template>, String> $convertersections =
      const TemplateListConverter();
  static JsonTypeConverter2<ValidationStrategy, String, String>
      $convertervalidationStrategy =
      const EnumNameConverter(ValidationStrategy.values);
  static JsonTypeConverter2<ValidationStrategy?, String?, String?>
      $convertervalidationStrategyn =
      JsonTypeConverter2.asNullable($convertervalidationStrategy);
}

class DataFormTemplateVersion extends DataClass
    implements Insertable<DataFormTemplateVersion> {
  final String id;
  final DateTime? lastModifiedDate;
  final DateTime? createdDate;
  final String? name;
  final String? displayName;
  final String? code;
  final Map<String, dynamic>? label;

  /// List of Translations
  final List<Translation> translations;

  /// Version is an integer.
  final int version;

  /// Default locale.
  final String? defaultLocal;

  /// fieldsConf stored as IList<Template>, as JSON.
  final List<Template> fields;

  /// sections stored as IList<Template>, as JSON.
  final List<Template> sections;

  /// Description is nullable.
  final String? description;

  /// Validation strategy stored as text via a converter.
  final ValidationStrategy? validationStrategy;
  const DataFormTemplateVersion(
      {required this.id,
      this.lastModifiedDate,
      this.createdDate,
      this.name,
      this.displayName,
      this.code,
      this.label,
      required this.translations,
      required this.version,
      this.defaultLocal,
      required this.fields,
      required this.sections,
      this.description,
      this.validationStrategy});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    if (!nullToAbsent || lastModifiedDate != null) {
      map['last_modified_date'] = Variable<DateTime>(lastModifiedDate);
    }
    if (!nullToAbsent || createdDate != null) {
      map['created_date'] = Variable<DateTime>(createdDate);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || displayName != null) {
      map['display_name'] = Variable<String>(displayName);
    }
    if (!nullToAbsent || code != null) {
      map['code'] = Variable<String>(code);
    }
    if (!nullToAbsent || label != null) {
      map['label'] = Variable<String>(
          $DataFormTemplateVersionsTable.$converterlabel.toSql(label));
    }
    {
      map['translations'] = Variable<String>($DataFormTemplateVersionsTable
          .$convertertranslations
          .toSql(translations));
    }
    map['version'] = Variable<int>(version);
    if (!nullToAbsent || defaultLocal != null) {
      map['default_local'] = Variable<String>(defaultLocal);
    }
    {
      map['fields'] = Variable<String>(
          $DataFormTemplateVersionsTable.$converterfields.toSql(fields));
    }
    {
      map['sections'] = Variable<String>(
          $DataFormTemplateVersionsTable.$convertersections.toSql(sections));
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || validationStrategy != null) {
      map['validation_strategy'] = Variable<String>(
          $DataFormTemplateVersionsTable.$convertervalidationStrategyn
              .toSql(validationStrategy));
    }
    return map;
  }

  DataFormTemplateVersionsCompanion toCompanion(bool nullToAbsent) {
    return DataFormTemplateVersionsCompanion(
      id: Value(id),
      lastModifiedDate: lastModifiedDate == null && nullToAbsent
          ? const Value.absent()
          : Value(lastModifiedDate),
      createdDate: createdDate == null && nullToAbsent
          ? const Value.absent()
          : Value(createdDate),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      displayName: displayName == null && nullToAbsent
          ? const Value.absent()
          : Value(displayName),
      code: code == null && nullToAbsent ? const Value.absent() : Value(code),
      label:
          label == null && nullToAbsent ? const Value.absent() : Value(label),
      translations: Value(translations),
      version: Value(version),
      defaultLocal: defaultLocal == null && nullToAbsent
          ? const Value.absent()
          : Value(defaultLocal),
      fields: Value(fields),
      sections: Value(sections),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      validationStrategy: validationStrategy == null && nullToAbsent
          ? const Value.absent()
          : Value(validationStrategy),
    );
  }

  factory DataFormTemplateVersion.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DataFormTemplateVersion(
      id: serializer.fromJson<String>(json['id']),
      lastModifiedDate:
          serializer.fromJson<DateTime?>(json['lastModifiedDate']),
      createdDate: serializer.fromJson<DateTime?>(json['createdDate']),
      name: serializer.fromJson<String?>(json['name']),
      displayName: serializer.fromJson<String?>(json['displayName']),
      code: serializer.fromJson<String?>(json['code']),
      label: serializer.fromJson<Map<String, dynamic>?>(json['label']),
      translations:
          serializer.fromJson<List<Translation>>(json['translations']),
      version: serializer.fromJson<int>(json['version']),
      defaultLocal: serializer.fromJson<String?>(json['defaultLocal']),
      fields: serializer.fromJson<List<Template>>(json['fields']),
      sections: serializer.fromJson<List<Template>>(json['sections']),
      description: serializer.fromJson<String?>(json['description']),
      validationStrategy: $DataFormTemplateVersionsTable
          .$convertervalidationStrategyn
          .fromJson(serializer.fromJson<String?>(json['validationStrategy'])),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'lastModifiedDate': serializer.toJson<DateTime?>(lastModifiedDate),
      'createdDate': serializer.toJson<DateTime?>(createdDate),
      'name': serializer.toJson<String?>(name),
      'displayName': serializer.toJson<String?>(displayName),
      'code': serializer.toJson<String?>(code),
      'label': serializer.toJson<Map<String, dynamic>?>(label),
      'translations': serializer.toJson<List<Translation>>(translations),
      'version': serializer.toJson<int>(version),
      'defaultLocal': serializer.toJson<String?>(defaultLocal),
      'fields': serializer.toJson<List<Template>>(fields),
      'sections': serializer.toJson<List<Template>>(sections),
      'description': serializer.toJson<String?>(description),
      'validationStrategy': serializer.toJson<String?>(
          $DataFormTemplateVersionsTable.$convertervalidationStrategyn
              .toJson(validationStrategy)),
    };
  }

  DataFormTemplateVersion copyWith(
          {String? id,
          Value<DateTime?> lastModifiedDate = const Value.absent(),
          Value<DateTime?> createdDate = const Value.absent(),
          Value<String?> name = const Value.absent(),
          Value<String?> displayName = const Value.absent(),
          Value<String?> code = const Value.absent(),
          Value<Map<String, dynamic>?> label = const Value.absent(),
          List<Translation>? translations,
          int? version,
          Value<String?> defaultLocal = const Value.absent(),
          List<Template>? fields,
          List<Template>? sections,
          Value<String?> description = const Value.absent(),
          Value<ValidationStrategy?> validationStrategy =
              const Value.absent()}) =>
      DataFormTemplateVersion(
        id: id ?? this.id,
        lastModifiedDate: lastModifiedDate.present
            ? lastModifiedDate.value
            : this.lastModifiedDate,
        createdDate: createdDate.present ? createdDate.value : this.createdDate,
        name: name.present ? name.value : this.name,
        displayName: displayName.present ? displayName.value : this.displayName,
        code: code.present ? code.value : this.code,
        label: label.present ? label.value : this.label,
        translations: translations ?? this.translations,
        version: version ?? this.version,
        defaultLocal:
            defaultLocal.present ? defaultLocal.value : this.defaultLocal,
        fields: fields ?? this.fields,
        sections: sections ?? this.sections,
        description: description.present ? description.value : this.description,
        validationStrategy: validationStrategy.present
            ? validationStrategy.value
            : this.validationStrategy,
      );
  DataFormTemplateVersion copyWithCompanion(
      DataFormTemplateVersionsCompanion data) {
    return DataFormTemplateVersion(
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
      label: data.label.present ? data.label.value : this.label,
      translations: data.translations.present
          ? data.translations.value
          : this.translations,
      version: data.version.present ? data.version.value : this.version,
      defaultLocal: data.defaultLocal.present
          ? data.defaultLocal.value
          : this.defaultLocal,
      fields: data.fields.present ? data.fields.value : this.fields,
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
    return (StringBuffer('DataFormTemplateVersion(')
          ..write('id: $id, ')
          ..write('lastModifiedDate: $lastModifiedDate, ')
          ..write('createdDate: $createdDate, ')
          ..write('name: $name, ')
          ..write('displayName: $displayName, ')
          ..write('code: $code, ')
          ..write('label: $label, ')
          ..write('translations: $translations, ')
          ..write('version: $version, ')
          ..write('defaultLocal: $defaultLocal, ')
          ..write('fields: $fields, ')
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
      label,
      translations,
      version,
      defaultLocal,
      fields,
      sections,
      description,
      validationStrategy);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DataFormTemplateVersion &&
          other.id == this.id &&
          other.lastModifiedDate == this.lastModifiedDate &&
          other.createdDate == this.createdDate &&
          other.name == this.name &&
          other.displayName == this.displayName &&
          other.code == this.code &&
          other.label == this.label &&
          other.translations == this.translations &&
          other.version == this.version &&
          other.defaultLocal == this.defaultLocal &&
          other.fields == this.fields &&
          other.sections == this.sections &&
          other.description == this.description &&
          other.validationStrategy == this.validationStrategy);
}

class DataFormTemplateVersionsCompanion
    extends UpdateCompanion<DataFormTemplateVersion> {
  final Value<String> id;
  final Value<DateTime?> lastModifiedDate;
  final Value<DateTime?> createdDate;
  final Value<String?> name;
  final Value<String?> displayName;
  final Value<String?> code;
  final Value<Map<String, dynamic>?> label;
  final Value<List<Translation>> translations;
  final Value<int> version;
  final Value<String?> defaultLocal;
  final Value<List<Template>> fields;
  final Value<List<Template>> sections;
  final Value<String?> description;
  final Value<ValidationStrategy?> validationStrategy;
  final Value<int> rowid;
  const DataFormTemplateVersionsCompanion({
    this.id = const Value.absent(),
    this.lastModifiedDate = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.name = const Value.absent(),
    this.displayName = const Value.absent(),
    this.code = const Value.absent(),
    this.label = const Value.absent(),
    this.translations = const Value.absent(),
    this.version = const Value.absent(),
    this.defaultLocal = const Value.absent(),
    this.fields = const Value.absent(),
    this.sections = const Value.absent(),
    this.description = const Value.absent(),
    this.validationStrategy = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  DataFormTemplateVersionsCompanion.insert({
    required String id,
    this.lastModifiedDate = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.name = const Value.absent(),
    this.displayName = const Value.absent(),
    this.code = const Value.absent(),
    this.label = const Value.absent(),
    this.translations = const Value.absent(),
    required int version,
    this.defaultLocal = const Value.absent(),
    required List<Template> fields,
    required List<Template> sections,
    this.description = const Value.absent(),
    this.validationStrategy = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        version = Value(version),
        fields = Value(fields),
        sections = Value(sections);
  static Insertable<DataFormTemplateVersion> custom({
    Expression<String>? id,
    Expression<DateTime>? lastModifiedDate,
    Expression<DateTime>? createdDate,
    Expression<String>? name,
    Expression<String>? displayName,
    Expression<String>? code,
    Expression<String>? label,
    Expression<String>? translations,
    Expression<int>? version,
    Expression<String>? defaultLocal,
    Expression<String>? fields,
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
      if (label != null) 'label': label,
      if (translations != null) 'translations': translations,
      if (version != null) 'version': version,
      if (defaultLocal != null) 'default_local': defaultLocal,
      if (fields != null) 'fields': fields,
      if (sections != null) 'sections': sections,
      if (description != null) 'description': description,
      if (validationStrategy != null) 'validation_strategy': validationStrategy,
      if (rowid != null) 'rowid': rowid,
    });
  }

  DataFormTemplateVersionsCompanion copyWith(
      {Value<String>? id,
      Value<DateTime?>? lastModifiedDate,
      Value<DateTime?>? createdDate,
      Value<String?>? name,
      Value<String?>? displayName,
      Value<String?>? code,
      Value<Map<String, dynamic>?>? label,
      Value<List<Translation>>? translations,
      Value<int>? version,
      Value<String?>? defaultLocal,
      Value<List<Template>>? fields,
      Value<List<Template>>? sections,
      Value<String?>? description,
      Value<ValidationStrategy?>? validationStrategy,
      Value<int>? rowid}) {
    return DataFormTemplateVersionsCompanion(
      id: id ?? this.id,
      lastModifiedDate: lastModifiedDate ?? this.lastModifiedDate,
      createdDate: createdDate ?? this.createdDate,
      name: name ?? this.name,
      displayName: displayName ?? this.displayName,
      code: code ?? this.code,
      label: label ?? this.label,
      translations: translations ?? this.translations,
      version: version ?? this.version,
      defaultLocal: defaultLocal ?? this.defaultLocal,
      fields: fields ?? this.fields,
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
    if (label.present) {
      map['label'] = Variable<String>(
          $DataFormTemplateVersionsTable.$converterlabel.toSql(label.value));
    }
    if (translations.present) {
      map['translations'] = Variable<String>($DataFormTemplateVersionsTable
          .$convertertranslations
          .toSql(translations.value));
    }
    if (version.present) {
      map['version'] = Variable<int>(version.value);
    }
    if (defaultLocal.present) {
      map['default_local'] = Variable<String>(defaultLocal.value);
    }
    if (fields.present) {
      map['fields'] = Variable<String>(
          $DataFormTemplateVersionsTable.$converterfields.toSql(fields.value));
    }
    if (sections.present) {
      map['sections'] = Variable<String>($DataFormTemplateVersionsTable
          .$convertersections
          .toSql(sections.value));
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (validationStrategy.present) {
      map['validation_strategy'] = Variable<String>(
          $DataFormTemplateVersionsTable.$convertervalidationStrategyn
              .toSql(validationStrategy.value));
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DataFormTemplateVersionsCompanion(')
          ..write('id: $id, ')
          ..write('lastModifiedDate: $lastModifiedDate, ')
          ..write('createdDate: $createdDate, ')
          ..write('name: $name, ')
          ..write('displayName: $displayName, ')
          ..write('code: $code, ')
          ..write('label: $label, ')
          ..write('translations: $translations, ')
          ..write('version: $version, ')
          ..write('defaultLocal: $defaultLocal, ')
          ..write('fields: $fields, ')
          ..write('sections: $sections, ')
          ..write('description: $description, ')
          ..write('validationStrategy: $validationStrategy, ')
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
      GeneratedColumn<DateTime>('last_modified_date', aliasedName, true,
          type: DriftSqlType.dateTime,
          requiredDuringInsert: false,
          defaultValue: Constant(DateTime.now().toUtc()));
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, true,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: Constant(DateTime.now().toUtc()));
  static const VerificationMeta _deletedMeta =
      const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<bool> deleted = GeneratedColumn<bool>(
      'deleted', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("deleted" IN (0, 1))'),
      defaultValue: Constant(false));
  static const VerificationMeta _formMeta = const VerificationMeta('form');
  @override
  late final GeneratedColumn<String> form = GeneratedColumn<String>(
      'form', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES data_form_template_versions (id)'));
  static const VerificationMeta _assignmentMeta =
      const VerificationMeta('assignment');
  @override
  late final GeneratedColumn<String> assignment = GeneratedColumn<String>(
      'assignment', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES assignments (id)'));
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
      'org_unit', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES org_units (id)'));
  @override
  late final GeneratedColumnWithTypeConverter<AssignmentStatus?, String>
      progressStatus = GeneratedColumn<String>(
              'progress_status', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<AssignmentStatus?>(
              $DataSubmissionsTable.$converterprogressStatusn);
  @override
  late final GeneratedColumnWithTypeConverter<SubmissionStatus, String> status =
      GeneratedColumn<String>('status', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
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
          clientDefault: () => DateTime.now().toUtc());
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
  @override
  late final GeneratedColumnWithTypeConverter<Map<String, dynamic>?, String>
      formData = GeneratedColumn<String>('form_data', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<Map<String, dynamic>?>(
              $DataSubmissionsTable.$converterformData);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        lastModifiedDate,
        createdDate,
        deleted,
        form,
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
    } else if (isInserting) {
      context.missing(_formMeta);
    }
    if (data.containsKey('assignment')) {
      context.handle(
          _assignmentMeta,
          assignment.isAcceptableOrUnknown(
              data['assignment']!, _assignmentMeta));
    } else if (isInserting) {
      context.missing(_assignmentMeta);
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
    }
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
          DriftSqlType.dateTime, data['${effectivePrefix}last_modified_date']),
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date']),
      deleted: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}deleted'])!,
      form: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}form'])!,
      assignment: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}assignment'])!,
      team: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}team'])!,
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
      formData: $DataSubmissionsTable.$converterformData.fromSql(
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
  static TypeConverter<Map<String, dynamic>?, String?> $converterformData =
      const NullAwareMapConverter();
}

class DataSubmission extends DataClass implements Insertable<DataSubmission> {
  final String id;
  final DateTime? lastModifiedDate;
  final DateTime? createdDate;
  final bool deleted;

  /// Many-to-one references stored as text.
  final String form;

  /// Nullable assignment reference.
  final String assignment;

  /// Many-to-one references stored as text.
  final String team;

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
      this.lastModifiedDate,
      this.createdDate,
      required this.deleted,
      required this.form,
      required this.assignment,
      required this.team,
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
    if (!nullToAbsent || lastModifiedDate != null) {
      map['last_modified_date'] = Variable<DateTime>(lastModifiedDate);
    }
    if (!nullToAbsent || createdDate != null) {
      map['created_date'] = Variable<DateTime>(createdDate);
    }
    map['deleted'] = Variable<bool>(deleted);
    map['form'] = Variable<String>(form);
    map['assignment'] = Variable<String>(assignment);
    map['team'] = Variable<String>(team);
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
          $DataSubmissionsTable.$converterformData.toSql(formData));
    }
    return map;
  }

  DataSubmissionsCompanion toCompanion(bool nullToAbsent) {
    return DataSubmissionsCompanion(
      id: Value(id),
      lastModifiedDate: lastModifiedDate == null && nullToAbsent
          ? const Value.absent()
          : Value(lastModifiedDate),
      createdDate: createdDate == null && nullToAbsent
          ? const Value.absent()
          : Value(createdDate),
      deleted: Value(deleted),
      form: Value(form),
      assignment: Value(assignment),
      team: Value(team),
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
      lastModifiedDate:
          serializer.fromJson<DateTime?>(json['lastModifiedDate']),
      createdDate: serializer.fromJson<DateTime?>(json['createdDate']),
      deleted: serializer.fromJson<bool>(json['deleted']),
      form: serializer.fromJson<String>(json['form']),
      assignment: serializer.fromJson<String>(json['assignment']),
      team: serializer.fromJson<String>(json['team']),
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
      'lastModifiedDate': serializer.toJson<DateTime?>(lastModifiedDate),
      'createdDate': serializer.toJson<DateTime?>(createdDate),
      'deleted': serializer.toJson<bool>(deleted),
      'form': serializer.toJson<String>(form),
      'assignment': serializer.toJson<String>(assignment),
      'team': serializer.toJson<String>(team),
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
          Value<DateTime?> lastModifiedDate = const Value.absent(),
          Value<DateTime?> createdDate = const Value.absent(),
          bool? deleted,
          String? form,
          String? assignment,
          String? team,
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
        lastModifiedDate: lastModifiedDate.present
            ? lastModifiedDate.value
            : this.lastModifiedDate,
        createdDate: createdDate.present ? createdDate.value : this.createdDate,
        deleted: deleted ?? this.deleted,
        form: form ?? this.form,
        assignment: assignment ?? this.assignment,
        team: team ?? this.team,
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
  final Value<DateTime?> lastModifiedDate;
  final Value<DateTime?> createdDate;
  final Value<bool> deleted;
  final Value<String> form;
  final Value<String> assignment;
  final Value<String> team;
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
    required String form,
    required String assignment,
    required String team,
    this.orgUnit = const Value.absent(),
    this.progressStatus = const Value.absent(),
    required SubmissionStatus status,
    this.lastSyncDate = const Value.absent(),
    this.lastSyncMessage = const Value.absent(),
    this.startEntryTime = const Value.absent(),
    this.finishedEntryTime = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.formData = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        form = Value(form),
        assignment = Value(assignment),
        team = Value(team),
        status = Value(status);
  static Insertable<DataSubmission> custom({
    Expression<String>? id,
    Expression<DateTime>? lastModifiedDate,
    Expression<DateTime>? createdDate,
    Expression<bool>? deleted,
    Expression<String>? form,
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
      Value<DateTime?>? lastModifiedDate,
      Value<DateTime?>? createdDate,
      Value<bool>? deleted,
      Value<String>? form,
      Value<String>? assignment,
      Value<String>? team,
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
          $DataSubmissionsTable.$converterformData.toSql(formData.value));
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
      GeneratedColumn<DateTime>('last_modified_date', aliasedName, true,
          type: DriftSqlType.dateTime,
          requiredDuringInsert: false,
          defaultValue: Constant(DateTime.now().toUtc()));
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, true,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: Constant(DateTime.now().toUtc()));
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
          DriftSqlType.dateTime, data['${effectivePrefix}last_modified_date']),
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date']),
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
  final DateTime? lastModifiedDate;
  final DateTime? createdDate;

  /// Path of the Repeat in the FormTemplate (non-null)
  final String templatePath;
  final String submission;

  /// reference to nearest parent RepeatInstance (nullable)
  final String? parent;

  /// Repeat index for order and identity (non-null)
  final int repeatIndex;
  const RepeatInstance(
      {required this.id,
      this.lastModifiedDate,
      this.createdDate,
      required this.templatePath,
      required this.submission,
      this.parent,
      required this.repeatIndex});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    if (!nullToAbsent || lastModifiedDate != null) {
      map['last_modified_date'] = Variable<DateTime>(lastModifiedDate);
    }
    if (!nullToAbsent || createdDate != null) {
      map['created_date'] = Variable<DateTime>(createdDate);
    }
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
      lastModifiedDate: lastModifiedDate == null && nullToAbsent
          ? const Value.absent()
          : Value(lastModifiedDate),
      createdDate: createdDate == null && nullToAbsent
          ? const Value.absent()
          : Value(createdDate),
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
      lastModifiedDate:
          serializer.fromJson<DateTime?>(json['lastModifiedDate']),
      createdDate: serializer.fromJson<DateTime?>(json['createdDate']),
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
      'lastModifiedDate': serializer.toJson<DateTime?>(lastModifiedDate),
      'createdDate': serializer.toJson<DateTime?>(createdDate),
      'templatePath': serializer.toJson<String>(templatePath),
      'submission': serializer.toJson<String>(submission),
      'parent': serializer.toJson<String?>(parent),
      'repeatIndex': serializer.toJson<int>(repeatIndex),
    };
  }

  RepeatInstance copyWith(
          {String? id,
          Value<DateTime?> lastModifiedDate = const Value.absent(),
          Value<DateTime?> createdDate = const Value.absent(),
          String? templatePath,
          String? submission,
          Value<String?> parent = const Value.absent(),
          int? repeatIndex}) =>
      RepeatInstance(
        id: id ?? this.id,
        lastModifiedDate: lastModifiedDate.present
            ? lastModifiedDate.value
            : this.lastModifiedDate,
        createdDate: createdDate.present ? createdDate.value : this.createdDate,
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
  final Value<DateTime?> lastModifiedDate;
  final Value<DateTime?> createdDate;
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
      Value<DateTime?>? lastModifiedDate,
      Value<DateTime?>? createdDate,
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
      GeneratedColumn<DateTime>('last_modified_date', aliasedName, true,
          type: DriftSqlType.dateTime,
          requiredDuringInsert: false,
          defaultValue: Constant(DateTime.now().toUtc()));
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, true,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: Constant(DateTime.now().toUtc()));
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
  @override
  late final GeneratedColumnWithTypeConverter<Map<String, dynamic>?, String>
      label = GeneratedColumn<String>('label', aliasedName, true,
              type: DriftSqlType.string,
              requiredDuringInsert: false,
              clientDefault: () => '{}')
          .withConverter<Map<String, dynamic>?>(
              $DataElementsTable.$converterlabel);
  @override
  late final GeneratedColumnWithTypeConverter<List<Translation>, String>
      translations = GeneratedColumn<String>('translations', aliasedName, false,
              type: DriftSqlType.string,
              requiredDuringInsert: false,
              defaultValue: Constant('[]'))
          .withConverter<List<Translation>>(
              $DataElementsTable.$convertertranslations);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  late final GeneratedColumnWithTypeConverter<ValueType, String> type =
      GeneratedColumn<String>('type', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<ValueType>($DataElementsTable.$convertertype);
  static const VerificationMeta _mandatoryMeta =
      const VerificationMeta('mandatory');
  @override
  late final GeneratedColumn<bool> mandatory = GeneratedColumn<bool>(
      'mandatory', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("mandatory" IN (0, 1))'));
  static const VerificationMeta _defaultValueMeta =
      const VerificationMeta('defaultValue');
  @override
  late final GeneratedColumn<String> defaultValue = GeneratedColumn<String>(
      'default_value', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
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
      'gs1_enabled', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("gs1_enabled" IN (0, 1))'));
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
        label,
        translations,
        description,
        type,
        mandatory,
        defaultValue,
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
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
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
    if (data.containsKey('gs1_enabled')) {
      context.handle(
          _gs1EnabledMeta,
          gs1Enabled.isAcceptableOrUnknown(
              data['gs1_enabled']!, _gs1EnabledMeta));
    }
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
          DriftSqlType.dateTime, data['${effectivePrefix}last_modified_date']),
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date']),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      displayName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}display_name']),
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code']),
      label: $DataElementsTable.$converterlabel.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}label'])),
      translations: $DataElementsTable.$convertertranslations.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}translations'])!),
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
      type: $DataElementsTable.$convertertype.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type'])!),
      mandatory: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}mandatory']),
      defaultValue: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}default_value']),
      scannedCodeProperties: $DataElementsTable.$converterscannedCodeProperties
          .fromSql(attachedDatabase.typeMapping.read(DriftSqlType.string,
              data['${effectivePrefix}scanned_code_properties'])),
      gs1Enabled: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}gs1_enabled']),
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

  static TypeConverter<Map<String, dynamic>?, String?> $converterlabel =
      const NullAwareMapConverter();
  static TypeConverter<List<Translation>, String> $convertertranslations =
      const TranslationConverter();
  static JsonTypeConverter2<ValueType, String, String> $convertertype =
      const EnumNameConverter(ValueType.values);
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
  final DateTime? lastModifiedDate;
  final DateTime? createdDate;
  final String? name;
  final String? displayName;
  final String? code;
  final Map<String, dynamic>? label;

  /// List of Translations
  final List<Translation> translations;
  final String? description;
  final ValueType type;

  /// Mandatory flag, defaulting to false.
  final bool? mandatory;

  /// defaultValue stored as text (adjust converter if needed).
  final String? defaultValue;

  /// scannedCodeProperties is stored as JSON.
  final ScannedCodeProperties? scannedCodeProperties;

  /// gs1Enabled flag, defaulting to false.
  final bool? gs1Enabled;

  /// resourceType stored as text; we convert between MetadataResourceType and String.
  final MetadataResourceType? resourceType;

  /// resourceMetadataSchema stored as text.
  final String? resourceMetadataSchema;
  const DataElement(
      {required this.id,
      this.lastModifiedDate,
      this.createdDate,
      this.name,
      this.displayName,
      this.code,
      this.label,
      required this.translations,
      this.description,
      required this.type,
      this.mandatory,
      this.defaultValue,
      this.scannedCodeProperties,
      this.gs1Enabled,
      this.resourceType,
      this.resourceMetadataSchema});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    if (!nullToAbsent || lastModifiedDate != null) {
      map['last_modified_date'] = Variable<DateTime>(lastModifiedDate);
    }
    if (!nullToAbsent || createdDate != null) {
      map['created_date'] = Variable<DateTime>(createdDate);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || displayName != null) {
      map['display_name'] = Variable<String>(displayName);
    }
    if (!nullToAbsent || code != null) {
      map['code'] = Variable<String>(code);
    }
    if (!nullToAbsent || label != null) {
      map['label'] =
          Variable<String>($DataElementsTable.$converterlabel.toSql(label));
    }
    {
      map['translations'] = Variable<String>(
          $DataElementsTable.$convertertranslations.toSql(translations));
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    {
      map['type'] =
          Variable<String>($DataElementsTable.$convertertype.toSql(type));
    }
    if (!nullToAbsent || mandatory != null) {
      map['mandatory'] = Variable<bool>(mandatory);
    }
    if (!nullToAbsent || defaultValue != null) {
      map['default_value'] = Variable<String>(defaultValue);
    }
    if (!nullToAbsent || scannedCodeProperties != null) {
      map['scanned_code_properties'] = Variable<String>($DataElementsTable
          .$converterscannedCodeProperties
          .toSql(scannedCodeProperties));
    }
    if (!nullToAbsent || gs1Enabled != null) {
      map['gs1_enabled'] = Variable<bool>(gs1Enabled);
    }
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
      lastModifiedDate: lastModifiedDate == null && nullToAbsent
          ? const Value.absent()
          : Value(lastModifiedDate),
      createdDate: createdDate == null && nullToAbsent
          ? const Value.absent()
          : Value(createdDate),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      displayName: displayName == null && nullToAbsent
          ? const Value.absent()
          : Value(displayName),
      code: code == null && nullToAbsent ? const Value.absent() : Value(code),
      label:
          label == null && nullToAbsent ? const Value.absent() : Value(label),
      translations: Value(translations),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      type: Value(type),
      mandatory: mandatory == null && nullToAbsent
          ? const Value.absent()
          : Value(mandatory),
      defaultValue: defaultValue == null && nullToAbsent
          ? const Value.absent()
          : Value(defaultValue),
      scannedCodeProperties: scannedCodeProperties == null && nullToAbsent
          ? const Value.absent()
          : Value(scannedCodeProperties),
      gs1Enabled: gs1Enabled == null && nullToAbsent
          ? const Value.absent()
          : Value(gs1Enabled),
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
      lastModifiedDate:
          serializer.fromJson<DateTime?>(json['lastModifiedDate']),
      createdDate: serializer.fromJson<DateTime?>(json['createdDate']),
      name: serializer.fromJson<String?>(json['name']),
      displayName: serializer.fromJson<String?>(json['displayName']),
      code: serializer.fromJson<String?>(json['code']),
      label: serializer.fromJson<Map<String, dynamic>?>(json['label']),
      translations:
          serializer.fromJson<List<Translation>>(json['translations']),
      description: serializer.fromJson<String?>(json['description']),
      type: $DataElementsTable.$convertertype
          .fromJson(serializer.fromJson<String>(json['type'])),
      mandatory: serializer.fromJson<bool?>(json['mandatory']),
      defaultValue: serializer.fromJson<String?>(json['defaultValue']),
      scannedCodeProperties: $DataElementsTable.$converterscannedCodeProperties
          .fromJson(serializer
              .fromJson<Map<String, Object?>?>(json['scannedCodeProperties'])),
      gs1Enabled: serializer.fromJson<bool?>(json['gs1Enabled']),
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
      'lastModifiedDate': serializer.toJson<DateTime?>(lastModifiedDate),
      'createdDate': serializer.toJson<DateTime?>(createdDate),
      'name': serializer.toJson<String?>(name),
      'displayName': serializer.toJson<String?>(displayName),
      'code': serializer.toJson<String?>(code),
      'label': serializer.toJson<Map<String, dynamic>?>(label),
      'translations': serializer.toJson<List<Translation>>(translations),
      'description': serializer.toJson<String?>(description),
      'type': serializer
          .toJson<String>($DataElementsTable.$convertertype.toJson(type)),
      'mandatory': serializer.toJson<bool?>(mandatory),
      'defaultValue': serializer.toJson<String?>(defaultValue),
      'scannedCodeProperties': serializer.toJson<Map<String, Object?>?>(
          $DataElementsTable.$converterscannedCodeProperties
              .toJson(scannedCodeProperties)),
      'gs1Enabled': serializer.toJson<bool?>(gs1Enabled),
      'resourceType': serializer.toJson<String?>(
          $DataElementsTable.$converterresourceTypen.toJson(resourceType)),
      'resourceMetadataSchema':
          serializer.toJson<String?>(resourceMetadataSchema),
    };
  }

  DataElement copyWith(
          {String? id,
          Value<DateTime?> lastModifiedDate = const Value.absent(),
          Value<DateTime?> createdDate = const Value.absent(),
          Value<String?> name = const Value.absent(),
          Value<String?> displayName = const Value.absent(),
          Value<String?> code = const Value.absent(),
          Value<Map<String, dynamic>?> label = const Value.absent(),
          List<Translation>? translations,
          Value<String?> description = const Value.absent(),
          ValueType? type,
          Value<bool?> mandatory = const Value.absent(),
          Value<String?> defaultValue = const Value.absent(),
          Value<ScannedCodeProperties?> scannedCodeProperties =
              const Value.absent(),
          Value<bool?> gs1Enabled = const Value.absent(),
          Value<MetadataResourceType?> resourceType = const Value.absent(),
          Value<String?> resourceMetadataSchema = const Value.absent()}) =>
      DataElement(
        id: id ?? this.id,
        lastModifiedDate: lastModifiedDate.present
            ? lastModifiedDate.value
            : this.lastModifiedDate,
        createdDate: createdDate.present ? createdDate.value : this.createdDate,
        name: name.present ? name.value : this.name,
        displayName: displayName.present ? displayName.value : this.displayName,
        code: code.present ? code.value : this.code,
        label: label.present ? label.value : this.label,
        translations: translations ?? this.translations,
        description: description.present ? description.value : this.description,
        type: type ?? this.type,
        mandatory: mandatory.present ? mandatory.value : this.mandatory,
        defaultValue:
            defaultValue.present ? defaultValue.value : this.defaultValue,
        scannedCodeProperties: scannedCodeProperties.present
            ? scannedCodeProperties.value
            : this.scannedCodeProperties,
        gs1Enabled: gs1Enabled.present ? gs1Enabled.value : this.gs1Enabled,
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
      label: data.label.present ? data.label.value : this.label,
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
          ..write('label: $label, ')
          ..write('translations: $translations, ')
          ..write('description: $description, ')
          ..write('type: $type, ')
          ..write('mandatory: $mandatory, ')
          ..write('defaultValue: $defaultValue, ')
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
      label,
      translations,
      description,
      type,
      mandatory,
      defaultValue,
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
          other.label == this.label &&
          other.translations == this.translations &&
          other.description == this.description &&
          other.type == this.type &&
          other.mandatory == this.mandatory &&
          other.defaultValue == this.defaultValue &&
          other.scannedCodeProperties == this.scannedCodeProperties &&
          other.gs1Enabled == this.gs1Enabled &&
          other.resourceType == this.resourceType &&
          other.resourceMetadataSchema == this.resourceMetadataSchema);
}

class DataElementsCompanion extends UpdateCompanion<DataElement> {
  final Value<String> id;
  final Value<DateTime?> lastModifiedDate;
  final Value<DateTime?> createdDate;
  final Value<String?> name;
  final Value<String?> displayName;
  final Value<String?> code;
  final Value<Map<String, dynamic>?> label;
  final Value<List<Translation>> translations;
  final Value<String?> description;
  final Value<ValueType> type;
  final Value<bool?> mandatory;
  final Value<String?> defaultValue;
  final Value<ScannedCodeProperties?> scannedCodeProperties;
  final Value<bool?> gs1Enabled;
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
    this.label = const Value.absent(),
    this.translations = const Value.absent(),
    this.description = const Value.absent(),
    this.type = const Value.absent(),
    this.mandatory = const Value.absent(),
    this.defaultValue = const Value.absent(),
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
    this.label = const Value.absent(),
    this.translations = const Value.absent(),
    this.description = const Value.absent(),
    required ValueType type,
    this.mandatory = const Value.absent(),
    this.defaultValue = const Value.absent(),
    this.scannedCodeProperties = const Value.absent(),
    this.gs1Enabled = const Value.absent(),
    this.resourceType = const Value.absent(),
    this.resourceMetadataSchema = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        type = Value(type);
  static Insertable<DataElement> custom({
    Expression<String>? id,
    Expression<DateTime>? lastModifiedDate,
    Expression<DateTime>? createdDate,
    Expression<String>? name,
    Expression<String>? displayName,
    Expression<String>? code,
    Expression<String>? label,
    Expression<String>? translations,
    Expression<String>? description,
    Expression<String>? type,
    Expression<bool>? mandatory,
    Expression<String>? defaultValue,
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
      if (label != null) 'label': label,
      if (translations != null) 'translations': translations,
      if (description != null) 'description': description,
      if (type != null) 'type': type,
      if (mandatory != null) 'mandatory': mandatory,
      if (defaultValue != null) 'default_value': defaultValue,
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
      Value<DateTime?>? lastModifiedDate,
      Value<DateTime?>? createdDate,
      Value<String?>? name,
      Value<String?>? displayName,
      Value<String?>? code,
      Value<Map<String, dynamic>?>? label,
      Value<List<Translation>>? translations,
      Value<String?>? description,
      Value<ValueType>? type,
      Value<bool?>? mandatory,
      Value<String?>? defaultValue,
      Value<ScannedCodeProperties?>? scannedCodeProperties,
      Value<bool?>? gs1Enabled,
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
      label: label ?? this.label,
      translations: translations ?? this.translations,
      description: description ?? this.description,
      type: type ?? this.type,
      mandatory: mandatory ?? this.mandatory,
      defaultValue: defaultValue ?? this.defaultValue,
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
    if (label.present) {
      map['label'] = Variable<String>(
          $DataElementsTable.$converterlabel.toSql(label.value));
    }
    if (translations.present) {
      map['translations'] = Variable<String>(
          $DataElementsTable.$convertertranslations.toSql(translations.value));
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (type.present) {
      map['type'] =
          Variable<String>($DataElementsTable.$convertertype.toSql(type.value));
    }
    if (mandatory.present) {
      map['mandatory'] = Variable<bool>(mandatory.value);
    }
    if (defaultValue.present) {
      map['default_value'] = Variable<String>(defaultValue.value);
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
          ..write('label: $label, ')
          ..write('translations: $translations, ')
          ..write('description: $description, ')
          ..write('type: $type, ')
          ..write('mandatory: $mandatory, ')
          ..write('defaultValue: $defaultValue, ')
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
      GeneratedColumn<DateTime>('last_modified_date', aliasedName, true,
          type: DriftSqlType.dateTime,
          requiredDuringInsert: false,
          defaultValue: Constant(DateTime.now().toUtc()));
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, true,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: Constant(DateTime.now().toUtc()));
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
          DriftSqlType.dateTime, data['${effectivePrefix}last_modified_date']),
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date']),
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
  final DateTime? lastModifiedDate;
  final DateTime? createdDate;

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
      this.lastModifiedDate,
      this.createdDate,
      required this.templatePath,
      this.parent,
      required this.submission,
      required this.dataElement,
      this.value});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    if (!nullToAbsent || lastModifiedDate != null) {
      map['last_modified_date'] = Variable<DateTime>(lastModifiedDate);
    }
    if (!nullToAbsent || createdDate != null) {
      map['created_date'] = Variable<DateTime>(createdDate);
    }
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
      lastModifiedDate: lastModifiedDate == null && nullToAbsent
          ? const Value.absent()
          : Value(lastModifiedDate),
      createdDate: createdDate == null && nullToAbsent
          ? const Value.absent()
          : Value(createdDate),
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
      lastModifiedDate:
          serializer.fromJson<DateTime?>(json['lastModifiedDate']),
      createdDate: serializer.fromJson<DateTime?>(json['createdDate']),
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
      'lastModifiedDate': serializer.toJson<DateTime?>(lastModifiedDate),
      'createdDate': serializer.toJson<DateTime?>(createdDate),
      'templatePath': serializer.toJson<String>(templatePath),
      'parent': serializer.toJson<String?>(parent),
      'submission': serializer.toJson<String>(submission),
      'dataElement': serializer.toJson<String>(dataElement),
      'value': serializer.toJson<String?>(value),
    };
  }

  DataValue copyWith(
          {String? id,
          Value<DateTime?> lastModifiedDate = const Value.absent(),
          Value<DateTime?> createdDate = const Value.absent(),
          String? templatePath,
          Value<String?> parent = const Value.absent(),
          String? submission,
          String? dataElement,
          Value<String?> value = const Value.absent()}) =>
      DataValue(
        id: id ?? this.id,
        lastModifiedDate: lastModifiedDate.present
            ? lastModifiedDate.value
            : this.lastModifiedDate,
        createdDate: createdDate.present ? createdDate.value : this.createdDate,
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
  final Value<DateTime?> lastModifiedDate;
  final Value<DateTime?> createdDate;
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
      Value<DateTime?>? lastModifiedDate,
      Value<DateTime?>? createdDate,
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
      GeneratedColumn<DateTime>('last_modified_date', aliasedName, true,
          type: DriftSqlType.dateTime,
          requiredDuringInsert: false,
          defaultValue: Constant(DateTime.now().toUtc()));
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, true,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: Constant(DateTime.now().toUtc()));
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
  @override
  late final GeneratedColumnWithTypeConverter<Map<String, dynamic>?, String>
      label = GeneratedColumn<String>('label', aliasedName, true,
              type: DriftSqlType.string,
              requiredDuringInsert: false,
              clientDefault: () => '{}')
          .withConverter<Map<String, dynamic>?>(
              $DataOptionSetsTable.$converterlabel);
  @override
  late final GeneratedColumnWithTypeConverter<List<Translation>, String>
      translations = GeneratedColumn<String>('translations', aliasedName, false,
              type: DriftSqlType.string,
              requiredDuringInsert: false,
              defaultValue: Constant('[]'))
          .withConverter<List<Translation>>(
              $DataOptionSetsTable.$convertertranslations);
  @override
  late final GeneratedColumnWithTypeConverter<List<FormOption>, String>
      options = GeneratedColumn<String>('options', aliasedName, false,
              type: DriftSqlType.string,
              requiredDuringInsert: false,
              clientDefault: () => '[]')
          .withConverter<List<FormOption>>(
              $DataOptionSetsTable.$converteroptions);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        lastModifiedDate,
        createdDate,
        name,
        displayName,
        code,
        label,
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
          DriftSqlType.dateTime, data['${effectivePrefix}last_modified_date']),
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date']),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      displayName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}display_name']),
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code']),
      label: $DataOptionSetsTable.$converterlabel.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}label'])),
      translations: $DataOptionSetsTable.$convertertranslations.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}translations'])!),
      options: $DataOptionSetsTable.$converteroptions.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}options'])!),
    );
  }

  @override
  $DataOptionSetsTable createAlias(String alias) {
    return $DataOptionSetsTable(attachedDatabase, alias);
  }

  static TypeConverter<Map<String, dynamic>?, String?> $converterlabel =
      const NullAwareMapConverter();
  static TypeConverter<List<Translation>, String> $convertertranslations =
      const TranslationConverter();
  static TypeConverter<List<FormOption>, String> $converteroptions =
      const FormOptionListConverter();
}

class DataOptionSet extends DataClass implements Insertable<DataOptionSet> {
  final String id;
  final DateTime? lastModifiedDate;
  final DateTime? createdDate;
  final String? name;
  final String? displayName;
  final String? code;
  final Map<String, dynamic>? label;

  /// List of Translations
  final List<Translation> translations;
  final List<FormOption> options;
  const DataOptionSet(
      {required this.id,
      this.lastModifiedDate,
      this.createdDate,
      this.name,
      this.displayName,
      this.code,
      this.label,
      required this.translations,
      required this.options});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    if (!nullToAbsent || lastModifiedDate != null) {
      map['last_modified_date'] = Variable<DateTime>(lastModifiedDate);
    }
    if (!nullToAbsent || createdDate != null) {
      map['created_date'] = Variable<DateTime>(createdDate);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || displayName != null) {
      map['display_name'] = Variable<String>(displayName);
    }
    if (!nullToAbsent || code != null) {
      map['code'] = Variable<String>(code);
    }
    if (!nullToAbsent || label != null) {
      map['label'] =
          Variable<String>($DataOptionSetsTable.$converterlabel.toSql(label));
    }
    {
      map['translations'] = Variable<String>(
          $DataOptionSetsTable.$convertertranslations.toSql(translations));
    }
    {
      map['options'] = Variable<String>(
          $DataOptionSetsTable.$converteroptions.toSql(options));
    }
    return map;
  }

  DataOptionSetsCompanion toCompanion(bool nullToAbsent) {
    return DataOptionSetsCompanion(
      id: Value(id),
      lastModifiedDate: lastModifiedDate == null && nullToAbsent
          ? const Value.absent()
          : Value(lastModifiedDate),
      createdDate: createdDate == null && nullToAbsent
          ? const Value.absent()
          : Value(createdDate),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      displayName: displayName == null && nullToAbsent
          ? const Value.absent()
          : Value(displayName),
      code: code == null && nullToAbsent ? const Value.absent() : Value(code),
      label:
          label == null && nullToAbsent ? const Value.absent() : Value(label),
      translations: Value(translations),
      options: Value(options),
    );
  }

  factory DataOptionSet.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DataOptionSet(
      id: serializer.fromJson<String>(json['id']),
      lastModifiedDate:
          serializer.fromJson<DateTime?>(json['lastModifiedDate']),
      createdDate: serializer.fromJson<DateTime?>(json['createdDate']),
      name: serializer.fromJson<String?>(json['name']),
      displayName: serializer.fromJson<String?>(json['displayName']),
      code: serializer.fromJson<String?>(json['code']),
      label: serializer.fromJson<Map<String, dynamic>?>(json['label']),
      translations:
          serializer.fromJson<List<Translation>>(json['translations']),
      options: serializer.fromJson<List<FormOption>>(json['options']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'lastModifiedDate': serializer.toJson<DateTime?>(lastModifiedDate),
      'createdDate': serializer.toJson<DateTime?>(createdDate),
      'name': serializer.toJson<String?>(name),
      'displayName': serializer.toJson<String?>(displayName),
      'code': serializer.toJson<String?>(code),
      'label': serializer.toJson<Map<String, dynamic>?>(label),
      'translations': serializer.toJson<List<Translation>>(translations),
      'options': serializer.toJson<List<FormOption>>(options),
    };
  }

  DataOptionSet copyWith(
          {String? id,
          Value<DateTime?> lastModifiedDate = const Value.absent(),
          Value<DateTime?> createdDate = const Value.absent(),
          Value<String?> name = const Value.absent(),
          Value<String?> displayName = const Value.absent(),
          Value<String?> code = const Value.absent(),
          Value<Map<String, dynamic>?> label = const Value.absent(),
          List<Translation>? translations,
          List<FormOption>? options}) =>
      DataOptionSet(
        id: id ?? this.id,
        lastModifiedDate: lastModifiedDate.present
            ? lastModifiedDate.value
            : this.lastModifiedDate,
        createdDate: createdDate.present ? createdDate.value : this.createdDate,
        name: name.present ? name.value : this.name,
        displayName: displayName.present ? displayName.value : this.displayName,
        code: code.present ? code.value : this.code,
        label: label.present ? label.value : this.label,
        translations: translations ?? this.translations,
        options: options ?? this.options,
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
      label: data.label.present ? data.label.value : this.label,
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
          ..write('label: $label, ')
          ..write('translations: $translations, ')
          ..write('options: $options')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, lastModifiedDate, createdDate, name,
      displayName, code, label, translations, options);
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
          other.label == this.label &&
          other.translations == this.translations &&
          other.options == this.options);
}

class DataOptionSetsCompanion extends UpdateCompanion<DataOptionSet> {
  final Value<String> id;
  final Value<DateTime?> lastModifiedDate;
  final Value<DateTime?> createdDate;
  final Value<String?> name;
  final Value<String?> displayName;
  final Value<String?> code;
  final Value<Map<String, dynamic>?> label;
  final Value<List<Translation>> translations;
  final Value<List<FormOption>> options;
  final Value<int> rowid;
  const DataOptionSetsCompanion({
    this.id = const Value.absent(),
    this.lastModifiedDate = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.name = const Value.absent(),
    this.displayName = const Value.absent(),
    this.code = const Value.absent(),
    this.label = const Value.absent(),
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
    this.label = const Value.absent(),
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
    Expression<String>? label,
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
      if (label != null) 'label': label,
      if (translations != null) 'translations': translations,
      if (options != null) 'options': options,
      if (rowid != null) 'rowid': rowid,
    });
  }

  DataOptionSetsCompanion copyWith(
      {Value<String>? id,
      Value<DateTime?>? lastModifiedDate,
      Value<DateTime?>? createdDate,
      Value<String?>? name,
      Value<String?>? displayName,
      Value<String?>? code,
      Value<Map<String, dynamic>?>? label,
      Value<List<Translation>>? translations,
      Value<List<FormOption>>? options,
      Value<int>? rowid}) {
    return DataOptionSetsCompanion(
      id: id ?? this.id,
      lastModifiedDate: lastModifiedDate ?? this.lastModifiedDate,
      createdDate: createdDate ?? this.createdDate,
      name: name ?? this.name,
      displayName: displayName ?? this.displayName,
      code: code ?? this.code,
      label: label ?? this.label,
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
    if (label.present) {
      map['label'] = Variable<String>(
          $DataOptionSetsTable.$converterlabel.toSql(label.value));
    }
    if (translations.present) {
      map['translations'] = Variable<String>($DataOptionSetsTable
          .$convertertranslations
          .toSql(translations.value));
    }
    if (options.present) {
      map['options'] = Variable<String>(
          $DataOptionSetsTable.$converteroptions.toSql(options.value));
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
          ..write('label: $label, ')
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
      GeneratedColumn<DateTime>('last_modified_date', aliasedName, true,
          type: DriftSqlType.dateTime,
          requiredDuringInsert: false,
          defaultValue: Constant(DateTime.now().toUtc()));
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, true,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: Constant(DateTime.now().toUtc()));
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
  @override
  late final GeneratedColumnWithTypeConverter<Map<String, dynamic>?, String>
      label = GeneratedColumn<String>('label', aliasedName, true,
              type: DriftSqlType.string,
              requiredDuringInsert: false,
              clientDefault: () => '{}')
          .withConverter<Map<String, dynamic>?>(
              $DataOptionsTable.$converterlabel);
  @override
  late final GeneratedColumnWithTypeConverter<List<Translation>, String>
      translations = GeneratedColumn<String>('translations', aliasedName, false,
              type: DriftSqlType.string,
              requiredDuringInsert: false,
              defaultValue: Constant('[]'))
          .withConverter<List<Translation>>(
              $DataOptionsTable.$convertertranslations);
  static const VerificationMeta _optionSetMeta =
      const VerificationMeta('optionSet');
  @override
  late final GeneratedColumn<String> optionSet = GeneratedColumn<String>(
      'option_set', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES data_option_sets (id)'));
  static const VerificationMeta _orderMeta = const VerificationMeta('order');
  @override
  late final GeneratedColumn<int> order = GeneratedColumn<int>(
      'order', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: Constant(0));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        lastModifiedDate,
        createdDate,
        name,
        displayName,
        code,
        label,
        translations,
        optionSet,
        order
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
    if (data.containsKey('option_set')) {
      context.handle(_optionSetMeta,
          optionSet.isAcceptableOrUnknown(data['option_set']!, _optionSetMeta));
    } else if (isInserting) {
      context.missing(_optionSetMeta);
    }
    if (data.containsKey('order')) {
      context.handle(
          _orderMeta, order.isAcceptableOrUnknown(data['order']!, _orderMeta));
    }
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
          DriftSqlType.dateTime, data['${effectivePrefix}last_modified_date']),
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date']),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      displayName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}display_name']),
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code']),
      label: $DataOptionsTable.$converterlabel.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}label'])),
      translations: $DataOptionsTable.$convertertranslations.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}translations'])!),
      optionSet: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}option_set'])!,
      order: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}order'])!,
    );
  }

  @override
  $DataOptionsTable createAlias(String alias) {
    return $DataOptionsTable(attachedDatabase, alias);
  }

  static TypeConverter<Map<String, dynamic>?, String?> $converterlabel =
      const NullAwareMapConverter();
  static TypeConverter<List<Translation>, String> $convertertranslations =
      const TranslationConverter();
}

class DataOption extends DataClass implements Insertable<DataOption> {
  final String id;
  final DateTime? lastModifiedDate;
  final DateTime? createdDate;
  final String? name;
  final String? displayName;
  final String? code;
  final Map<String, dynamic>? label;

  /// List of Translations
  final List<Translation> translations;
  final String optionSet;
  final int order;
  const DataOption(
      {required this.id,
      this.lastModifiedDate,
      this.createdDate,
      this.name,
      this.displayName,
      this.code,
      this.label,
      required this.translations,
      required this.optionSet,
      required this.order});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    if (!nullToAbsent || lastModifiedDate != null) {
      map['last_modified_date'] = Variable<DateTime>(lastModifiedDate);
    }
    if (!nullToAbsent || createdDate != null) {
      map['created_date'] = Variable<DateTime>(createdDate);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || displayName != null) {
      map['display_name'] = Variable<String>(displayName);
    }
    if (!nullToAbsent || code != null) {
      map['code'] = Variable<String>(code);
    }
    if (!nullToAbsent || label != null) {
      map['label'] =
          Variable<String>($DataOptionsTable.$converterlabel.toSql(label));
    }
    {
      map['translations'] = Variable<String>(
          $DataOptionsTable.$convertertranslations.toSql(translations));
    }
    map['option_set'] = Variable<String>(optionSet);
    map['order'] = Variable<int>(order);
    return map;
  }

  DataOptionsCompanion toCompanion(bool nullToAbsent) {
    return DataOptionsCompanion(
      id: Value(id),
      lastModifiedDate: lastModifiedDate == null && nullToAbsent
          ? const Value.absent()
          : Value(lastModifiedDate),
      createdDate: createdDate == null && nullToAbsent
          ? const Value.absent()
          : Value(createdDate),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      displayName: displayName == null && nullToAbsent
          ? const Value.absent()
          : Value(displayName),
      code: code == null && nullToAbsent ? const Value.absent() : Value(code),
      label:
          label == null && nullToAbsent ? const Value.absent() : Value(label),
      translations: Value(translations),
      optionSet: Value(optionSet),
      order: Value(order),
    );
  }

  factory DataOption.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DataOption(
      id: serializer.fromJson<String>(json['id']),
      lastModifiedDate:
          serializer.fromJson<DateTime?>(json['lastModifiedDate']),
      createdDate: serializer.fromJson<DateTime?>(json['createdDate']),
      name: serializer.fromJson<String?>(json['name']),
      displayName: serializer.fromJson<String?>(json['displayName']),
      code: serializer.fromJson<String?>(json['code']),
      label: serializer.fromJson<Map<String, dynamic>?>(json['label']),
      translations:
          serializer.fromJson<List<Translation>>(json['translations']),
      optionSet: serializer.fromJson<String>(json['optionSet']),
      order: serializer.fromJson<int>(json['order']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'lastModifiedDate': serializer.toJson<DateTime?>(lastModifiedDate),
      'createdDate': serializer.toJson<DateTime?>(createdDate),
      'name': serializer.toJson<String?>(name),
      'displayName': serializer.toJson<String?>(displayName),
      'code': serializer.toJson<String?>(code),
      'label': serializer.toJson<Map<String, dynamic>?>(label),
      'translations': serializer.toJson<List<Translation>>(translations),
      'optionSet': serializer.toJson<String>(optionSet),
      'order': serializer.toJson<int>(order),
    };
  }

  DataOption copyWith(
          {String? id,
          Value<DateTime?> lastModifiedDate = const Value.absent(),
          Value<DateTime?> createdDate = const Value.absent(),
          Value<String?> name = const Value.absent(),
          Value<String?> displayName = const Value.absent(),
          Value<String?> code = const Value.absent(),
          Value<Map<String, dynamic>?> label = const Value.absent(),
          List<Translation>? translations,
          String? optionSet,
          int? order}) =>
      DataOption(
        id: id ?? this.id,
        lastModifiedDate: lastModifiedDate.present
            ? lastModifiedDate.value
            : this.lastModifiedDate,
        createdDate: createdDate.present ? createdDate.value : this.createdDate,
        name: name.present ? name.value : this.name,
        displayName: displayName.present ? displayName.value : this.displayName,
        code: code.present ? code.value : this.code,
        label: label.present ? label.value : this.label,
        translations: translations ?? this.translations,
        optionSet: optionSet ?? this.optionSet,
        order: order ?? this.order,
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
      label: data.label.present ? data.label.value : this.label,
      translations: data.translations.present
          ? data.translations.value
          : this.translations,
      optionSet: data.optionSet.present ? data.optionSet.value : this.optionSet,
      order: data.order.present ? data.order.value : this.order,
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
          ..write('label: $label, ')
          ..write('translations: $translations, ')
          ..write('optionSet: $optionSet, ')
          ..write('order: $order')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, lastModifiedDate, createdDate, name,
      displayName, code, label, translations, optionSet, order);
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
          other.label == this.label &&
          other.translations == this.translations &&
          other.optionSet == this.optionSet &&
          other.order == this.order);
}

class DataOptionsCompanion extends UpdateCompanion<DataOption> {
  final Value<String> id;
  final Value<DateTime?> lastModifiedDate;
  final Value<DateTime?> createdDate;
  final Value<String?> name;
  final Value<String?> displayName;
  final Value<String?> code;
  final Value<Map<String, dynamic>?> label;
  final Value<List<Translation>> translations;
  final Value<String> optionSet;
  final Value<int> order;
  final Value<int> rowid;
  const DataOptionsCompanion({
    this.id = const Value.absent(),
    this.lastModifiedDate = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.name = const Value.absent(),
    this.displayName = const Value.absent(),
    this.code = const Value.absent(),
    this.label = const Value.absent(),
    this.translations = const Value.absent(),
    this.optionSet = const Value.absent(),
    this.order = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  DataOptionsCompanion.insert({
    required String id,
    this.lastModifiedDate = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.name = const Value.absent(),
    this.displayName = const Value.absent(),
    this.code = const Value.absent(),
    this.label = const Value.absent(),
    this.translations = const Value.absent(),
    required String optionSet,
    this.order = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        optionSet = Value(optionSet);
  static Insertable<DataOption> custom({
    Expression<String>? id,
    Expression<DateTime>? lastModifiedDate,
    Expression<DateTime>? createdDate,
    Expression<String>? name,
    Expression<String>? displayName,
    Expression<String>? code,
    Expression<String>? label,
    Expression<String>? translations,
    Expression<String>? optionSet,
    Expression<int>? order,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (lastModifiedDate != null) 'last_modified_date': lastModifiedDate,
      if (createdDate != null) 'created_date': createdDate,
      if (name != null) 'name': name,
      if (displayName != null) 'display_name': displayName,
      if (code != null) 'code': code,
      if (label != null) 'label': label,
      if (translations != null) 'translations': translations,
      if (optionSet != null) 'option_set': optionSet,
      if (order != null) 'order': order,
      if (rowid != null) 'rowid': rowid,
    });
  }

  DataOptionsCompanion copyWith(
      {Value<String>? id,
      Value<DateTime?>? lastModifiedDate,
      Value<DateTime?>? createdDate,
      Value<String?>? name,
      Value<String?>? displayName,
      Value<String?>? code,
      Value<Map<String, dynamic>?>? label,
      Value<List<Translation>>? translations,
      Value<String>? optionSet,
      Value<int>? order,
      Value<int>? rowid}) {
    return DataOptionsCompanion(
      id: id ?? this.id,
      lastModifiedDate: lastModifiedDate ?? this.lastModifiedDate,
      createdDate: createdDate ?? this.createdDate,
      name: name ?? this.name,
      displayName: displayName ?? this.displayName,
      code: code ?? this.code,
      label: label ?? this.label,
      translations: translations ?? this.translations,
      optionSet: optionSet ?? this.optionSet,
      order: order ?? this.order,
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
    if (label.present) {
      map['label'] = Variable<String>(
          $DataOptionsTable.$converterlabel.toSql(label.value));
    }
    if (translations.present) {
      map['translations'] = Variable<String>(
          $DataOptionsTable.$convertertranslations.toSql(translations.value));
    }
    if (optionSet.present) {
      map['option_set'] = Variable<String>(optionSet.value);
    }
    if (order.present) {
      map['order'] = Variable<int>(order.value);
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
          ..write('label: $label, ')
          ..write('translations: $translations, ')
          ..write('optionSet: $optionSet, ')
          ..write('order: $order, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $UserFormPermissionsTable extends UserFormPermissions
    with TableInfo<$UserFormPermissionsTable, UserFormPermission> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserFormPermissionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _teamMeta = const VerificationMeta('team');
  @override
  late final GeneratedColumn<String> team = GeneratedColumn<String>(
      'team', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES teams (id)'));
  static const VerificationMeta _formMeta = const VerificationMeta('form');
  @override
  late final GeneratedColumn<String> form = GeneratedColumn<String>(
      'form', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _validFromMeta =
      const VerificationMeta('validFrom');
  @override
  late final GeneratedColumn<DateTime> validFrom = GeneratedColumn<DateTime>(
      'valid_from', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _validToMeta =
      const VerificationMeta('validTo');
  @override
  late final GeneratedColumn<DateTime> validTo = GeneratedColumn<DateTime>(
      'valid_to', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  late final GeneratedColumnWithTypeConverter<List<FormPermission>, String>
      permissions = GeneratedColumn<String>('permissions', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<List<FormPermission>>(
              $UserFormPermissionsTable.$converterpermissions);
  @override
  List<GeneratedColumn> get $columns =>
      [team, form, validFrom, validTo, permissions];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user_form_permissions';
  @override
  VerificationContext validateIntegrity(Insertable<UserFormPermission> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('team')) {
      context.handle(
          _teamMeta, team.isAcceptableOrUnknown(data['team']!, _teamMeta));
    } else if (isInserting) {
      context.missing(_teamMeta);
    }
    if (data.containsKey('form')) {
      context.handle(
          _formMeta, form.isAcceptableOrUnknown(data['form']!, _formMeta));
    } else if (isInserting) {
      context.missing(_formMeta);
    }
    if (data.containsKey('valid_from')) {
      context.handle(_validFromMeta,
          validFrom.isAcceptableOrUnknown(data['valid_from']!, _validFromMeta));
    }
    if (data.containsKey('valid_to')) {
      context.handle(_validToMeta,
          validTo.isAcceptableOrUnknown(data['valid_to']!, _validToMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {team, form};
  @override
  UserFormPermission map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserFormPermission(
      team: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}team'])!,
      form: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}form'])!,
      validFrom: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}valid_from']),
      validTo: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}valid_to']),
      permissions: $UserFormPermissionsTable.$converterpermissions.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}permissions'])!),
    );
  }

  @override
  $UserFormPermissionsTable createAlias(String alias) {
    return $UserFormPermissionsTable(attachedDatabase, alias);
  }

  static TypeConverter<List<FormPermission>, String> $converterpermissions =
      const FormPermissionsConverter();
}

class UserFormPermission extends DataClass
    implements Insertable<UserFormPermission> {
  final String team;
  final String form;
  final DateTime? validFrom;
  final DateTime? validTo;
  final List<FormPermission> permissions;
  const UserFormPermission(
      {required this.team,
      required this.form,
      this.validFrom,
      this.validTo,
      required this.permissions});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['team'] = Variable<String>(team);
    map['form'] = Variable<String>(form);
    if (!nullToAbsent || validFrom != null) {
      map['valid_from'] = Variable<DateTime>(validFrom);
    }
    if (!nullToAbsent || validTo != null) {
      map['valid_to'] = Variable<DateTime>(validTo);
    }
    {
      map['permissions'] = Variable<String>(
          $UserFormPermissionsTable.$converterpermissions.toSql(permissions));
    }
    return map;
  }

  UserFormPermissionsCompanion toCompanion(bool nullToAbsent) {
    return UserFormPermissionsCompanion(
      team: Value(team),
      form: Value(form),
      validFrom: validFrom == null && nullToAbsent
          ? const Value.absent()
          : Value(validFrom),
      validTo: validTo == null && nullToAbsent
          ? const Value.absent()
          : Value(validTo),
      permissions: Value(permissions),
    );
  }

  factory UserFormPermission.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserFormPermission(
      team: serializer.fromJson<String>(json['team']),
      form: serializer.fromJson<String>(json['form']),
      validFrom: serializer.fromJson<DateTime?>(json['validFrom']),
      validTo: serializer.fromJson<DateTime?>(json['validTo']),
      permissions:
          serializer.fromJson<List<FormPermission>>(json['permissions']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'team': serializer.toJson<String>(team),
      'form': serializer.toJson<String>(form),
      'validFrom': serializer.toJson<DateTime?>(validFrom),
      'validTo': serializer.toJson<DateTime?>(validTo),
      'permissions': serializer.toJson<List<FormPermission>>(permissions),
    };
  }

  UserFormPermission copyWith(
          {String? team,
          String? form,
          Value<DateTime?> validFrom = const Value.absent(),
          Value<DateTime?> validTo = const Value.absent(),
          List<FormPermission>? permissions}) =>
      UserFormPermission(
        team: team ?? this.team,
        form: form ?? this.form,
        validFrom: validFrom.present ? validFrom.value : this.validFrom,
        validTo: validTo.present ? validTo.value : this.validTo,
        permissions: permissions ?? this.permissions,
      );
  UserFormPermission copyWithCompanion(UserFormPermissionsCompanion data) {
    return UserFormPermission(
      team: data.team.present ? data.team.value : this.team,
      form: data.form.present ? data.form.value : this.form,
      validFrom: data.validFrom.present ? data.validFrom.value : this.validFrom,
      validTo: data.validTo.present ? data.validTo.value : this.validTo,
      permissions:
          data.permissions.present ? data.permissions.value : this.permissions,
    );
  }

  @override
  String toString() {
    return (StringBuffer('UserFormPermission(')
          ..write('team: $team, ')
          ..write('form: $form, ')
          ..write('validFrom: $validFrom, ')
          ..write('validTo: $validTo, ')
          ..write('permissions: $permissions')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(team, form, validFrom, validTo, permissions);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserFormPermission &&
          other.team == this.team &&
          other.form == this.form &&
          other.validFrom == this.validFrom &&
          other.validTo == this.validTo &&
          other.permissions == this.permissions);
}

class UserFormPermissionsCompanion extends UpdateCompanion<UserFormPermission> {
  final Value<String> team;
  final Value<String> form;
  final Value<DateTime?> validFrom;
  final Value<DateTime?> validTo;
  final Value<List<FormPermission>> permissions;
  final Value<int> rowid;
  const UserFormPermissionsCompanion({
    this.team = const Value.absent(),
    this.form = const Value.absent(),
    this.validFrom = const Value.absent(),
    this.validTo = const Value.absent(),
    this.permissions = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UserFormPermissionsCompanion.insert({
    required String team,
    required String form,
    this.validFrom = const Value.absent(),
    this.validTo = const Value.absent(),
    required List<FormPermission> permissions,
    this.rowid = const Value.absent(),
  })  : team = Value(team),
        form = Value(form),
        permissions = Value(permissions);
  static Insertable<UserFormPermission> custom({
    Expression<String>? team,
    Expression<String>? form,
    Expression<DateTime>? validFrom,
    Expression<DateTime>? validTo,
    Expression<String>? permissions,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (team != null) 'team': team,
      if (form != null) 'form': form,
      if (validFrom != null) 'valid_from': validFrom,
      if (validTo != null) 'valid_to': validTo,
      if (permissions != null) 'permissions': permissions,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UserFormPermissionsCompanion copyWith(
      {Value<String>? team,
      Value<String>? form,
      Value<DateTime?>? validFrom,
      Value<DateTime?>? validTo,
      Value<List<FormPermission>>? permissions,
      Value<int>? rowid}) {
    return UserFormPermissionsCompanion(
      team: team ?? this.team,
      form: form ?? this.form,
      validFrom: validFrom ?? this.validFrom,
      validTo: validTo ?? this.validTo,
      permissions: permissions ?? this.permissions,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (team.present) {
      map['team'] = Variable<String>(team.value);
    }
    if (form.present) {
      map['form'] = Variable<String>(form.value);
    }
    if (validFrom.present) {
      map['valid_from'] = Variable<DateTime>(validFrom.value);
    }
    if (validTo.present) {
      map['valid_to'] = Variable<DateTime>(validTo.value);
    }
    if (permissions.present) {
      map['permissions'] = Variable<String>($UserFormPermissionsTable
          .$converterpermissions
          .toSql(permissions.value));
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserFormPermissionsCompanion(')
          ..write('team: $team, ')
          ..write('form: $form, ')
          ..write('validFrom: $validFrom, ')
          ..write('validTo: $validTo, ')
          ..write('permissions: $permissions, ')
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
  late final $ManagedTeamsTable managedTeams = $ManagedTeamsTable(this);
  late final $AssignmentsTable assignments = $AssignmentsTable(this);
  late final $FormVersionsTable formVersions = $FormVersionsTable(this);
  late final $MetadataSubmissionsTable metadataSubmissions =
      $MetadataSubmissionsTable(this);
  late final $DataFormTemplateVersionsTable dataFormTemplateVersions =
      $DataFormTemplateVersionsTable(this);
  late final $DataSubmissionsTable dataSubmissions =
      $DataSubmissionsTable(this);
  late final $RepeatInstancesTable repeatInstances =
      $RepeatInstancesTable(this);
  late final $DataElementsTable dataElements = $DataElementsTable(this);
  late final $DataValuesTable dataValues = $DataValuesTable(this);
  late final $DataOptionSetsTable dataOptionSets = $DataOptionSetsTable(this);
  late final $DataOptionsTable dataOptions = $DataOptionsTable(this);
  late final $UserFormPermissionsTable userFormPermissions =
      $UserFormPermissionsTable(this);
  late final Index orgCodeIdx =
      Index('org_code_idx', 'CREATE INDEX org_code_idx ON org_units (code)');
  late final Index orgNameIdx =
      Index('org_name_idx', 'CREATE INDEX org_name_idx ON org_units (name)');
  late final Index orgPathIdx = Index(
      'org_path_idx', 'CREATE UNIQUE INDEX org_path_idx ON org_units (path)');
  late final Index orgLevelIdx =
      Index('org_level_idx', 'CREATE INDEX org_level_idx ON org_units (level)');
  late final Index activityDisabledIdx = Index('activity_disabled_idx',
      'CREATE INDEX activity_disabled_idx ON activities (disabled)');
  late final Index teamCodIdx =
      Index('team_cod_idx', 'CREATE INDEX team_cod_idx ON teams (code)');
  late final Index managedTeamCodIdx = Index('managed_team_cod_idx',
      'CREATE INDEX managed_team_cod_idx ON managed_teams (code)');
  late final Index assignmentStatusIdx = Index('assignment_status_idx',
      'CREATE INDEX assignment_status_idx ON assignments (progress_status)');
  late final Index assignmentStartDateIdx = Index('assignment_start_date_idx',
      'CREATE INDEX assignment_start_date_idx ON assignments (start_date)');
  late final Index assignmentScopeIdx = Index('assignment_scope_idx',
      'CREATE INDEX assignment_scope_idx ON assignments (scope)');
  late final Index repeatTemplatePathIdx = Index('repeat_template_path_idx',
      'CREATE INDEX repeat_template_path_idx ON repeat_instances (template_path)');
  late final Index dataValueTemplatePathIdx = Index(
      'data_value_template_path_idx',
      'CREATE INDEX data_value_template_path_idx ON data_values (template_path)');
  late final Index dataElementNameIdx = Index('data_element_name_idx',
      'CREATE INDEX data_element_name_idx ON data_elements (name)');
  late final Index dataOptionOrderIdx = Index('data_option_order_idx',
      'CREATE INDEX data_option_order_idx ON data_options ("order")');
  late final Index submissionStatusIdx = Index('submission_status_idx',
      'CREATE INDEX submission_status_idx ON data_submissions (status)');
  late final Index submissionProgressStatusIdx = Index(
      'submission_progressStatus_idx',
      'CREATE INDEX submission_progressStatus_idx ON data_submissions (progress_status)');
  late final Index submissionDeletedIdx = Index('submission_deleted_idx',
      'CREATE INDEX submission_deleted_idx ON data_submissions (deleted)');
  late final Index formPermissionFormIdx = Index('form_permission_form_idx',
      'CREATE INDEX form_permission_form_idx ON user_form_permissions (team, form)');
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
  late final DataFormTemplateVersionsDao dataFormTemplateVersionsDao =
      DataFormTemplateVersionsDao(this as AppDatabase);
  late final DataElementsDao dataElementsDao =
      DataElementsDao(this as AppDatabase);
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
        managedTeams,
        assignments,
        formVersions,
        metadataSubmissions,
        dataFormTemplateVersions,
        dataSubmissions,
        repeatInstances,
        dataElements,
        dataValues,
        dataOptionSets,
        dataOptions,
        userFormPermissions,
        orgCodeIdx,
        orgNameIdx,
        orgPathIdx,
        orgLevelIdx,
        activityDisabledIdx,
        teamCodIdx,
        managedTeamCodIdx,
        assignmentStatusIdx,
        assignmentStartDateIdx,
        assignmentScopeIdx,
        repeatTemplatePathIdx,
        dataValueTemplatePathIdx,
        dataElementNameIdx,
        dataOptionOrderIdx,
        submissionStatusIdx,
        submissionProgressStatusIdx,
        submissionDeletedIdx,
        formPermissionFormIdx
      ];
  @override
  DriftDatabaseOptions get options =>
      const DriftDatabaseOptions(storeDateTimeAsText: true);
}

typedef $$UsersTableCreateCompanionBuilder = UsersCompanion Function({
  required String id,
  Value<DateTime?> lastModifiedDate,
  Value<DateTime?> createdDate,
  required String username,
  Value<String?> firstName,
  Value<String?> lastName,
  Value<String?> mobile,
  Value<String?> email,
  Value<String?> langKey,
  Value<bool> activated,
  Value<String?> imageUrl,
  required List<String> authorities,
  Value<int?> submissionCount,
  Value<int?> assignmentCount,
  Value<int?> orgUnitCount,
  required List<String> activityUIDs,
  required List<String> userTeamsUIDs,
  required List<String> managedTeamsUIDs,
  required List<String> userGroupsUIDs,
  required List<String> userFormsUIDs,
  Value<int> rowid,
});
typedef $$UsersTableUpdateCompanionBuilder = UsersCompanion Function({
  Value<String> id,
  Value<DateTime?> lastModifiedDate,
  Value<DateTime?> createdDate,
  Value<String> username,
  Value<String?> firstName,
  Value<String?> lastName,
  Value<String?> mobile,
  Value<String?> email,
  Value<String?> langKey,
  Value<bool> activated,
  Value<String?> imageUrl,
  Value<List<String>> authorities,
  Value<int?> submissionCount,
  Value<int?> assignmentCount,
  Value<int?> orgUnitCount,
  Value<List<String>> activityUIDs,
  Value<List<String>> userTeamsUIDs,
  Value<List<String>> managedTeamsUIDs,
  Value<List<String>> userGroupsUIDs,
  Value<List<String>> userFormsUIDs,
  Value<int> rowid,
});

final class $$UsersTableReferences
    extends BaseReferences<_$AppDatabase, $UsersTable, User> {
  $$UsersTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$TeamsTable, List<Team>> _userTeamsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.teams,
          aliasName: $_aliasNameGenerator(db.users.id, db.teams.user));

  $$TeamsTableProcessedTableManager get userTeams {
    final manager = $$TeamsTableTableManager($_db, $_db.teams)
        .filter((f) => f.user.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_userTeamsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$ManagedTeamsTable, List<ManagedTeam>>
      _managedTeamsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
          db.managedTeams,
          aliasName: $_aliasNameGenerator(db.users.id, db.managedTeams.user));

  $$ManagedTeamsTableProcessedTableManager get managedTeams {
    final manager = $$ManagedTeamsTableTableManager($_db, $_db.managedTeams)
        .filter((f) => f.user.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_managedTeamsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

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

  ColumnFilters<String> get firstName => $composableBuilder(
      column: $table.firstName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get lastName => $composableBuilder(
      column: $table.lastName, builder: (column) => ColumnFilters(column));

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

  ColumnFilters<int> get submissionCount => $composableBuilder(
      column: $table.submissionCount,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get assignmentCount => $composableBuilder(
      column: $table.assignmentCount,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get orgUnitCount => $composableBuilder(
      column: $table.orgUnitCount, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<List<String>, List<String>, String>
      get activityUIDs => $composableBuilder(
          column: $table.activityUIDs,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<List<String>, List<String>, String>
      get userTeamsUIDs => $composableBuilder(
          column: $table.userTeamsUIDs,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<List<String>, List<String>, String>
      get managedTeamsUIDs => $composableBuilder(
          column: $table.managedTeamsUIDs,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<List<String>, List<String>, String>
      get userGroupsUIDs => $composableBuilder(
          column: $table.userGroupsUIDs,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<List<String>, List<String>, String>
      get userFormsUIDs => $composableBuilder(
          column: $table.userFormsUIDs,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  Expression<bool> userTeams(
      Expression<bool> Function($$TeamsTableFilterComposer f) f) {
    final $$TeamsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.teams,
        getReferencedColumn: (t) => t.user,
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

  Expression<bool> managedTeams(
      Expression<bool> Function($$ManagedTeamsTableFilterComposer f) f) {
    final $$ManagedTeamsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.managedTeams,
        getReferencedColumn: (t) => t.user,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ManagedTeamsTableFilterComposer(
              $db: $db,
              $table: $db.managedTeams,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
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

  ColumnOrderings<String> get firstName => $composableBuilder(
      column: $table.firstName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get lastName => $composableBuilder(
      column: $table.lastName, builder: (column) => ColumnOrderings(column));

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

  ColumnOrderings<int> get submissionCount => $composableBuilder(
      column: $table.submissionCount,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get assignmentCount => $composableBuilder(
      column: $table.assignmentCount,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get orgUnitCount => $composableBuilder(
      column: $table.orgUnitCount,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get activityUIDs => $composableBuilder(
      column: $table.activityUIDs,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get userTeamsUIDs => $composableBuilder(
      column: $table.userTeamsUIDs,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get managedTeamsUIDs => $composableBuilder(
      column: $table.managedTeamsUIDs,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get userGroupsUIDs => $composableBuilder(
      column: $table.userGroupsUIDs,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get userFormsUIDs => $composableBuilder(
      column: $table.userFormsUIDs,
      builder: (column) => ColumnOrderings(column));
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

  GeneratedColumn<String> get firstName =>
      $composableBuilder(column: $table.firstName, builder: (column) => column);

  GeneratedColumn<String> get lastName =>
      $composableBuilder(column: $table.lastName, builder: (column) => column);

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

  GeneratedColumn<int> get submissionCount => $composableBuilder(
      column: $table.submissionCount, builder: (column) => column);

  GeneratedColumn<int> get assignmentCount => $composableBuilder(
      column: $table.assignmentCount, builder: (column) => column);

  GeneratedColumn<int> get orgUnitCount => $composableBuilder(
      column: $table.orgUnitCount, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<String>, String> get activityUIDs =>
      $composableBuilder(
          column: $table.activityUIDs, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<String>, String> get userTeamsUIDs =>
      $composableBuilder(
          column: $table.userTeamsUIDs, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<String>, String> get managedTeamsUIDs =>
      $composableBuilder(
          column: $table.managedTeamsUIDs, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<String>, String> get userGroupsUIDs =>
      $composableBuilder(
          column: $table.userGroupsUIDs, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<String>, String> get userFormsUIDs =>
      $composableBuilder(
          column: $table.userFormsUIDs, builder: (column) => column);

  Expression<T> userTeams<T extends Object>(
      Expression<T> Function($$TeamsTableAnnotationComposer a) f) {
    final $$TeamsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.teams,
        getReferencedColumn: (t) => t.user,
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

  Expression<T> managedTeams<T extends Object>(
      Expression<T> Function($$ManagedTeamsTableAnnotationComposer a) f) {
    final $$ManagedTeamsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.managedTeams,
        getReferencedColumn: (t) => t.user,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ManagedTeamsTableAnnotationComposer(
              $db: $db,
              $table: $db.managedTeams,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
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
    (User, $$UsersTableReferences),
    User,
    PrefetchHooks Function({bool userTeams, bool managedTeams})> {
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
            Value<DateTime?> lastModifiedDate = const Value.absent(),
            Value<DateTime?> createdDate = const Value.absent(),
            Value<String> username = const Value.absent(),
            Value<String?> firstName = const Value.absent(),
            Value<String?> lastName = const Value.absent(),
            Value<String?> mobile = const Value.absent(),
            Value<String?> email = const Value.absent(),
            Value<String?> langKey = const Value.absent(),
            Value<bool> activated = const Value.absent(),
            Value<String?> imageUrl = const Value.absent(),
            Value<List<String>> authorities = const Value.absent(),
            Value<int?> submissionCount = const Value.absent(),
            Value<int?> assignmentCount = const Value.absent(),
            Value<int?> orgUnitCount = const Value.absent(),
            Value<List<String>> activityUIDs = const Value.absent(),
            Value<List<String>> userTeamsUIDs = const Value.absent(),
            Value<List<String>> managedTeamsUIDs = const Value.absent(),
            Value<List<String>> userGroupsUIDs = const Value.absent(),
            Value<List<String>> userFormsUIDs = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              UsersCompanion(
            id: id,
            lastModifiedDate: lastModifiedDate,
            createdDate: createdDate,
            username: username,
            firstName: firstName,
            lastName: lastName,
            mobile: mobile,
            email: email,
            langKey: langKey,
            activated: activated,
            imageUrl: imageUrl,
            authorities: authorities,
            submissionCount: submissionCount,
            assignmentCount: assignmentCount,
            orgUnitCount: orgUnitCount,
            activityUIDs: activityUIDs,
            userTeamsUIDs: userTeamsUIDs,
            managedTeamsUIDs: managedTeamsUIDs,
            userGroupsUIDs: userGroupsUIDs,
            userFormsUIDs: userFormsUIDs,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            Value<DateTime?> lastModifiedDate = const Value.absent(),
            Value<DateTime?> createdDate = const Value.absent(),
            required String username,
            Value<String?> firstName = const Value.absent(),
            Value<String?> lastName = const Value.absent(),
            Value<String?> mobile = const Value.absent(),
            Value<String?> email = const Value.absent(),
            Value<String?> langKey = const Value.absent(),
            Value<bool> activated = const Value.absent(),
            Value<String?> imageUrl = const Value.absent(),
            required List<String> authorities,
            Value<int?> submissionCount = const Value.absent(),
            Value<int?> assignmentCount = const Value.absent(),
            Value<int?> orgUnitCount = const Value.absent(),
            required List<String> activityUIDs,
            required List<String> userTeamsUIDs,
            required List<String> managedTeamsUIDs,
            required List<String> userGroupsUIDs,
            required List<String> userFormsUIDs,
            Value<int> rowid = const Value.absent(),
          }) =>
              UsersCompanion.insert(
            id: id,
            lastModifiedDate: lastModifiedDate,
            createdDate: createdDate,
            username: username,
            firstName: firstName,
            lastName: lastName,
            mobile: mobile,
            email: email,
            langKey: langKey,
            activated: activated,
            imageUrl: imageUrl,
            authorities: authorities,
            submissionCount: submissionCount,
            assignmentCount: assignmentCount,
            orgUnitCount: orgUnitCount,
            activityUIDs: activityUIDs,
            userTeamsUIDs: userTeamsUIDs,
            managedTeamsUIDs: managedTeamsUIDs,
            userGroupsUIDs: userGroupsUIDs,
            userFormsUIDs: userFormsUIDs,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$UsersTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: ({userTeams = false, managedTeams = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (userTeams) db.teams,
                if (managedTeams) db.managedTeams
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (userTeams)
                    await $_getPrefetchedData<User, $UsersTable, Team>(
                        currentTable: table,
                        referencedTable:
                            $$UsersTableReferences._userTeamsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$UsersTableReferences(db, table, p0).userTeams,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) =>
                                referencedItems.where((e) => e.user == item.id),
                        typedResults: items),
                  if (managedTeams)
                    await $_getPrefetchedData<User, $UsersTable, ManagedTeam>(
                        currentTable: table,
                        referencedTable:
                            $$UsersTableReferences._managedTeamsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$UsersTableReferences(db, table, p0).managedTeams,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) =>
                                referencedItems.where((e) => e.user == item.id),
                        typedResults: items)
                ];
              },
            );
          },
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
    (User, $$UsersTableReferences),
    User,
    PrefetchHooks Function({bool userTeams, bool managedTeams})>;
typedef $$OrgUnitsTableCreateCompanionBuilder = OrgUnitsCompanion Function({
  required String id,
  Value<DateTime?> lastModifiedDate,
  Value<DateTime?> createdDate,
  Value<String?> name,
  Value<String?> displayName,
  Value<String?> code,
  Value<Map<String, dynamic>?> label,
  Value<List<Translation>> translations,
  required String path,
  required int level,
  Value<String?> parent,
  Value<int> rowid,
});
typedef $$OrgUnitsTableUpdateCompanionBuilder = OrgUnitsCompanion Function({
  Value<String> id,
  Value<DateTime?> lastModifiedDate,
  Value<DateTime?> createdDate,
  Value<String?> name,
  Value<String?> displayName,
  Value<String?> code,
  Value<Map<String, dynamic>?> label,
  Value<List<Translation>> translations,
  Value<String> path,
  Value<int> level,
  Value<String?> parent,
  Value<int> rowid,
});

final class $$OrgUnitsTableReferences
    extends BaseReferences<_$AppDatabase, $OrgUnitsTable, OrgUnit> {
  $$OrgUnitsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $OrgUnitsTable _parentTable(_$AppDatabase db) => db.orgUnits
      .createAlias($_aliasNameGenerator(db.orgUnits.parent, db.orgUnits.id));

  $$OrgUnitsTableProcessedTableManager? get parent {
    final $_column = $_itemColumn<String>('parent');
    if ($_column == null) return null;
    final manager = $$OrgUnitsTableTableManager($_db, $_db.orgUnits)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_parentTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static MultiTypedResultKey<$AssignmentsTable, List<Assignment>>
      _assignmentsRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.assignments,
              aliasName:
                  $_aliasNameGenerator(db.orgUnits.id, db.assignments.orgUnit));

  $$AssignmentsTableProcessedTableManager get assignmentsRefs {
    final manager = $$AssignmentsTableTableManager($_db, $_db.assignments)
        .filter((f) => f.orgUnit.id.sqlEquals($_itemColumn<String>('id')!));

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
            .filter((f) => f.orgUnit.id.sqlEquals($_itemColumn<String>('id')!));

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

  ColumnWithTypeConverterFilters<Map<String, dynamic>?, Map<String, dynamic>,
          String>
      get label => $composableBuilder(
          column: $table.label,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<List<Translation>, List<Translation>, String>
      get translations => $composableBuilder(
          column: $table.translations,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<String> get path => $composableBuilder(
      column: $table.path, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get level => $composableBuilder(
      column: $table.level, builder: (column) => ColumnFilters(column));

  $$OrgUnitsTableFilterComposer get parent {
    final $$OrgUnitsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.parent,
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

  ColumnOrderings<String> get label => $composableBuilder(
      column: $table.label, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get translations => $composableBuilder(
      column: $table.translations,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get path => $composableBuilder(
      column: $table.path, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get level => $composableBuilder(
      column: $table.level, builder: (column) => ColumnOrderings(column));

  $$OrgUnitsTableOrderingComposer get parent {
    final $$OrgUnitsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.parent,
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

  GeneratedColumnWithTypeConverter<Map<String, dynamic>?, String> get label =>
      $composableBuilder(column: $table.label, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<Translation>, String>
      get translations => $composableBuilder(
          column: $table.translations, builder: (column) => column);

  GeneratedColumn<String> get path =>
      $composableBuilder(column: $table.path, builder: (column) => column);

  GeneratedColumn<int> get level =>
      $composableBuilder(column: $table.level, builder: (column) => column);

  $$OrgUnitsTableAnnotationComposer get parent {
    final $$OrgUnitsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.parent,
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
    PrefetchHooks Function(
        {bool parent, bool assignmentsRefs, bool dataSubmissionsRefs})> {
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
            Value<DateTime?> lastModifiedDate = const Value.absent(),
            Value<DateTime?> createdDate = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> displayName = const Value.absent(),
            Value<String?> code = const Value.absent(),
            Value<Map<String, dynamic>?> label = const Value.absent(),
            Value<List<Translation>> translations = const Value.absent(),
            Value<String> path = const Value.absent(),
            Value<int> level = const Value.absent(),
            Value<String?> parent = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              OrgUnitsCompanion(
            id: id,
            lastModifiedDate: lastModifiedDate,
            createdDate: createdDate,
            name: name,
            displayName: displayName,
            code: code,
            label: label,
            translations: translations,
            path: path,
            level: level,
            parent: parent,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            Value<DateTime?> lastModifiedDate = const Value.absent(),
            Value<DateTime?> createdDate = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> displayName = const Value.absent(),
            Value<String?> code = const Value.absent(),
            Value<Map<String, dynamic>?> label = const Value.absent(),
            Value<List<Translation>> translations = const Value.absent(),
            required String path,
            required int level,
            Value<String?> parent = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              OrgUnitsCompanion.insert(
            id: id,
            lastModifiedDate: lastModifiedDate,
            createdDate: createdDate,
            name: name,
            displayName: displayName,
            code: code,
            label: label,
            translations: translations,
            path: path,
            level: level,
            parent: parent,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$OrgUnitsTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: (
              {parent = false,
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
                if (parent) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.parent,
                    referencedTable: $$OrgUnitsTableReferences._parentTable(db),
                    referencedColumn:
                        $$OrgUnitsTableReferences._parentTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (assignmentsRefs)
                    await $_getPrefetchedData<OrgUnit, $OrgUnitsTable,
                            Assignment>(
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
                    await $_getPrefetchedData<OrgUnit, $OrgUnitsTable,
                            DataSubmission>(
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
    PrefetchHooks Function(
        {bool parent, bool assignmentsRefs, bool dataSubmissionsRefs})>;
typedef $$OuLevelsTableCreateCompanionBuilder = OuLevelsCompanion Function({
  required String id,
  Value<DateTime?> lastModifiedDate,
  Value<DateTime?> createdDate,
  Value<String?> name,
  Value<String?> displayName,
  Value<String?> code,
  Value<Map<String, dynamic>?> label,
  Value<List<Translation>> translations,
  required int level,
  Value<int?> offlineLevels,
  Value<int> rowid,
});
typedef $$OuLevelsTableUpdateCompanionBuilder = OuLevelsCompanion Function({
  Value<String> id,
  Value<DateTime?> lastModifiedDate,
  Value<DateTime?> createdDate,
  Value<String?> name,
  Value<String?> displayName,
  Value<String?> code,
  Value<Map<String, dynamic>?> label,
  Value<List<Translation>> translations,
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

  ColumnWithTypeConverterFilters<Map<String, dynamic>?, Map<String, dynamic>,
          String>
      get label => $composableBuilder(
          column: $table.label,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<List<Translation>, List<Translation>, String>
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

  ColumnOrderings<String> get label => $composableBuilder(
      column: $table.label, builder: (column) => ColumnOrderings(column));

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

  GeneratedColumnWithTypeConverter<Map<String, dynamic>?, String> get label =>
      $composableBuilder(column: $table.label, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<Translation>, String>
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
            Value<DateTime?> lastModifiedDate = const Value.absent(),
            Value<DateTime?> createdDate = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> displayName = const Value.absent(),
            Value<String?> code = const Value.absent(),
            Value<Map<String, dynamic>?> label = const Value.absent(),
            Value<List<Translation>> translations = const Value.absent(),
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
            label: label,
            translations: translations,
            level: level,
            offlineLevels: offlineLevels,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            Value<DateTime?> lastModifiedDate = const Value.absent(),
            Value<DateTime?> createdDate = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> displayName = const Value.absent(),
            Value<String?> code = const Value.absent(),
            Value<Map<String, dynamic>?> label = const Value.absent(),
            Value<List<Translation>> translations = const Value.absent(),
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
            label: label,
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
  Value<DateTime?> lastModifiedDate,
  Value<DateTime?> createdDate,
  Value<String?> name,
  Value<String?> displayName,
  Value<String?> code,
  Value<Map<String, dynamic>?> label,
  Value<List<Translation>> translations,
  Value<bool> disabled,
  Value<int> rowid,
});
typedef $$ProjectsTableUpdateCompanionBuilder = ProjectsCompanion Function({
  Value<String> id,
  Value<DateTime?> lastModifiedDate,
  Value<DateTime?> createdDate,
  Value<String?> name,
  Value<String?> displayName,
  Value<String?> code,
  Value<Map<String, dynamic>?> label,
  Value<List<Translation>> translations,
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
        .filter((f) => f.project.id.sqlEquals($_itemColumn<String>('id')!));

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

  ColumnWithTypeConverterFilters<Map<String, dynamic>?, Map<String, dynamic>,
          String>
      get label => $composableBuilder(
          column: $table.label,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<List<Translation>, List<Translation>, String>
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

  ColumnOrderings<String> get label => $composableBuilder(
      column: $table.label, builder: (column) => ColumnOrderings(column));

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

  GeneratedColumnWithTypeConverter<Map<String, dynamic>?, String> get label =>
      $composableBuilder(column: $table.label, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<Translation>, String>
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
            Value<DateTime?> lastModifiedDate = const Value.absent(),
            Value<DateTime?> createdDate = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> displayName = const Value.absent(),
            Value<String?> code = const Value.absent(),
            Value<Map<String, dynamic>?> label = const Value.absent(),
            Value<List<Translation>> translations = const Value.absent(),
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
            label: label,
            translations: translations,
            disabled: disabled,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            Value<DateTime?> lastModifiedDate = const Value.absent(),
            Value<DateTime?> createdDate = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> displayName = const Value.absent(),
            Value<String?> code = const Value.absent(),
            Value<Map<String, dynamic>?> label = const Value.absent(),
            Value<List<Translation>> translations = const Value.absent(),
            Value<bool> disabled = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ProjectsCompanion.insert(
            id: id,
            lastModifiedDate: lastModifiedDate,
            createdDate: createdDate,
            name: name,
            displayName: displayName,
            code: code,
            label: label,
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
                    await $_getPrefetchedData<Project, $ProjectsTable,
                            Activity>(
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
  Value<DateTime?> lastModifiedDate,
  Value<DateTime?> createdDate,
  Value<String?> name,
  Value<String?> displayName,
  Value<String?> code,
  Value<Map<String, dynamic>?> label,
  Value<List<Translation>> translations,
  required String project,
  Value<bool> disabled,
  Value<DateTime?> startDate,
  Value<DateTime?> endDate,
  Value<String?> description,
  Value<int> rowid,
});
typedef $$ActivitiesTableUpdateCompanionBuilder = ActivitiesCompanion Function({
  Value<String> id,
  Value<DateTime?> lastModifiedDate,
  Value<DateTime?> createdDate,
  Value<String?> name,
  Value<String?> displayName,
  Value<String?> code,
  Value<Map<String, dynamic>?> label,
  Value<List<Translation>> translations,
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
    final $_column = $_itemColumn<String>('project')!;

    final manager = $$ProjectsTableTableManager($_db, $_db.projects)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_projectTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static MultiTypedResultKey<$TeamsTable, List<Team>> _activityTeamsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.teams,
          aliasName: $_aliasNameGenerator(db.activities.id, db.teams.activity));

  $$TeamsTableProcessedTableManager get activityTeams {
    final manager = $$TeamsTableTableManager($_db, $_db.teams)
        .filter((f) => f.activity.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_activityTeamsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$ManagedTeamsTable, List<ManagedTeam>>
      _activityManagedTeamsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.managedTeams,
              aliasName: $_aliasNameGenerator(
                  db.activities.id, db.managedTeams.activity));

  $$ManagedTeamsTableProcessedTableManager get activityManagedTeams {
    final manager = $$ManagedTeamsTableTableManager($_db, $_db.managedTeams)
        .filter((f) => f.activity.id.sqlEquals($_itemColumn<String>('id')!));

    final cache =
        $_typedResult.readTableOrNull(_activityManagedTeamsTable($_db));
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
        .filter((f) => f.activity.id.sqlEquals($_itemColumn<String>('id')!));

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

  ColumnWithTypeConverterFilters<Map<String, dynamic>?, Map<String, dynamic>,
          String>
      get label => $composableBuilder(
          column: $table.label,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<List<Translation>, List<Translation>, String>
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

  Expression<bool> activityTeams(
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

  Expression<bool> activityManagedTeams(
      Expression<bool> Function($$ManagedTeamsTableFilterComposer f) f) {
    final $$ManagedTeamsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.managedTeams,
        getReferencedColumn: (t) => t.activity,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ManagedTeamsTableFilterComposer(
              $db: $db,
              $table: $db.managedTeams,
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

  ColumnOrderings<String> get label => $composableBuilder(
      column: $table.label, builder: (column) => ColumnOrderings(column));

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

  GeneratedColumnWithTypeConverter<Map<String, dynamic>?, String> get label =>
      $composableBuilder(column: $table.label, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<Translation>, String>
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

  Expression<T> activityTeams<T extends Object>(
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

  Expression<T> activityManagedTeams<T extends Object>(
      Expression<T> Function($$ManagedTeamsTableAnnotationComposer a) f) {
    final $$ManagedTeamsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.managedTeams,
        getReferencedColumn: (t) => t.activity,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ManagedTeamsTableAnnotationComposer(
              $db: $db,
              $table: $db.managedTeams,
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
        {bool project,
        bool activityTeams,
        bool activityManagedTeams,
        bool assignmentsRefs})> {
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
            Value<DateTime?> lastModifiedDate = const Value.absent(),
            Value<DateTime?> createdDate = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> displayName = const Value.absent(),
            Value<String?> code = const Value.absent(),
            Value<Map<String, dynamic>?> label = const Value.absent(),
            Value<List<Translation>> translations = const Value.absent(),
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
            label: label,
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
            Value<DateTime?> lastModifiedDate = const Value.absent(),
            Value<DateTime?> createdDate = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> displayName = const Value.absent(),
            Value<String?> code = const Value.absent(),
            Value<Map<String, dynamic>?> label = const Value.absent(),
            Value<List<Translation>> translations = const Value.absent(),
            required String project,
            Value<bool> disabled = const Value.absent(),
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
            label: label,
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
              {project = false,
              activityTeams = false,
              activityManagedTeams = false,
              assignmentsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (activityTeams) db.teams,
                if (activityManagedTeams) db.managedTeams,
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
                  if (activityTeams)
                    await $_getPrefetchedData<Activity, $ActivitiesTable, Team>(
                        currentTable: table,
                        referencedTable:
                            $$ActivitiesTableReferences._activityTeamsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$ActivitiesTableReferences(db, table, p0)
                                .activityTeams,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.activity == item.id),
                        typedResults: items),
                  if (activityManagedTeams)
                    await $_getPrefetchedData<Activity, $ActivitiesTable,
                            ManagedTeam>(
                        currentTable: table,
                        referencedTable: $$ActivitiesTableReferences
                            ._activityManagedTeamsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$ActivitiesTableReferences(db, table, p0)
                                .activityManagedTeams,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.activity == item.id),
                        typedResults: items),
                  if (assignmentsRefs)
                    await $_getPrefetchedData<Activity, $ActivitiesTable,
                            Assignment>(
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
        {bool project,
        bool activityTeams,
        bool activityManagedTeams,
        bool assignmentsRefs})>;
typedef $$TeamsTableCreateCompanionBuilder = TeamsCompanion Function({
  required String id,
  Value<DateTime?> lastModifiedDate,
  Value<DateTime?> createdDate,
  Value<String?> code,
  Value<bool?> disabled,
  required String activity,
  required String user,
  Value<int> rowid,
});
typedef $$TeamsTableUpdateCompanionBuilder = TeamsCompanion Function({
  Value<String> id,
  Value<DateTime?> lastModifiedDate,
  Value<DateTime?> createdDate,
  Value<String?> code,
  Value<bool?> disabled,
  Value<String> activity,
  Value<String> user,
  Value<int> rowid,
});

final class $$TeamsTableReferences
    extends BaseReferences<_$AppDatabase, $TeamsTable, Team> {
  $$TeamsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $ActivitiesTable _activityTable(_$AppDatabase db) => db.activities
      .createAlias($_aliasNameGenerator(db.teams.activity, db.activities.id));

  $$ActivitiesTableProcessedTableManager get activity {
    final $_column = $_itemColumn<String>('activity')!;

    final manager = $$ActivitiesTableTableManager($_db, $_db.activities)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_activityTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $UsersTable _userTable(_$AppDatabase db) =>
      db.users.createAlias($_aliasNameGenerator(db.teams.user, db.users.id));

  $$UsersTableProcessedTableManager get user {
    final $_column = $_itemColumn<String>('user')!;

    final manager = $$UsersTableTableManager($_db, $_db.users)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_userTable($_db));
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
        .filter((f) => f.team.id.sqlEquals($_itemColumn<String>('id')!));

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
            .filter((f) => f.team.id.sqlEquals($_itemColumn<String>('id')!));

    final cache =
        $_typedResult.readTableOrNull(_dataSubmissionsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$UserFormPermissionsTable,
      List<UserFormPermission>> _formPermissionsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.userFormPermissions,
          aliasName:
              $_aliasNameGenerator(db.teams.id, db.userFormPermissions.team));

  $$UserFormPermissionsTableProcessedTableManager get formPermissions {
    final manager =
        $$UserFormPermissionsTableTableManager($_db, $_db.userFormPermissions)
            .filter((f) => f.team.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_formPermissionsTable($_db));
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

  ColumnFilters<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get disabled => $composableBuilder(
      column: $table.disabled, builder: (column) => ColumnFilters(column));

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

  $$UsersTableFilterComposer get user {
    final $$UsersTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.user,
        referencedTable: $db.users,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UsersTableFilterComposer(
              $db: $db,
              $table: $db.users,
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

  Expression<bool> formPermissions(
      Expression<bool> Function($$UserFormPermissionsTableFilterComposer f) f) {
    final $$UserFormPermissionsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.userFormPermissions,
        getReferencedColumn: (t) => t.team,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserFormPermissionsTableFilterComposer(
              $db: $db,
              $table: $db.userFormPermissions,
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

  ColumnOrderings<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get disabled => $composableBuilder(
      column: $table.disabled, builder: (column) => ColumnOrderings(column));

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

  $$UsersTableOrderingComposer get user {
    final $$UsersTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.user,
        referencedTable: $db.users,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UsersTableOrderingComposer(
              $db: $db,
              $table: $db.users,
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

  GeneratedColumn<String> get code =>
      $composableBuilder(column: $table.code, builder: (column) => column);

  GeneratedColumn<bool> get disabled =>
      $composableBuilder(column: $table.disabled, builder: (column) => column);

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

  $$UsersTableAnnotationComposer get user {
    final $$UsersTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.user,
        referencedTable: $db.users,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UsersTableAnnotationComposer(
              $db: $db,
              $table: $db.users,
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

  Expression<T> formPermissions<T extends Object>(
      Expression<T> Function($$UserFormPermissionsTableAnnotationComposer a)
          f) {
    final $$UserFormPermissionsTableAnnotationComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.id,
            referencedTable: $db.userFormPermissions,
            getReferencedColumn: (t) => t.team,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$UserFormPermissionsTableAnnotationComposer(
                  $db: $db,
                  $table: $db.userFormPermissions,
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
        {bool activity,
        bool user,
        bool assignmentsRefs,
        bool dataSubmissionsRefs,
        bool formPermissions})> {
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
            Value<DateTime?> lastModifiedDate = const Value.absent(),
            Value<DateTime?> createdDate = const Value.absent(),
            Value<String?> code = const Value.absent(),
            Value<bool?> disabled = const Value.absent(),
            Value<String> activity = const Value.absent(),
            Value<String> user = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              TeamsCompanion(
            id: id,
            lastModifiedDate: lastModifiedDate,
            createdDate: createdDate,
            code: code,
            disabled: disabled,
            activity: activity,
            user: user,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            Value<DateTime?> lastModifiedDate = const Value.absent(),
            Value<DateTime?> createdDate = const Value.absent(),
            Value<String?> code = const Value.absent(),
            Value<bool?> disabled = const Value.absent(),
            required String activity,
            required String user,
            Value<int> rowid = const Value.absent(),
          }) =>
              TeamsCompanion.insert(
            id: id,
            lastModifiedDate: lastModifiedDate,
            createdDate: createdDate,
            code: code,
            disabled: disabled,
            activity: activity,
            user: user,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$TeamsTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: (
              {activity = false,
              user = false,
              assignmentsRefs = false,
              dataSubmissionsRefs = false,
              formPermissions = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (assignmentsRefs) db.assignments,
                if (dataSubmissionsRefs) db.dataSubmissions,
                if (formPermissions) db.userFormPermissions
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
                if (user) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.user,
                    referencedTable: $$TeamsTableReferences._userTable(db),
                    referencedColumn: $$TeamsTableReferences._userTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (assignmentsRefs)
                    await $_getPrefetchedData<Team, $TeamsTable, Assignment>(
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
                    await $_getPrefetchedData<Team, $TeamsTable,
                            DataSubmission>(
                        currentTable: table,
                        referencedTable: $$TeamsTableReferences
                            ._dataSubmissionsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$TeamsTableReferences(db, table, p0)
                                .dataSubmissionsRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) =>
                                referencedItems.where((e) => e.team == item.id),
                        typedResults: items),
                  if (formPermissions)
                    await $_getPrefetchedData<Team, $TeamsTable,
                            UserFormPermission>(
                        currentTable: table,
                        referencedTable:
                            $$TeamsTableReferences._formPermissionsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$TeamsTableReferences(db, table, p0)
                                .formPermissions,
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
        {bool activity,
        bool user,
        bool assignmentsRefs,
        bool dataSubmissionsRefs,
        bool formPermissions})>;
typedef $$ManagedTeamsTableCreateCompanionBuilder = ManagedTeamsCompanion
    Function({
  required String id,
  Value<DateTime?> lastModifiedDate,
  Value<DateTime?> createdDate,
  Value<String?> code,
  Value<bool?> disabled,
  required String activity,
  required String user,
  Value<List<dynamic>> teamUsers,
  Value<int> rowid,
});
typedef $$ManagedTeamsTableUpdateCompanionBuilder = ManagedTeamsCompanion
    Function({
  Value<String> id,
  Value<DateTime?> lastModifiedDate,
  Value<DateTime?> createdDate,
  Value<String?> code,
  Value<bool?> disabled,
  Value<String> activity,
  Value<String> user,
  Value<List<dynamic>> teamUsers,
  Value<int> rowid,
});

final class $$ManagedTeamsTableReferences
    extends BaseReferences<_$AppDatabase, $ManagedTeamsTable, ManagedTeam> {
  $$ManagedTeamsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $ActivitiesTable _activityTable(_$AppDatabase db) =>
      db.activities.createAlias(
          $_aliasNameGenerator(db.managedTeams.activity, db.activities.id));

  $$ActivitiesTableProcessedTableManager get activity {
    final $_column = $_itemColumn<String>('activity')!;

    final manager = $$ActivitiesTableTableManager($_db, $_db.activities)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_activityTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $UsersTable _userTable(_$AppDatabase db) => db.users
      .createAlias($_aliasNameGenerator(db.managedTeams.user, db.users.id));

  $$UsersTableProcessedTableManager get user {
    final $_column = $_itemColumn<String>('user')!;

    final manager = $$UsersTableTableManager($_db, $_db.users)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_userTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$ManagedTeamsTableFilterComposer
    extends Composer<_$AppDatabase, $ManagedTeamsTable> {
  $$ManagedTeamsTableFilterComposer({
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

  ColumnFilters<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get disabled => $composableBuilder(
      column: $table.disabled, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<List<dynamic>, List<dynamic>, String>
      get teamUsers => $composableBuilder(
          column: $table.teamUsers,
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

  $$UsersTableFilterComposer get user {
    final $$UsersTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.user,
        referencedTable: $db.users,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UsersTableFilterComposer(
              $db: $db,
              $table: $db.users,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ManagedTeamsTableOrderingComposer
    extends Composer<_$AppDatabase, $ManagedTeamsTable> {
  $$ManagedTeamsTableOrderingComposer({
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

  ColumnOrderings<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get disabled => $composableBuilder(
      column: $table.disabled, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get teamUsers => $composableBuilder(
      column: $table.teamUsers, builder: (column) => ColumnOrderings(column));

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

  $$UsersTableOrderingComposer get user {
    final $$UsersTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.user,
        referencedTable: $db.users,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UsersTableOrderingComposer(
              $db: $db,
              $table: $db.users,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ManagedTeamsTableAnnotationComposer
    extends Composer<_$AppDatabase, $ManagedTeamsTable> {
  $$ManagedTeamsTableAnnotationComposer({
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

  GeneratedColumn<String> get code =>
      $composableBuilder(column: $table.code, builder: (column) => column);

  GeneratedColumn<bool> get disabled =>
      $composableBuilder(column: $table.disabled, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<dynamic>, String> get teamUsers =>
      $composableBuilder(column: $table.teamUsers, builder: (column) => column);

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

  $$UsersTableAnnotationComposer get user {
    final $$UsersTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.user,
        referencedTable: $db.users,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UsersTableAnnotationComposer(
              $db: $db,
              $table: $db.users,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ManagedTeamsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ManagedTeamsTable,
    ManagedTeam,
    $$ManagedTeamsTableFilterComposer,
    $$ManagedTeamsTableOrderingComposer,
    $$ManagedTeamsTableAnnotationComposer,
    $$ManagedTeamsTableCreateCompanionBuilder,
    $$ManagedTeamsTableUpdateCompanionBuilder,
    (ManagedTeam, $$ManagedTeamsTableReferences),
    ManagedTeam,
    PrefetchHooks Function({bool activity, bool user})> {
  $$ManagedTeamsTableTableManager(_$AppDatabase db, $ManagedTeamsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ManagedTeamsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ManagedTeamsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ManagedTeamsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<DateTime?> lastModifiedDate = const Value.absent(),
            Value<DateTime?> createdDate = const Value.absent(),
            Value<String?> code = const Value.absent(),
            Value<bool?> disabled = const Value.absent(),
            Value<String> activity = const Value.absent(),
            Value<String> user = const Value.absent(),
            Value<List<dynamic>> teamUsers = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ManagedTeamsCompanion(
            id: id,
            lastModifiedDate: lastModifiedDate,
            createdDate: createdDate,
            code: code,
            disabled: disabled,
            activity: activity,
            user: user,
            teamUsers: teamUsers,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            Value<DateTime?> lastModifiedDate = const Value.absent(),
            Value<DateTime?> createdDate = const Value.absent(),
            Value<String?> code = const Value.absent(),
            Value<bool?> disabled = const Value.absent(),
            required String activity,
            required String user,
            Value<List<dynamic>> teamUsers = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ManagedTeamsCompanion.insert(
            id: id,
            lastModifiedDate: lastModifiedDate,
            createdDate: createdDate,
            code: code,
            disabled: disabled,
            activity: activity,
            user: user,
            teamUsers: teamUsers,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$ManagedTeamsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({activity = false, user = false}) {
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
                if (activity) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.activity,
                    referencedTable:
                        $$ManagedTeamsTableReferences._activityTable(db),
                    referencedColumn:
                        $$ManagedTeamsTableReferences._activityTable(db).id,
                  ) as T;
                }
                if (user) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.user,
                    referencedTable:
                        $$ManagedTeamsTableReferences._userTable(db),
                    referencedColumn:
                        $$ManagedTeamsTableReferences._userTable(db).id,
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

typedef $$ManagedTeamsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ManagedTeamsTable,
    ManagedTeam,
    $$ManagedTeamsTableFilterComposer,
    $$ManagedTeamsTableOrderingComposer,
    $$ManagedTeamsTableAnnotationComposer,
    $$ManagedTeamsTableCreateCompanionBuilder,
    $$ManagedTeamsTableUpdateCompanionBuilder,
    (ManagedTeam, $$ManagedTeamsTableReferences),
    ManagedTeam,
    PrefetchHooks Function({bool activity, bool user})>;
typedef $$AssignmentsTableCreateCompanionBuilder = AssignmentsCompanion
    Function({
  required String id,
  Value<DateTime?> lastModifiedDate,
  Value<DateTime?> createdDate,
  required String activity,
  required String team,
  required String orgUnit,
  required String activityName,
  required String orgUnitCode,
  required String orgUnitName,
  required String teamCode,
  Value<String?> parent,
  Value<int?> level,
  Value<int?> startDay,
  Value<DateTime?> startDate,
  Value<AssignmentStatus?> progressStatus,
  Value<Map<String, dynamic>?> allocatedResources,
  Value<List<String>?> forms,
  required EntityScope scope,
  Value<int> rowid,
});
typedef $$AssignmentsTableUpdateCompanionBuilder = AssignmentsCompanion
    Function({
  Value<String> id,
  Value<DateTime?> lastModifiedDate,
  Value<DateTime?> createdDate,
  Value<String> activity,
  Value<String> team,
  Value<String> orgUnit,
  Value<String> activityName,
  Value<String> orgUnitCode,
  Value<String> orgUnitName,
  Value<String> teamCode,
  Value<String?> parent,
  Value<int?> level,
  Value<int?> startDay,
  Value<DateTime?> startDate,
  Value<AssignmentStatus?> progressStatus,
  Value<Map<String, dynamic>?> allocatedResources,
  Value<List<String>?> forms,
  Value<EntityScope> scope,
  Value<int> rowid,
});

final class $$AssignmentsTableReferences
    extends BaseReferences<_$AppDatabase, $AssignmentsTable, Assignment> {
  $$AssignmentsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $ActivitiesTable _activityTable(_$AppDatabase db) =>
      db.activities.createAlias(
          $_aliasNameGenerator(db.assignments.activity, db.activities.id));

  $$ActivitiesTableProcessedTableManager get activity {
    final $_column = $_itemColumn<String>('activity')!;

    final manager = $$ActivitiesTableTableManager($_db, $_db.activities)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_activityTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $TeamsTable _teamTable(_$AppDatabase db) => db.teams
      .createAlias($_aliasNameGenerator(db.assignments.team, db.teams.id));

  $$TeamsTableProcessedTableManager get team {
    final $_column = $_itemColumn<String>('team')!;

    final manager = $$TeamsTableTableManager($_db, $_db.teams)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_teamTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $OrgUnitsTable _orgUnitTable(_$AppDatabase db) =>
      db.orgUnits.createAlias(
          $_aliasNameGenerator(db.assignments.orgUnit, db.orgUnits.id));

  $$OrgUnitsTableProcessedTableManager get orgUnit {
    final $_column = $_itemColumn<String>('org_unit')!;

    final manager = $$OrgUnitsTableTableManager($_db, $_db.orgUnits)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_orgUnitTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $AssignmentsTable _parentTable(_$AppDatabase db) =>
      db.assignments.createAlias(
          $_aliasNameGenerator(db.assignments.parent, db.assignments.id));

  $$AssignmentsTableProcessedTableManager? get parent {
    final $_column = $_itemColumn<String>('parent');
    if ($_column == null) return null;
    final manager = $$AssignmentsTableTableManager($_db, $_db.assignments)
        .filter((f) => f.id.sqlEquals($_column));
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
    final manager = $$DataSubmissionsTableTableManager(
            $_db, $_db.dataSubmissions)
        .filter((f) => f.assignment.id.sqlEquals($_itemColumn<String>('id')!));

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

  ColumnFilters<String> get activityName => $composableBuilder(
      column: $table.activityName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get orgUnitCode => $composableBuilder(
      column: $table.orgUnitCode, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get orgUnitName => $composableBuilder(
      column: $table.orgUnitName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get teamCode => $composableBuilder(
      column: $table.teamCode, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get level => $composableBuilder(
      column: $table.level, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get startDay => $composableBuilder(
      column: $table.startDay, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get startDate => $composableBuilder(
      column: $table.startDate, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<AssignmentStatus?, AssignmentStatus, String>
      get progressStatus => $composableBuilder(
          column: $table.progressStatus,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<Map<String, dynamic>?, Map<String, dynamic>,
          String>
      get allocatedResources => $composableBuilder(
          column: $table.allocatedResources,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<List<String>?, List<String>, String>
      get forms => $composableBuilder(
          column: $table.forms,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<EntityScope, EntityScope, String> get scope =>
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

  ColumnOrderings<String> get activityName => $composableBuilder(
      column: $table.activityName,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get orgUnitCode => $composableBuilder(
      column: $table.orgUnitCode, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get orgUnitName => $composableBuilder(
      column: $table.orgUnitName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get teamCode => $composableBuilder(
      column: $table.teamCode, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get level => $composableBuilder(
      column: $table.level, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get startDay => $composableBuilder(
      column: $table.startDay, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get startDate => $composableBuilder(
      column: $table.startDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get progressStatus => $composableBuilder(
      column: $table.progressStatus,
      builder: (column) => ColumnOrderings(column));

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

  GeneratedColumn<String> get activityName => $composableBuilder(
      column: $table.activityName, builder: (column) => column);

  GeneratedColumn<String> get orgUnitCode => $composableBuilder(
      column: $table.orgUnitCode, builder: (column) => column);

  GeneratedColumn<String> get orgUnitName => $composableBuilder(
      column: $table.orgUnitName, builder: (column) => column);

  GeneratedColumn<String> get teamCode =>
      $composableBuilder(column: $table.teamCode, builder: (column) => column);

  GeneratedColumn<int> get level =>
      $composableBuilder(column: $table.level, builder: (column) => column);

  GeneratedColumn<int> get startDay =>
      $composableBuilder(column: $table.startDay, builder: (column) => column);

  GeneratedColumn<DateTime> get startDate =>
      $composableBuilder(column: $table.startDate, builder: (column) => column);

  GeneratedColumnWithTypeConverter<AssignmentStatus?, String>
      get progressStatus => $composableBuilder(
          column: $table.progressStatus, builder: (column) => column);

  GeneratedColumnWithTypeConverter<Map<String, dynamic>?, String>
      get allocatedResources => $composableBuilder(
          column: $table.allocatedResources, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<String>?, String> get forms =>
      $composableBuilder(column: $table.forms, builder: (column) => column);

  GeneratedColumnWithTypeConverter<EntityScope, String> get scope =>
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
            Value<DateTime?> lastModifiedDate = const Value.absent(),
            Value<DateTime?> createdDate = const Value.absent(),
            Value<String> activity = const Value.absent(),
            Value<String> team = const Value.absent(),
            Value<String> orgUnit = const Value.absent(),
            Value<String> activityName = const Value.absent(),
            Value<String> orgUnitCode = const Value.absent(),
            Value<String> orgUnitName = const Value.absent(),
            Value<String> teamCode = const Value.absent(),
            Value<String?> parent = const Value.absent(),
            Value<int?> level = const Value.absent(),
            Value<int?> startDay = const Value.absent(),
            Value<DateTime?> startDate = const Value.absent(),
            Value<AssignmentStatus?> progressStatus = const Value.absent(),
            Value<Map<String, dynamic>?> allocatedResources =
                const Value.absent(),
            Value<List<String>?> forms = const Value.absent(),
            Value<EntityScope> scope = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              AssignmentsCompanion(
            id: id,
            lastModifiedDate: lastModifiedDate,
            createdDate: createdDate,
            activity: activity,
            team: team,
            orgUnit: orgUnit,
            activityName: activityName,
            orgUnitCode: orgUnitCode,
            orgUnitName: orgUnitName,
            teamCode: teamCode,
            parent: parent,
            level: level,
            startDay: startDay,
            startDate: startDate,
            progressStatus: progressStatus,
            allocatedResources: allocatedResources,
            forms: forms,
            scope: scope,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            Value<DateTime?> lastModifiedDate = const Value.absent(),
            Value<DateTime?> createdDate = const Value.absent(),
            required String activity,
            required String team,
            required String orgUnit,
            required String activityName,
            required String orgUnitCode,
            required String orgUnitName,
            required String teamCode,
            Value<String?> parent = const Value.absent(),
            Value<int?> level = const Value.absent(),
            Value<int?> startDay = const Value.absent(),
            Value<DateTime?> startDate = const Value.absent(),
            Value<AssignmentStatus?> progressStatus = const Value.absent(),
            Value<Map<String, dynamic>?> allocatedResources =
                const Value.absent(),
            Value<List<String>?> forms = const Value.absent(),
            required EntityScope scope,
            Value<int> rowid = const Value.absent(),
          }) =>
              AssignmentsCompanion.insert(
            id: id,
            lastModifiedDate: lastModifiedDate,
            createdDate: createdDate,
            activity: activity,
            team: team,
            orgUnit: orgUnit,
            activityName: activityName,
            orgUnitCode: orgUnitCode,
            orgUnitName: orgUnitName,
            teamCode: teamCode,
            parent: parent,
            level: level,
            startDay: startDay,
            startDate: startDate,
            progressStatus: progressStatus,
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
                    await $_getPrefetchedData<Assignment, $AssignmentsTable,
                            DataSubmission>(
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
typedef $$FormVersionsTableCreateCompanionBuilder = FormVersionsCompanion
    Function({
  required String id,
  Value<DateTime?> lastModifiedDate,
  Value<DateTime?> createdDate,
  Value<String?> name,
  Value<String?> displayName,
  Value<String?> code,
  Value<Map<String, dynamic>?> label,
  Value<List<Translation>> translations,
  required int version,
  Value<List<Template>> treeFields,
  Value<List<FormOption>> options,
  Value<List<DOptionSet>> optionSets,
  Value<String?> defaultLocal,
  Value<List<Template>> fieldsConf,
  Value<List<Template>> sections,
  Value<String?> description,
  Value<ValidationStrategy?> validationStrategy,
  Value<int> rowid,
});
typedef $$FormVersionsTableUpdateCompanionBuilder = FormVersionsCompanion
    Function({
  Value<String> id,
  Value<DateTime?> lastModifiedDate,
  Value<DateTime?> createdDate,
  Value<String?> name,
  Value<String?> displayName,
  Value<String?> code,
  Value<Map<String, dynamic>?> label,
  Value<List<Translation>> translations,
  Value<int> version,
  Value<List<Template>> treeFields,
  Value<List<FormOption>> options,
  Value<List<DOptionSet>> optionSets,
  Value<String?> defaultLocal,
  Value<List<Template>> fieldsConf,
  Value<List<Template>> sections,
  Value<String?> description,
  Value<ValidationStrategy?> validationStrategy,
  Value<int> rowid,
});

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

  ColumnWithTypeConverterFilters<Map<String, dynamic>?, Map<String, dynamic>,
          String>
      get label => $composableBuilder(
          column: $table.label,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<List<Translation>, List<Translation>, String>
      get translations => $composableBuilder(
          column: $table.translations,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<String> get form => $composableBuilder(
      column: $table.form, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get version => $composableBuilder(
      column: $table.version, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<List<Template>, List<Template>, String>
      get treeFields => $composableBuilder(
          column: $table.treeFields,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<List<FormOption>, List<FormOption>, String>
      get options => $composableBuilder(
          column: $table.options,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<List<DOptionSet>, List<DOptionSet>, String>
      get optionSets => $composableBuilder(
          column: $table.optionSets,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<String> get defaultLocal => $composableBuilder(
      column: $table.defaultLocal, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<List<Template>, List<Template>, String>
      get fieldsConf => $composableBuilder(
          column: $table.fieldsConf,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<List<Template>, List<Template>, String>
      get sections => $composableBuilder(
          column: $table.sections,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<ValidationStrategy?, ValidationStrategy,
          String>
      get validationStrategy => $composableBuilder(
          column: $table.validationStrategy,
          builder: (column) => ColumnWithTypeConverterFilters(column));
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

  ColumnOrderings<String> get label => $composableBuilder(
      column: $table.label, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get translations => $composableBuilder(
      column: $table.translations,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get form => $composableBuilder(
      column: $table.form, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get version => $composableBuilder(
      column: $table.version, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get treeFields => $composableBuilder(
      column: $table.treeFields, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get options => $composableBuilder(
      column: $table.options, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get optionSets => $composableBuilder(
      column: $table.optionSets, builder: (column) => ColumnOrderings(column));

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

  GeneratedColumnWithTypeConverter<Map<String, dynamic>?, String> get label =>
      $composableBuilder(column: $table.label, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<Translation>, String>
      get translations => $composableBuilder(
          column: $table.translations, builder: (column) => column);

  GeneratedColumn<String> get form =>
      $composableBuilder(column: $table.form, builder: (column) => column);

  GeneratedColumn<int> get version =>
      $composableBuilder(column: $table.version, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<Template>, String> get treeFields =>
      $composableBuilder(
          column: $table.treeFields, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<FormOption>, String> get options =>
      $composableBuilder(column: $table.options, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<DOptionSet>, String> get optionSets =>
      $composableBuilder(
          column: $table.optionSets, builder: (column) => column);

  GeneratedColumn<String> get defaultLocal => $composableBuilder(
      column: $table.defaultLocal, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<Template>, String> get fieldsConf =>
      $composableBuilder(
          column: $table.fieldsConf, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<Template>, String> get sections =>
      $composableBuilder(column: $table.sections, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => column);

  GeneratedColumnWithTypeConverter<ValidationStrategy?, String>
      get validationStrategy => $composableBuilder(
          column: $table.validationStrategy, builder: (column) => column);
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
    (
      FormVersion,
      BaseReferences<_$AppDatabase, $FormVersionsTable, FormVersion>
    ),
    FormVersion,
    PrefetchHooks Function()> {
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
            Value<DateTime?> lastModifiedDate = const Value.absent(),
            Value<DateTime?> createdDate = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> displayName = const Value.absent(),
            Value<String?> code = const Value.absent(),
            Value<Map<String, dynamic>?> label = const Value.absent(),
            Value<List<Translation>> translations = const Value.absent(),
            Value<int> version = const Value.absent(),
            Value<List<Template>> treeFields = const Value.absent(),
            Value<List<FormOption>> options = const Value.absent(),
            Value<List<DOptionSet>> optionSets = const Value.absent(),
            Value<String?> defaultLocal = const Value.absent(),
            Value<List<Template>> fieldsConf = const Value.absent(),
            Value<List<Template>> sections = const Value.absent(),
            Value<String?> description = const Value.absent(),
            Value<ValidationStrategy?> validationStrategy =
                const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              FormVersionsCompanion(
            id: id,
            lastModifiedDate: lastModifiedDate,
            createdDate: createdDate,
            name: name,
            displayName: displayName,
            code: code,
            label: label,
            translations: translations,
            version: version,
            treeFields: treeFields,
            options: options,
            optionSets: optionSets,
            defaultLocal: defaultLocal,
            fieldsConf: fieldsConf,
            sections: sections,
            description: description,
            validationStrategy: validationStrategy,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            Value<DateTime?> lastModifiedDate = const Value.absent(),
            Value<DateTime?> createdDate = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> displayName = const Value.absent(),
            Value<String?> code = const Value.absent(),
            Value<Map<String, dynamic>?> label = const Value.absent(),
            Value<List<Translation>> translations = const Value.absent(),
            required int version,
            Value<List<Template>> treeFields = const Value.absent(),
            Value<List<FormOption>> options = const Value.absent(),
            Value<List<DOptionSet>> optionSets = const Value.absent(),
            Value<String?> defaultLocal = const Value.absent(),
            Value<List<Template>> fieldsConf = const Value.absent(),
            Value<List<Template>> sections = const Value.absent(),
            Value<String?> description = const Value.absent(),
            Value<ValidationStrategy?> validationStrategy =
                const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              FormVersionsCompanion.insert(
            id: id,
            lastModifiedDate: lastModifiedDate,
            createdDate: createdDate,
            name: name,
            displayName: displayName,
            code: code,
            label: label,
            translations: translations,
            version: version,
            treeFields: treeFields,
            options: options,
            optionSets: optionSets,
            defaultLocal: defaultLocal,
            fieldsConf: fieldsConf,
            sections: sections,
            description: description,
            validationStrategy: validationStrategy,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
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
    (
      FormVersion,
      BaseReferences<_$AppDatabase, $FormVersionsTable, FormVersion>
    ),
    FormVersion,
    PrefetchHooks Function()>;
typedef $$MetadataSubmissionsTableCreateCompanionBuilder
    = MetadataSubmissionsCompanion Function({
  required String id,
  Value<DateTime?> lastModifiedDate,
  Value<DateTime?> createdDate,
  Value<String?> name,
  Value<String?> displayName,
  Value<String?> code,
  Value<Map<String, dynamic>?> label,
  Value<List<Translation>> translations,
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
  Value<DateTime?> lastModifiedDate,
  Value<DateTime?> createdDate,
  Value<String?> name,
  Value<String?> displayName,
  Value<String?> code,
  Value<Map<String, dynamic>?> label,
  Value<List<Translation>> translations,
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

  ColumnWithTypeConverterFilters<Map<String, dynamic>?, Map<String, dynamic>,
          String>
      get label => $composableBuilder(
          column: $table.label,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<List<Translation>, List<Translation>, String>
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

  ColumnOrderings<String> get label => $composableBuilder(
      column: $table.label, builder: (column) => ColumnOrderings(column));

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

  GeneratedColumnWithTypeConverter<Map<String, dynamic>?, String> get label =>
      $composableBuilder(column: $table.label, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<Translation>, String>
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
            Value<DateTime?> lastModifiedDate = const Value.absent(),
            Value<DateTime?> createdDate = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> displayName = const Value.absent(),
            Value<String?> code = const Value.absent(),
            Value<Map<String, dynamic>?> label = const Value.absent(),
            Value<List<Translation>> translations = const Value.absent(),
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
            label: label,
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
            Value<DateTime?> lastModifiedDate = const Value.absent(),
            Value<DateTime?> createdDate = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> displayName = const Value.absent(),
            Value<String?> code = const Value.absent(),
            Value<Map<String, dynamic>?> label = const Value.absent(),
            Value<List<Translation>> translations = const Value.absent(),
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
            label: label,
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
typedef $$DataFormTemplateVersionsTableCreateCompanionBuilder
    = DataFormTemplateVersionsCompanion Function({
  required String id,
  Value<DateTime?> lastModifiedDate,
  Value<DateTime?> createdDate,
  Value<String?> name,
  Value<String?> displayName,
  Value<String?> code,
  Value<Map<String, dynamic>?> label,
  Value<List<Translation>> translations,
  required int version,
  Value<String?> defaultLocal,
  required List<Template> fields,
  required List<Template> sections,
  Value<String?> description,
  Value<ValidationStrategy?> validationStrategy,
  Value<int> rowid,
});
typedef $$DataFormTemplateVersionsTableUpdateCompanionBuilder
    = DataFormTemplateVersionsCompanion Function({
  Value<String> id,
  Value<DateTime?> lastModifiedDate,
  Value<DateTime?> createdDate,
  Value<String?> name,
  Value<String?> displayName,
  Value<String?> code,
  Value<Map<String, dynamic>?> label,
  Value<List<Translation>> translations,
  Value<int> version,
  Value<String?> defaultLocal,
  Value<List<Template>> fields,
  Value<List<Template>> sections,
  Value<String?> description,
  Value<ValidationStrategy?> validationStrategy,
  Value<int> rowid,
});

final class $$DataFormTemplateVersionsTableReferences extends BaseReferences<
    _$AppDatabase, $DataFormTemplateVersionsTable, DataFormTemplateVersion> {
  $$DataFormTemplateVersionsTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$DataSubmissionsTable, List<DataSubmission>>
      _formSubmissionsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.dataSubmissions,
              aliasName: $_aliasNameGenerator(
                  db.dataFormTemplateVersions.id, db.dataSubmissions.form));

  $$DataSubmissionsTableProcessedTableManager get formSubmissions {
    final manager =
        $$DataSubmissionsTableTableManager($_db, $_db.dataSubmissions)
            .filter((f) => f.form.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_formSubmissionsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$DataFormTemplateVersionsTableFilterComposer
    extends Composer<_$AppDatabase, $DataFormTemplateVersionsTable> {
  $$DataFormTemplateVersionsTableFilterComposer({
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

  ColumnWithTypeConverterFilters<Map<String, dynamic>?, Map<String, dynamic>,
          String>
      get label => $composableBuilder(
          column: $table.label,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<List<Translation>, List<Translation>, String>
      get translations => $composableBuilder(
          column: $table.translations,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<int> get version => $composableBuilder(
      column: $table.version, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get defaultLocal => $composableBuilder(
      column: $table.defaultLocal, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<List<Template>, List<Template>, String>
      get fields => $composableBuilder(
          column: $table.fields,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<List<Template>, List<Template>, String>
      get sections => $composableBuilder(
          column: $table.sections,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<ValidationStrategy?, ValidationStrategy,
          String>
      get validationStrategy => $composableBuilder(
          column: $table.validationStrategy,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  Expression<bool> formSubmissions(
      Expression<bool> Function($$DataSubmissionsTableFilterComposer f) f) {
    final $$DataSubmissionsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.dataSubmissions,
        getReferencedColumn: (t) => t.form,
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

class $$DataFormTemplateVersionsTableOrderingComposer
    extends Composer<_$AppDatabase, $DataFormTemplateVersionsTable> {
  $$DataFormTemplateVersionsTableOrderingComposer({
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

  ColumnOrderings<String> get label => $composableBuilder(
      column: $table.label, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get translations => $composableBuilder(
      column: $table.translations,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get version => $composableBuilder(
      column: $table.version, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get defaultLocal => $composableBuilder(
      column: $table.defaultLocal,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get fields => $composableBuilder(
      column: $table.fields, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get sections => $composableBuilder(
      column: $table.sections, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get validationStrategy => $composableBuilder(
      column: $table.validationStrategy,
      builder: (column) => ColumnOrderings(column));
}

class $$DataFormTemplateVersionsTableAnnotationComposer
    extends Composer<_$AppDatabase, $DataFormTemplateVersionsTable> {
  $$DataFormTemplateVersionsTableAnnotationComposer({
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

  GeneratedColumnWithTypeConverter<Map<String, dynamic>?, String> get label =>
      $composableBuilder(column: $table.label, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<Translation>, String>
      get translations => $composableBuilder(
          column: $table.translations, builder: (column) => column);

  GeneratedColumn<int> get version =>
      $composableBuilder(column: $table.version, builder: (column) => column);

  GeneratedColumn<String> get defaultLocal => $composableBuilder(
      column: $table.defaultLocal, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<Template>, String> get fields =>
      $composableBuilder(column: $table.fields, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<Template>, String> get sections =>
      $composableBuilder(column: $table.sections, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => column);

  GeneratedColumnWithTypeConverter<ValidationStrategy?, String>
      get validationStrategy => $composableBuilder(
          column: $table.validationStrategy, builder: (column) => column);

  Expression<T> formSubmissions<T extends Object>(
      Expression<T> Function($$DataSubmissionsTableAnnotationComposer a) f) {
    final $$DataSubmissionsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.dataSubmissions,
        getReferencedColumn: (t) => t.form,
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

class $$DataFormTemplateVersionsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $DataFormTemplateVersionsTable,
    DataFormTemplateVersion,
    $$DataFormTemplateVersionsTableFilterComposer,
    $$DataFormTemplateVersionsTableOrderingComposer,
    $$DataFormTemplateVersionsTableAnnotationComposer,
    $$DataFormTemplateVersionsTableCreateCompanionBuilder,
    $$DataFormTemplateVersionsTableUpdateCompanionBuilder,
    (DataFormTemplateVersion, $$DataFormTemplateVersionsTableReferences),
    DataFormTemplateVersion,
    PrefetchHooks Function({bool formSubmissions})> {
  $$DataFormTemplateVersionsTableTableManager(
      _$AppDatabase db, $DataFormTemplateVersionsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DataFormTemplateVersionsTableFilterComposer(
                  $db: db, $table: table),
          createOrderingComposer: () =>
              $$DataFormTemplateVersionsTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DataFormTemplateVersionsTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<DateTime?> lastModifiedDate = const Value.absent(),
            Value<DateTime?> createdDate = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> displayName = const Value.absent(),
            Value<String?> code = const Value.absent(),
            Value<Map<String, dynamic>?> label = const Value.absent(),
            Value<List<Translation>> translations = const Value.absent(),
            Value<int> version = const Value.absent(),
            Value<String?> defaultLocal = const Value.absent(),
            Value<List<Template>> fields = const Value.absent(),
            Value<List<Template>> sections = const Value.absent(),
            Value<String?> description = const Value.absent(),
            Value<ValidationStrategy?> validationStrategy =
                const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DataFormTemplateVersionsCompanion(
            id: id,
            lastModifiedDate: lastModifiedDate,
            createdDate: createdDate,
            name: name,
            displayName: displayName,
            code: code,
            label: label,
            translations: translations,
            version: version,
            defaultLocal: defaultLocal,
            fields: fields,
            sections: sections,
            description: description,
            validationStrategy: validationStrategy,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            Value<DateTime?> lastModifiedDate = const Value.absent(),
            Value<DateTime?> createdDate = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> displayName = const Value.absent(),
            Value<String?> code = const Value.absent(),
            Value<Map<String, dynamic>?> label = const Value.absent(),
            Value<List<Translation>> translations = const Value.absent(),
            required int version,
            Value<String?> defaultLocal = const Value.absent(),
            required List<Template> fields,
            required List<Template> sections,
            Value<String?> description = const Value.absent(),
            Value<ValidationStrategy?> validationStrategy =
                const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DataFormTemplateVersionsCompanion.insert(
            id: id,
            lastModifiedDate: lastModifiedDate,
            createdDate: createdDate,
            name: name,
            displayName: displayName,
            code: code,
            label: label,
            translations: translations,
            version: version,
            defaultLocal: defaultLocal,
            fields: fields,
            sections: sections,
            description: description,
            validationStrategy: validationStrategy,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$DataFormTemplateVersionsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({formSubmissions = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (formSubmissions) db.dataSubmissions
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (formSubmissions)
                    await $_getPrefetchedData<DataFormTemplateVersion,
                            $DataFormTemplateVersionsTable, DataSubmission>(
                        currentTable: table,
                        referencedTable:
                            $$DataFormTemplateVersionsTableReferences
                                ._formSubmissionsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$DataFormTemplateVersionsTableReferences(
                                    db, table, p0)
                                .formSubmissions,
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

typedef $$DataFormTemplateVersionsTableProcessedTableManager
    = ProcessedTableManager<
        _$AppDatabase,
        $DataFormTemplateVersionsTable,
        DataFormTemplateVersion,
        $$DataFormTemplateVersionsTableFilterComposer,
        $$DataFormTemplateVersionsTableOrderingComposer,
        $$DataFormTemplateVersionsTableAnnotationComposer,
        $$DataFormTemplateVersionsTableCreateCompanionBuilder,
        $$DataFormTemplateVersionsTableUpdateCompanionBuilder,
        (DataFormTemplateVersion, $$DataFormTemplateVersionsTableReferences),
        DataFormTemplateVersion,
        PrefetchHooks Function({bool formSubmissions})>;
typedef $$DataSubmissionsTableCreateCompanionBuilder = DataSubmissionsCompanion
    Function({
  required String id,
  Value<DateTime?> lastModifiedDate,
  Value<DateTime?> createdDate,
  Value<bool> deleted,
  required String form,
  required String assignment,
  required String team,
  Value<String?> orgUnit,
  Value<AssignmentStatus?> progressStatus,
  required SubmissionStatus status,
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
  Value<DateTime?> lastModifiedDate,
  Value<DateTime?> createdDate,
  Value<bool> deleted,
  Value<String> form,
  Value<String> assignment,
  Value<String> team,
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

  static $DataFormTemplateVersionsTable _formTable(_$AppDatabase db) =>
      db.dataFormTemplateVersions.createAlias($_aliasNameGenerator(
          db.dataSubmissions.form, db.dataFormTemplateVersions.id));

  $$DataFormTemplateVersionsTableProcessedTableManager get form {
    final $_column = $_itemColumn<String>('form')!;

    final manager = $$DataFormTemplateVersionsTableTableManager(
            $_db, $_db.dataFormTemplateVersions)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_formTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $AssignmentsTable _assignmentTable(_$AppDatabase db) =>
      db.assignments.createAlias($_aliasNameGenerator(
          db.dataSubmissions.assignment, db.assignments.id));

  $$AssignmentsTableProcessedTableManager get assignment {
    final $_column = $_itemColumn<String>('assignment')!;

    final manager = $$AssignmentsTableTableManager($_db, $_db.assignments)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_assignmentTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $TeamsTable _teamTable(_$AppDatabase db) => db.teams
      .createAlias($_aliasNameGenerator(db.dataSubmissions.team, db.teams.id));

  $$TeamsTableProcessedTableManager get team {
    final $_column = $_itemColumn<String>('team')!;

    final manager = $$TeamsTableTableManager($_db, $_db.teams)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_teamTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $OrgUnitsTable _orgUnitTable(_$AppDatabase db) =>
      db.orgUnits.createAlias(
          $_aliasNameGenerator(db.dataSubmissions.orgUnit, db.orgUnits.id));

  $$OrgUnitsTableProcessedTableManager? get orgUnit {
    final $_column = $_itemColumn<String>('org_unit');
    if ($_column == null) return null;
    final manager = $$OrgUnitsTableTableManager($_db, $_db.orgUnits)
        .filter((f) => f.id.sqlEquals($_column));
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
    final manager = $$RepeatInstancesTableTableManager(
            $_db, $_db.repeatInstances)
        .filter((f) => f.submission.id.sqlEquals($_itemColumn<String>('id')!));

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
        .filter((f) => f.submission.id.sqlEquals($_itemColumn<String>('id')!));

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

  $$DataFormTemplateVersionsTableFilterComposer get form {
    final $$DataFormTemplateVersionsTableFilterComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.form,
            referencedTable: $db.dataFormTemplateVersions,
            getReferencedColumn: (t) => t.id,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$DataFormTemplateVersionsTableFilterComposer(
                  $db: $db,
                  $table: $db.dataFormTemplateVersions,
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

  $$DataFormTemplateVersionsTableOrderingComposer get form {
    final $$DataFormTemplateVersionsTableOrderingComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.form,
            referencedTable: $db.dataFormTemplateVersions,
            getReferencedColumn: (t) => t.id,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$DataFormTemplateVersionsTableOrderingComposer(
                  $db: $db,
                  $table: $db.dataFormTemplateVersions,
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

  $$DataFormTemplateVersionsTableAnnotationComposer get form {
    final $$DataFormTemplateVersionsTableAnnotationComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.form,
            referencedTable: $db.dataFormTemplateVersions,
            getReferencedColumn: (t) => t.id,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$DataFormTemplateVersionsTableAnnotationComposer(
                  $db: $db,
                  $table: $db.dataFormTemplateVersions,
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
        {bool form,
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
            Value<DateTime?> lastModifiedDate = const Value.absent(),
            Value<DateTime?> createdDate = const Value.absent(),
            Value<bool> deleted = const Value.absent(),
            Value<String> form = const Value.absent(),
            Value<String> assignment = const Value.absent(),
            Value<String> team = const Value.absent(),
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
            Value<DateTime?> lastModifiedDate = const Value.absent(),
            Value<DateTime?> createdDate = const Value.absent(),
            Value<bool> deleted = const Value.absent(),
            required String form,
            required String assignment,
            required String team,
            Value<String?> orgUnit = const Value.absent(),
            Value<AssignmentStatus?> progressStatus = const Value.absent(),
            required SubmissionStatus status,
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
              {form = false,
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
                if (form) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.form,
                    referencedTable:
                        $$DataSubmissionsTableReferences._formTable(db),
                    referencedColumn:
                        $$DataSubmissionsTableReferences._formTable(db).id,
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
                    await $_getPrefetchedData<DataSubmission,
                            $DataSubmissionsTable, RepeatInstance>(
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
                    await $_getPrefetchedData<DataSubmission,
                            $DataSubmissionsTable, DataValue>(
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
        {bool form,
        bool assignment,
        bool team,
        bool orgUnit,
        bool repeatInstancesRefs,
        bool dataValuesRefs})>;
typedef $$RepeatInstancesTableCreateCompanionBuilder = RepeatInstancesCompanion
    Function({
  required String id,
  Value<DateTime?> lastModifiedDate,
  Value<DateTime?> createdDate,
  required String templatePath,
  required String submission,
  Value<String?> parent,
  required int repeatIndex,
  Value<int> rowid,
});
typedef $$RepeatInstancesTableUpdateCompanionBuilder = RepeatInstancesCompanion
    Function({
  Value<String> id,
  Value<DateTime?> lastModifiedDate,
  Value<DateTime?> createdDate,
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
    final $_column = $_itemColumn<String>('submission')!;

    final manager =
        $$DataSubmissionsTableTableManager($_db, $_db.dataSubmissions)
            .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_submissionTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $RepeatInstancesTable _parentTable(_$AppDatabase db) =>
      db.repeatInstances.createAlias($_aliasNameGenerator(
          db.repeatInstances.parent, db.repeatInstances.id));

  $$RepeatInstancesTableProcessedTableManager? get parent {
    final $_column = $_itemColumn<String>('parent');
    if ($_column == null) return null;
    final manager =
        $$RepeatInstancesTableTableManager($_db, $_db.repeatInstances)
            .filter((f) => f.id.sqlEquals($_column));
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
        .filter((f) => f.parent.id.sqlEquals($_itemColumn<String>('id')!));

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
            Value<DateTime?> lastModifiedDate = const Value.absent(),
            Value<DateTime?> createdDate = const Value.absent(),
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
            Value<DateTime?> lastModifiedDate = const Value.absent(),
            Value<DateTime?> createdDate = const Value.absent(),
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
                    await $_getPrefetchedData<RepeatInstance,
                            $RepeatInstancesTable, DataValue>(
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
  Value<DateTime?> lastModifiedDate,
  Value<DateTime?> createdDate,
  Value<String?> name,
  Value<String?> displayName,
  Value<String?> code,
  Value<Map<String, dynamic>?> label,
  Value<List<Translation>> translations,
  Value<String?> description,
  required ValueType type,
  Value<bool?> mandatory,
  Value<String?> defaultValue,
  Value<ScannedCodeProperties?> scannedCodeProperties,
  Value<bool?> gs1Enabled,
  Value<MetadataResourceType?> resourceType,
  Value<String?> resourceMetadataSchema,
  Value<int> rowid,
});
typedef $$DataElementsTableUpdateCompanionBuilder = DataElementsCompanion
    Function({
  Value<String> id,
  Value<DateTime?> lastModifiedDate,
  Value<DateTime?> createdDate,
  Value<String?> name,
  Value<String?> displayName,
  Value<String?> code,
  Value<Map<String, dynamic>?> label,
  Value<List<Translation>> translations,
  Value<String?> description,
  Value<ValueType> type,
  Value<bool?> mandatory,
  Value<String?> defaultValue,
  Value<ScannedCodeProperties?> scannedCodeProperties,
  Value<bool?> gs1Enabled,
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
        .filter((f) => f.dataElement.id.sqlEquals($_itemColumn<String>('id')!));

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

  ColumnWithTypeConverterFilters<Map<String, dynamic>?, Map<String, dynamic>,
          String>
      get label => $composableBuilder(
          column: $table.label,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<List<Translation>, List<Translation>, String>
      get translations => $composableBuilder(
          column: $table.translations,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<ValueType, ValueType, String> get type =>
      $composableBuilder(
          column: $table.type,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<bool> get mandatory => $composableBuilder(
      column: $table.mandatory, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get defaultValue => $composableBuilder(
      column: $table.defaultValue, builder: (column) => ColumnFilters(column));

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

  ColumnOrderings<String> get label => $composableBuilder(
      column: $table.label, builder: (column) => ColumnOrderings(column));

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

  GeneratedColumnWithTypeConverter<Map<String, dynamic>?, String> get label =>
      $composableBuilder(column: $table.label, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<Translation>, String>
      get translations => $composableBuilder(
          column: $table.translations, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => column);

  GeneratedColumnWithTypeConverter<ValueType, String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<bool> get mandatory =>
      $composableBuilder(column: $table.mandatory, builder: (column) => column);

  GeneratedColumn<String> get defaultValue => $composableBuilder(
      column: $table.defaultValue, builder: (column) => column);

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
            Value<DateTime?> lastModifiedDate = const Value.absent(),
            Value<DateTime?> createdDate = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> displayName = const Value.absent(),
            Value<String?> code = const Value.absent(),
            Value<Map<String, dynamic>?> label = const Value.absent(),
            Value<List<Translation>> translations = const Value.absent(),
            Value<String?> description = const Value.absent(),
            Value<ValueType> type = const Value.absent(),
            Value<bool?> mandatory = const Value.absent(),
            Value<String?> defaultValue = const Value.absent(),
            Value<ScannedCodeProperties?> scannedCodeProperties =
                const Value.absent(),
            Value<bool?> gs1Enabled = const Value.absent(),
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
            label: label,
            translations: translations,
            description: description,
            type: type,
            mandatory: mandatory,
            defaultValue: defaultValue,
            scannedCodeProperties: scannedCodeProperties,
            gs1Enabled: gs1Enabled,
            resourceType: resourceType,
            resourceMetadataSchema: resourceMetadataSchema,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            Value<DateTime?> lastModifiedDate = const Value.absent(),
            Value<DateTime?> createdDate = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> displayName = const Value.absent(),
            Value<String?> code = const Value.absent(),
            Value<Map<String, dynamic>?> label = const Value.absent(),
            Value<List<Translation>> translations = const Value.absent(),
            Value<String?> description = const Value.absent(),
            required ValueType type,
            Value<bool?> mandatory = const Value.absent(),
            Value<String?> defaultValue = const Value.absent(),
            Value<ScannedCodeProperties?> scannedCodeProperties =
                const Value.absent(),
            Value<bool?> gs1Enabled = const Value.absent(),
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
            label: label,
            translations: translations,
            description: description,
            type: type,
            mandatory: mandatory,
            defaultValue: defaultValue,
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
                    await $_getPrefetchedData<DataElement, $DataElementsTable,
                            DataValue>(
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
  Value<DateTime?> lastModifiedDate,
  Value<DateTime?> createdDate,
  required String templatePath,
  Value<String?> parent,
  required String submission,
  required String dataElement,
  Value<String?> value,
  Value<int> rowid,
});
typedef $$DataValuesTableUpdateCompanionBuilder = DataValuesCompanion Function({
  Value<String> id,
  Value<DateTime?> lastModifiedDate,
  Value<DateTime?> createdDate,
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
    final $_column = $_itemColumn<String>('parent');
    if ($_column == null) return null;
    final manager =
        $$RepeatInstancesTableTableManager($_db, $_db.repeatInstances)
            .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_parentTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $DataSubmissionsTable _submissionTable(_$AppDatabase db) =>
      db.dataSubmissions.createAlias($_aliasNameGenerator(
          db.dataValues.submission, db.dataSubmissions.id));

  $$DataSubmissionsTableProcessedTableManager get submission {
    final $_column = $_itemColumn<String>('submission')!;

    final manager =
        $$DataSubmissionsTableTableManager($_db, $_db.dataSubmissions)
            .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_submissionTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $DataElementsTable _dataElementTable(_$AppDatabase db) =>
      db.dataElements.createAlias(
          $_aliasNameGenerator(db.dataValues.dataElement, db.dataElements.id));

  $$DataElementsTableProcessedTableManager get dataElement {
    final $_column = $_itemColumn<String>('data_element')!;

    final manager = $$DataElementsTableTableManager($_db, $_db.dataElements)
        .filter((f) => f.id.sqlEquals($_column));
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
            Value<DateTime?> lastModifiedDate = const Value.absent(),
            Value<DateTime?> createdDate = const Value.absent(),
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
            Value<DateTime?> lastModifiedDate = const Value.absent(),
            Value<DateTime?> createdDate = const Value.absent(),
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
  Value<DateTime?> lastModifiedDate,
  Value<DateTime?> createdDate,
  Value<String?> name,
  Value<String?> displayName,
  Value<String?> code,
  Value<Map<String, dynamic>?> label,
  Value<List<Translation>> translations,
  Value<List<FormOption>> options,
  Value<int> rowid,
});
typedef $$DataOptionSetsTableUpdateCompanionBuilder = DataOptionSetsCompanion
    Function({
  Value<String> id,
  Value<DateTime?> lastModifiedDate,
  Value<DateTime?> createdDate,
  Value<String?> name,
  Value<String?> displayName,
  Value<String?> code,
  Value<Map<String, dynamic>?> label,
  Value<List<Translation>> translations,
  Value<List<FormOption>> options,
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
        .filter((f) => f.optionSet.id.sqlEquals($_itemColumn<String>('id')!));

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

  ColumnWithTypeConverterFilters<Map<String, dynamic>?, Map<String, dynamic>,
          String>
      get label => $composableBuilder(
          column: $table.label,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<List<Translation>, List<Translation>, String>
      get translations => $composableBuilder(
          column: $table.translations,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<List<FormOption>, List<FormOption>, String>
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

  ColumnOrderings<String> get label => $composableBuilder(
      column: $table.label, builder: (column) => ColumnOrderings(column));

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

  GeneratedColumnWithTypeConverter<Map<String, dynamic>?, String> get label =>
      $composableBuilder(column: $table.label, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<Translation>, String>
      get translations => $composableBuilder(
          column: $table.translations, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<FormOption>, String> get options =>
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
            Value<DateTime?> lastModifiedDate = const Value.absent(),
            Value<DateTime?> createdDate = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> displayName = const Value.absent(),
            Value<String?> code = const Value.absent(),
            Value<Map<String, dynamic>?> label = const Value.absent(),
            Value<List<Translation>> translations = const Value.absent(),
            Value<List<FormOption>> options = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DataOptionSetsCompanion(
            id: id,
            lastModifiedDate: lastModifiedDate,
            createdDate: createdDate,
            name: name,
            displayName: displayName,
            code: code,
            label: label,
            translations: translations,
            options: options,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            Value<DateTime?> lastModifiedDate = const Value.absent(),
            Value<DateTime?> createdDate = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> displayName = const Value.absent(),
            Value<String?> code = const Value.absent(),
            Value<Map<String, dynamic>?> label = const Value.absent(),
            Value<List<Translation>> translations = const Value.absent(),
            Value<List<FormOption>> options = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DataOptionSetsCompanion.insert(
            id: id,
            lastModifiedDate: lastModifiedDate,
            createdDate: createdDate,
            name: name,
            displayName: displayName,
            code: code,
            label: label,
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
                    await $_getPrefetchedData<DataOptionSet,
                            $DataOptionSetsTable, DataOption>(
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
  Value<DateTime?> lastModifiedDate,
  Value<DateTime?> createdDate,
  Value<String?> name,
  Value<String?> displayName,
  Value<String?> code,
  Value<Map<String, dynamic>?> label,
  Value<List<Translation>> translations,
  required String optionSet,
  Value<int> order,
  Value<int> rowid,
});
typedef $$DataOptionsTableUpdateCompanionBuilder = DataOptionsCompanion
    Function({
  Value<String> id,
  Value<DateTime?> lastModifiedDate,
  Value<DateTime?> createdDate,
  Value<String?> name,
  Value<String?> displayName,
  Value<String?> code,
  Value<Map<String, dynamic>?> label,
  Value<List<Translation>> translations,
  Value<String> optionSet,
  Value<int> order,
  Value<int> rowid,
});

final class $$DataOptionsTableReferences
    extends BaseReferences<_$AppDatabase, $DataOptionsTable, DataOption> {
  $$DataOptionsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $DataOptionSetsTable _optionSetTable(_$AppDatabase db) =>
      db.dataOptionSets.createAlias(
          $_aliasNameGenerator(db.dataOptions.optionSet, db.dataOptionSets.id));

  $$DataOptionSetsTableProcessedTableManager get optionSet {
    final $_column = $_itemColumn<String>('option_set')!;

    final manager = $$DataOptionSetsTableTableManager($_db, $_db.dataOptionSets)
        .filter((f) => f.id.sqlEquals($_column));
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

  ColumnWithTypeConverterFilters<Map<String, dynamic>?, Map<String, dynamic>,
          String>
      get label => $composableBuilder(
          column: $table.label,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<List<Translation>, List<Translation>, String>
      get translations => $composableBuilder(
          column: $table.translations,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<int> get order => $composableBuilder(
      column: $table.order, builder: (column) => ColumnFilters(column));

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

  ColumnOrderings<String> get label => $composableBuilder(
      column: $table.label, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get translations => $composableBuilder(
      column: $table.translations,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get order => $composableBuilder(
      column: $table.order, builder: (column) => ColumnOrderings(column));

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

  GeneratedColumnWithTypeConverter<Map<String, dynamic>?, String> get label =>
      $composableBuilder(column: $table.label, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<Translation>, String>
      get translations => $composableBuilder(
          column: $table.translations, builder: (column) => column);

  GeneratedColumn<int> get order =>
      $composableBuilder(column: $table.order, builder: (column) => column);

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
            Value<DateTime?> lastModifiedDate = const Value.absent(),
            Value<DateTime?> createdDate = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> displayName = const Value.absent(),
            Value<String?> code = const Value.absent(),
            Value<Map<String, dynamic>?> label = const Value.absent(),
            Value<List<Translation>> translations = const Value.absent(),
            Value<String> optionSet = const Value.absent(),
            Value<int> order = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DataOptionsCompanion(
            id: id,
            lastModifiedDate: lastModifiedDate,
            createdDate: createdDate,
            name: name,
            displayName: displayName,
            code: code,
            label: label,
            translations: translations,
            optionSet: optionSet,
            order: order,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            Value<DateTime?> lastModifiedDate = const Value.absent(),
            Value<DateTime?> createdDate = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> displayName = const Value.absent(),
            Value<String?> code = const Value.absent(),
            Value<Map<String, dynamic>?> label = const Value.absent(),
            Value<List<Translation>> translations = const Value.absent(),
            required String optionSet,
            Value<int> order = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DataOptionsCompanion.insert(
            id: id,
            lastModifiedDate: lastModifiedDate,
            createdDate: createdDate,
            name: name,
            displayName: displayName,
            code: code,
            label: label,
            translations: translations,
            optionSet: optionSet,
            order: order,
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
typedef $$UserFormPermissionsTableCreateCompanionBuilder
    = UserFormPermissionsCompanion Function({
  required String team,
  required String form,
  Value<DateTime?> validFrom,
  Value<DateTime?> validTo,
  required List<FormPermission> permissions,
  Value<int> rowid,
});
typedef $$UserFormPermissionsTableUpdateCompanionBuilder
    = UserFormPermissionsCompanion Function({
  Value<String> team,
  Value<String> form,
  Value<DateTime?> validFrom,
  Value<DateTime?> validTo,
  Value<List<FormPermission>> permissions,
  Value<int> rowid,
});

final class $$UserFormPermissionsTableReferences extends BaseReferences<
    _$AppDatabase, $UserFormPermissionsTable, UserFormPermission> {
  $$UserFormPermissionsTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $TeamsTable _teamTable(_$AppDatabase db) => db.teams.createAlias(
      $_aliasNameGenerator(db.userFormPermissions.team, db.teams.id));

  $$TeamsTableProcessedTableManager get team {
    final $_column = $_itemColumn<String>('team')!;

    final manager = $$TeamsTableTableManager($_db, $_db.teams)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_teamTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$UserFormPermissionsTableFilterComposer
    extends Composer<_$AppDatabase, $UserFormPermissionsTable> {
  $$UserFormPermissionsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get form => $composableBuilder(
      column: $table.form, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get validFrom => $composableBuilder(
      column: $table.validFrom, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get validTo => $composableBuilder(
      column: $table.validTo, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<List<FormPermission>, List<FormPermission>,
          String>
      get permissions => $composableBuilder(
          column: $table.permissions,
          builder: (column) => ColumnWithTypeConverterFilters(column));

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
}

class $$UserFormPermissionsTableOrderingComposer
    extends Composer<_$AppDatabase, $UserFormPermissionsTable> {
  $$UserFormPermissionsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get form => $composableBuilder(
      column: $table.form, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get validFrom => $composableBuilder(
      column: $table.validFrom, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get validTo => $composableBuilder(
      column: $table.validTo, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get permissions => $composableBuilder(
      column: $table.permissions, builder: (column) => ColumnOrderings(column));

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
}

class $$UserFormPermissionsTableAnnotationComposer
    extends Composer<_$AppDatabase, $UserFormPermissionsTable> {
  $$UserFormPermissionsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get form =>
      $composableBuilder(column: $table.form, builder: (column) => column);

  GeneratedColumn<DateTime> get validFrom =>
      $composableBuilder(column: $table.validFrom, builder: (column) => column);

  GeneratedColumn<DateTime> get validTo =>
      $composableBuilder(column: $table.validTo, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<FormPermission>, String>
      get permissions => $composableBuilder(
          column: $table.permissions, builder: (column) => column);

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
}

class $$UserFormPermissionsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $UserFormPermissionsTable,
    UserFormPermission,
    $$UserFormPermissionsTableFilterComposer,
    $$UserFormPermissionsTableOrderingComposer,
    $$UserFormPermissionsTableAnnotationComposer,
    $$UserFormPermissionsTableCreateCompanionBuilder,
    $$UserFormPermissionsTableUpdateCompanionBuilder,
    (UserFormPermission, $$UserFormPermissionsTableReferences),
    UserFormPermission,
    PrefetchHooks Function({bool team})> {
  $$UserFormPermissionsTableTableManager(
      _$AppDatabase db, $UserFormPermissionsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UserFormPermissionsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UserFormPermissionsTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UserFormPermissionsTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> team = const Value.absent(),
            Value<String> form = const Value.absent(),
            Value<DateTime?> validFrom = const Value.absent(),
            Value<DateTime?> validTo = const Value.absent(),
            Value<List<FormPermission>> permissions = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              UserFormPermissionsCompanion(
            team: team,
            form: form,
            validFrom: validFrom,
            validTo: validTo,
            permissions: permissions,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String team,
            required String form,
            Value<DateTime?> validFrom = const Value.absent(),
            Value<DateTime?> validTo = const Value.absent(),
            required List<FormPermission> permissions,
            Value<int> rowid = const Value.absent(),
          }) =>
              UserFormPermissionsCompanion.insert(
            team: team,
            form: form,
            validFrom: validFrom,
            validTo: validTo,
            permissions: permissions,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$UserFormPermissionsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({team = false}) {
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
                if (team) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.team,
                    referencedTable:
                        $$UserFormPermissionsTableReferences._teamTable(db),
                    referencedColumn:
                        $$UserFormPermissionsTableReferences._teamTable(db).id,
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

typedef $$UserFormPermissionsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $UserFormPermissionsTable,
    UserFormPermission,
    $$UserFormPermissionsTableFilterComposer,
    $$UserFormPermissionsTableOrderingComposer,
    $$UserFormPermissionsTableAnnotationComposer,
    $$UserFormPermissionsTableCreateCompanionBuilder,
    $$UserFormPermissionsTableUpdateCompanionBuilder,
    (UserFormPermission, $$UserFormPermissionsTableReferences),
    UserFormPermission,
    PrefetchHooks Function({bool team})>;

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
  $$ManagedTeamsTableTableManager get managedTeams =>
      $$ManagedTeamsTableTableManager(_db, _db.managedTeams);
  $$AssignmentsTableTableManager get assignments =>
      $$AssignmentsTableTableManager(_db, _db.assignments);
  $$FormVersionsTableTableManager get formVersions =>
      $$FormVersionsTableTableManager(_db, _db.formVersions);
  $$MetadataSubmissionsTableTableManager get metadataSubmissions =>
      $$MetadataSubmissionsTableTableManager(_db, _db.metadataSubmissions);
  $$DataFormTemplateVersionsTableTableManager get dataFormTemplateVersions =>
      $$DataFormTemplateVersionsTableTableManager(
          _db, _db.dataFormTemplateVersions);
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
  $$UserFormPermissionsTableTableManager get userFormPermissions =>
      $$UserFormPermissionsTableTableManager(_db, _db.userFormPermissions);
}
