enum MetadataResourceType {
  DataFormSubmission,
  Activity,
  Team,
  OrgUnit,
  Assignment;

  static MetadataResourceType getType(String? valueType) {
    switch (valueType?.toLowerCase()) {
      case 'dataformsubmission':
        return MetadataResourceType.DataFormSubmission;
      case 'activity':
        return MetadataResourceType.Activity;
      case 'team':
        return MetadataResourceType.Team;
      case 'orgunit':
        return MetadataResourceType.OrgUnit;
      case 'assignment':
        return MetadataResourceType.Assignment;

      default:
        throw ArgumentError('Invalid value type: $valueType');
    }
  }
}
