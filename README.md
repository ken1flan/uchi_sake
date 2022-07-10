# uchi_sake

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## 開発
### セットアップ
#### Flutter
[Flutter](https://flutter.dev/)を参照してください。
#### Isarのインストール
手元の環境でテストを動かすためにはIsarのコアライブラリをダウンロードする必要があります。

##### MacOS
[テストのセットアップスクリプト](https://github.com/isar/isar/blob/main/packages/isar_test/tool/setup_tests.sh)を参考に、プロジェクトルートにライブラリのバイナリをコピーしてきます。

```console
core_version=`cat .isar_version`
github="https://github.com/isar/isar-core/releases/download/${core_version}"
curl "${github}/libisar_macos.dylib" -o ./libisar.dylib --create-dirs -L
```
