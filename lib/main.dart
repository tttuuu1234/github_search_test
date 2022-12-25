import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'presentation/pages/git_hub_repository_search/page.dart';

void main() {
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GitHub Search',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GitHubRepositorySearchPage(),
    );
  }
}
