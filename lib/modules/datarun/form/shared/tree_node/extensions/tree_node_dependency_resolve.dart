// import 'package:d2_remote/modules/datarun/form/shared/tree_node/extensions/tree_node_select.dart';
// import 'package:d2_remote/modules/datarun/form/shared/tree_node/tree_node_mixin.dart';
// import 'package:d2_remote/modules/datarun/form/shared/tree_node/tree_node.dart';
// import 'package:d2_remote/modules/datarun/form/shared/tree_node/extensions/tree_traverse.dart';
//
// extension ScopedDependencyUtility on TreeNodeMixin {
//   List<TreeNodeMixin> resolveScopedDependencyOrder(TreeNodeGroupMixin root) {
//     final resolved = <TreeNodeMixin>[];
//     final unresolved = <TreeNodeMixin>[];
//
//     void resolve(TreeNodeMixin node) {
//       if (resolved.contains(node)) return;
//
//       if (unresolved.contains(node)) {
//         throw Exception('Circular dependency detected at ${node.path}');
//       }
//
//       unresolved.add(node);
//
//       for (final depName in node.dependencies) {
//         final depNode = findNodeByNameScoped(node, depName, root);
//         if (depNode == null) {
//           throw Exception(
//               'Dependency "$depName" not found for node ${node.path}');
//         }
//         resolve(depNode);
//       }
//
//       unresolved.remove(node);
//       resolved.add(node);
//     }
//
//     root.depthFirstTraversal().forEach(resolve);
//
//     return resolved;
//   }
// }
