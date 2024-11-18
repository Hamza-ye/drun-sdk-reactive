import 'package:d2_remote/modules/datarun/form/shared/tree_node/tree_node_mixin/tree_node_mixin.dart';

/// A generic depth-first traversal function.
Iterable<TreeNodeMixin> depthFirstTraversal<T extends TreeNodeMixin>(
    TreeNodeMixin root) sync* {
  yield root; // Start with the root node
  if (root is TreeNodeGroupMixin) {
    for (final child in root.children) {
      if (child is TreeNodeGroupMixin) {
        yield* depthFirstTraversal(child);
      } else {
        yield child;
      }
    }
  }
}
