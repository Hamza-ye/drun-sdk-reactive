import '../reflectable.annotation.dart';

enum QueryType { METADATA, DATA, INTERNAL }

@AnnotationReflectable
class Query {
  final QueryType? type;
  final bool aut;
  const Query(
      {required this.type,
        this.aut = true});
}