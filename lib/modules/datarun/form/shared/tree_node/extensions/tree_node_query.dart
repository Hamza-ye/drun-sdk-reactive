import 'package:d2_remote/core/utilities/list_extensions.dart';
import 'package:d2_remote/modules/datarun/form/shared/tree_node/tree_node.dart';
import 'package:d2_remote/modules/datarun/form/shared/tree_node/extensions/tree_traverse.dart';

extension TreeNodeGroupQueryingUtility on AbstractTreeNodeGroup {
  AbstractTreeNode? findNodeByPath(String targetPath) {
    return depthFirstTraversal()
        .firstOrNullWhere((node) => node.path == targetPath);
  }

  List<AbstractTreeNode> getAllDescendants() {
    return depthFirstTraversal().where((node) => node.path != path).toList();
  }

  int countNodes() {
    return depthFirstTraversal().length;
  }

  List<AbstractTreeNode> filterNodes(bool Function(AbstractTreeNode) predicate) {
    return depthFirstTraversal().where(predicate).toList();
  }
}
