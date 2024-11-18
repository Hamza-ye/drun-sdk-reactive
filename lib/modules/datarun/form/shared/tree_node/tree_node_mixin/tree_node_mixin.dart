/// a tree node path
mixin TreeNodeMixin {
  /// path to the node in the tree,
  /// dot delimited nodes names to this node [name]
  String? get path;

  /// unique within the same TreeNodeGroup this node is in
  String? get name;
}

/// A Structured tree Group Mixin
mixin TreeNodeGroupMixin implements TreeNodeMixin {
  List<TreeNodeMixin> get children;
}

abstract class DependencyAwareNode implements TreeNodeMixin {
  List<String> get dependencies; // Names of dependent nodes.
  bool evaluateDependencies(
      Map<String, dynamic> context); // Resolve dependency state.
}