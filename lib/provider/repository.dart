import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../infrastructure/repositories/git_hub.dart';
import 'http.dart';

final gitHubRepositoryImplProvider = Provider<GitHubRepositoryImpl>((ref) {
  return GitHubRepositoryImpl(ref.watch(httpClientProvider));
});
