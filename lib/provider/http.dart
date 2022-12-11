
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/api/http/client.dart';

final httpClientProvider = Provider<HttpClient>((ref) {
  return HttpClient();
});