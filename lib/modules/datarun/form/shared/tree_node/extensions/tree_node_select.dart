import 'package:d2_remote/core/utilities/list_extensions.dart';
import 'package:d2_remote/modules/datarun/form/shared/tree_node/extensions/tree_node_query.dart';
import 'package:d2_remote/modules/datarun/form/shared/tree_node/tree_node.dart';

extension TreeNodeSelect on AbstractTreeNode {
  AbstractTreeNodeGroup? getPathParent(List<AbstractTreeNode> allNodes) {
    final List<String>? parentPath = path?.split('.')?..removeLast();
    if ((parentPath ?? []).isEmpty) return null; // Root node has no parent
    return allNodes.firstOrNullWhere((n) => n.path == parentPath!.join('.'))
        as AbstractTreeNodeGroup?;
  }

  AbstractTreeNode? findNodeByNameScoped(
      AbstractTreeNode node, String dependencyName, AbstractTreeNodeGroup root) {
    AbstractTreeNode? resolveInGroup(AbstractTreeNodeGroup group) {
      return group.children
          .firstOrNullWhere((child) => child.name == dependencyName);
    }

    AbstractTreeNode? resolveInParentGroups(AbstractTreeNode current) {
      AbstractTreeNodeGroup? parent = current.getPathParent(
          root.getAllDescendants()); // Get the parent of the current group
      while (parent != null) {
        final found = resolveInGroup(parent);
        if (found != null) return found;
        parent = parent.getPathParent(
            root.getAllDescendants()); // Move up the tree
      }
      return null;
    }

    // Scoped Resolution Strategy
    // 1. Check current group
    final currentGroup = node.getPathParent(root.getAllDescendants());
    if (currentGroup != null) {
      final foundInGroup = resolveInGroup(currentGroup);
      if (foundInGroup != null) return foundInGroup;
    }

    // 2. Check parent groups and their siblings
    final foundInParents = resolveInParentGroups(currentGroup!);
    if (foundInParents != null) return foundInParents;

    // 3. Check globally at the root level
    return root.children
        .firstOrNullWhere((child) => child.name == dependencyName);
  }
}

extension TreeNodeGroupChildrenSelect on AbstractTreeNodeGroup {
  List<AbstractTreeNode> getPathDescendants(
      String nodePath, List<AbstractTreeNode> allNodes) {
    return allNodes
        .where((node) => node.path!.startsWith('$nodePath.'))
        .toList();
  }

  Iterable<AbstractTreeNode> getPathImmediateChildren(
      String? nodePath, Iterable<AbstractTreeNode> allNodes) {
    if (nodePath == null) return allNodes;
    final depth = nodePath.split('.').length + 1;
    return allNodes.where((node) {
      return node.path!.startsWith('$nodePath.') &&
          node.path!.split('.').length == depth;
    }).toList();
  }
}
