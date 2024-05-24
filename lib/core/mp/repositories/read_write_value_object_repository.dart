import 'package:d2_remote/core/mp/repositories/read_write_object_repository.dart';
import 'package:d2_remote/shared/entities/base.entity.dart';

abstract class ReadWriteValueObjectRepository<M extends BaseEntity>
    extends ReadWriteObjectRepository<M> {
  // throws D2Error
  Future set(String value);
}
