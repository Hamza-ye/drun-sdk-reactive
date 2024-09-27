enum AttributeType {
  uuid,
  today,
  username,
  phoneNumber,
  userInfo,
  deviceId,
  deviceModel,
  form,
  orgUnit,
  team,
  activity,
  version;

  static AttributeType? getAttributeType(String? attributeType) {
    switch (attributeType?.toLowerCase()) {
      case 'uuid':
        return AttributeType.uuid;
      case 'today':
        return AttributeType.today;
      case 'username':
        return AttributeType.username;
      case 'userinfo':
        return AttributeType.userInfo;
      case 'phonenumber':
        return AttributeType.phoneNumber;
      case 'deviceid':
        return AttributeType.deviceId;
      case 'devicemodel':
        return AttributeType.deviceModel;
      case 'form':
        return AttributeType.form;
      case 'orgunit':
        return AttributeType.orgUnit;
      case 'team':
        return AttributeType.team;
      case 'activity':
        return AttributeType.activity;
      case 'version':
        return AttributeType.version;
      default:
        return null;
    }
  }
}
