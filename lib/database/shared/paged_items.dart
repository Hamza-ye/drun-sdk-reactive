import 'package:equatable/equatable.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';

class PagedItems<T> with EquatableMixin {
  final IList<T> items;
  final int page;
  final bool paged;
  final int pageSize;
  final int totalCount;

  PagedItems(
      {this.page = 1,
      this.pageSize = 10,
      Iterable<T>? items,
      this.paged = true,
      this.totalCount = 0})
      : this.items = IList.orNull(items) ?? IList([]);

  @override
  List<Object?> get props => [paged, page, pageSize, totalCount, items];
}
