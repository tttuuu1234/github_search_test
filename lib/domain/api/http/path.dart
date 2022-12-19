enum ApiPath {
  /// GitHubリポジトリ一覧取得
  fetchListPublicRepositories,

  /// GitHubリポジトリ検索
  searchRepositories,
}

extension ApiPathEx on ApiPath {
  String get value {
    switch (this) {
      case ApiPath.fetchListPublicRepositories:
        return 'repositories';
      case ApiPath.searchRepositories:
        return 'search/repositories';
    }
  }
}
