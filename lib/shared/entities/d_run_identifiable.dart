abstract class IdentifiableModel {
  String? get id;

  String? get uid;

  String? get code;

  String? get name;

  String? get displayName;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is IdentifiableModel &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          uid == other.uid &&
          code == other.code &&
          name == other.name &&
          displayName == other.displayName);

  @override
  int get hashCode =>
      id.hashCode ^
      uid.hashCode ^
      code.hashCode ^
      name.hashCode ^
      displayName.hashCode;

  @override
  String toString() {
    return 'IdentifiableModel{' +
        ' id: $id,' +
        ' uid: $uid,' +
        ' code: $code,' +
        ' name: $name,' +
        ' displayName: $displayName,' +
        '}';
  }
}
