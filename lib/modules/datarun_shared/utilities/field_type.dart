enum FieldType {
  text,
  number,
  boolean,
  selectMulti,
  selectOne,
  date,
  relation,
  yesNo,
  unknown
}

class FieldTypeUtil {
  static FieldType getFieldType(String fieldType) {
    switch (fieldType.toLowerCase()) {
      case 'text':
        return FieldType.text;

      case 'number':
        return FieldType.number;

      case 'selectmulti':
        return FieldType.selectMulti;

      case 'selectone':
        return FieldType.selectOne;

      case 'date':
        return FieldType.date;

      case 'relation':
        return FieldType.relation;

      case 'yesno':
        return FieldType.yesNo;
      default:
        return FieldType.unknown;
    }
  }
}
