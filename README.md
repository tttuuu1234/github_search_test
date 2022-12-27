### GitHubリポジトリ検索アプリ

## アーキテクチャ
- core
  - アプリの根幹のとなる部分のレイヤー
  - どのレイヤーにも依存しない
- infrasturucture
  - coreで定義されたRepository抽象クラスの実装レイヤー
  - coreに依存する
  - presentationには依存しない
- presentation
  - 画面レイヤー
  - coreに依存する
  - infrastructueには依存しない
- providers
- main.dart