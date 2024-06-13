enum FieldType {
  Text,
  Number,
  Boolean,
  SelectMulti,
  SelectOne,
  Date,
  Relation,
  YesNo,
  Unknown
}

class FieldTypeUtil {
  static FieldType getFieldType(String fieldType) {
    switch (fieldType) {
      case 'Text':
        return FieldType.Text;

      case 'Number':
        return FieldType.Number;

      case 'SelectMulti':
        return FieldType.SelectMulti;

      case 'SelectOne':
        return FieldType.SelectOne;

      case 'Date':
        return FieldType.Date;

      case 'Relation':
        return FieldType.Relation;

      case 'YesNo':
        return FieldType.YesNo;
      default:
        return FieldType.Unknown;
    }
  }
}
