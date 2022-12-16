enum ApiPath {
  fetchListPublicRepositories,
}

extension ApiPathEx on ApiPath {
  String get value {
    switch (this) {
      case ApiPath.fetchListPublicRepositories:
        return 'repositories';
    }
  }
}
