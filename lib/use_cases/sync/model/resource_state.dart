// State for individual resources
sealed class ResourceState {
  const ResourceState();
}

class ResourceStarting extends ResourceState {
  const ResourceStarting();
}

class ResourceSucceeded extends ResourceState {
  final int itemsDownloaded;

  const ResourceSucceeded(this.itemsDownloaded);
}

class ResourceFailed extends ResourceState {
  final Object error;

  const ResourceFailed(this.error);
}
