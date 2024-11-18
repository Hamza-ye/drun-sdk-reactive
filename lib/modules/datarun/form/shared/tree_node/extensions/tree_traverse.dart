import 'package:d2_remote/modules/datarun/form/shared/tree_node/tree_node.dart';
import 'package:d2_remote/modules/datarun/form/shared/tree_node/tree_node_mixin/tree_node_mixin.dart';


extension DepthFirstTraversal on AbstractTreeNodeGroup {
  Iterable<AbstractTreeNode> depthFirstTraversal() sync* {
    yield this; // Start with the root node
    for (final child in children) {
      if (child is AbstractTreeNodeGroup) {
        yield* child.depthFirstTraversal();
      } else {
        yield child;
      }
    }
  }
}

extension BreadthFirstTraversal on AbstractTreeNodeGroup {
  Iterable<AbstractTreeNode> breadthFirstTraversal() sync* {
    final queue = <AbstractTreeNode>[this];
    while (queue.isNotEmpty) {
      final node = queue.removeAt(0);
      yield node;
      if (node is AbstractTreeNodeGroup) {
        queue.addAll(node.children);
      }
    }
  }
}
