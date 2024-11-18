import 'package:d2_remote/modules/datarun/form/shared/form_tree/dependencies_processing.dart';
import 'package:d2_remote/modules/datarun/form/shared/tree_node/extensions/tree_traverse.dart';
import 'package:d2_remote/modules/datarun/form/shared/tree_node/tree_node.dart';

class FormTreeService {
  // final AbstractTreeNodeGroup root;

  // FormTreeService(this.root);
  //
  // List<AbstractTreeNode> findByType(Type type) =>
  //     root
  //         .depthFirstTraversal()
  //         .where((node) => node.runtimeType == type)
  //         .toList();

  Map<String, Set<String>> buildDependencyGraph(AbstractTreeNodeGroup root) {
    Map<String, Set<String>> graph = {};
    for (var element in root
        .getCachedDescendants()
        .values) {
      graph[element.path!] = element.dependencies.toSet();
    }
    final reverseDependencyGraph = buildReverseDependencyMap(graph);
    return reverseDependencyGraph;
  }

  List<String> getAffectedElements(AbstractTreeNodeGroup root,
      String changedElementPath) {
    var graph = buildDependencyGraph(root);
    List<String> affected = [];
    for (var entry in graph.entries) {
      if (entry.value.contains(changedElementPath)) {
        affected.add(entry.key);
      }
    }
    return affected;
  }
}
