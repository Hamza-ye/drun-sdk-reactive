class ReferenceInfo {
  /// A Resource Name: DataForm, Activity, Team...
  final String resource;

  /// A Resource Uid
  final String resourceId;

  /// A Resource Property name,
  /// Example: if resource is DataForm -> the field name inside it
  /// if empty it will consider the resource identifiable properties
  final String? resourceProperty;

  final String? description;

  final String? type;

  ReferenceInfo(
      {required this.resource,
      required this.resourceId,
      this.resourceProperty,
      this.description,
      this.type});

  factory ReferenceInfo.fromJson(Map<String, dynamic> json) {
    return ReferenceInfo(
        resource: json['resource'],
        resourceId: json['resourceId'],
        resourceProperty: json['resourceProperty'],
        description: json['description'],
        type: json['type']);
  }

  Map<String, dynamic> toJson() {
    return {
      'resource': resource,
      'resourceId': resourceId,
      'resourceProperty': resourceProperty,
      'description': description,
      'type': type
    };
  }
}
