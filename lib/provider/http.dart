import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/api/http/client.dart';

final httpClientProvider = Provider<HttpClient>((ref) {
  return HttpClient();
});
