import 'package:uchi_sake/models/file_converter.dart';
import 'package:flutter_test/flutter_test.dart';

import 'dart:io';

import '../test_helper.dart';

void main() {
  wrapTest(() async {
    group('#fromIsar', () {
      var fileConverter = const FileConverter();
      late String? filePath;

      group('filePath = null のとき', () {
        setUp(() {
          filePath = null;
        });

        test('nullを返すこと', () {
          expect(fileConverter.fromIsar(filePath), equals(null));
        });
      });
      group('filePath = 空文字列 のとき', () {
        setUp(() {
          filePath = '';
        });

        test('nullを返すこと', () {
          expect(fileConverter.fromIsar(filePath), equals(null));
        });
      });
      group('filePath = not_exist/bar.png(存在しないファイル) のとき', () {
        setUp(() {
          filePath = 'not_exist/bar.png';
        });

        test('nullを返すこと', () {
          expect(fileConverter.fromIsar(filePath), equals(null));
        });
      });

      group('filePath = test/fixtures/images/480x320.png(存在するファイル) のとき', () {
        setUp(() {
          filePath = File('test/fixtures/images/480x320.png').path;
        });

        test('Fileを返すこと', () {
          var file = fileConverter.fromIsar(filePath);
          expect(file, isA<File>());
          expect(file?.path, equals(filePath));
        });
      });
    });

    group('#toIsar', () {
      var fileConverter = const FileConverter();
      late File? file;

      group('file = nullのとき', () {
        setUp(() {
          file = null;
        });

        test('空文字列を返すこと', () {
          expect(fileConverter.toIsar(file), equals(''));
        });
      });

      group('file = test/fixtures/images/480x320.pngのとき', () {
        setUp(() {
          file = File('test/fixtures/images/480x320.png');
        });
        test('アプリケーションディレクトリに保存されたパスを返すこと', () {
          var filePath = fileConverter.toIsar(file);
          // 1acc05735f503e8471e440efcad1706d は480x320.pngのMD5値
          expect(
              filePath, endsWith('files/1acc05735f503e8471e440efcad1706d.png'));
          expect(File(filePath!).existsSync(), isTrue);
        });
      });

      group(
          'file = test/fixtures/images/480x320.png(アプリケーションの保存ディレクトリにすでにあるファイル)のとき',
          () {
        setUp(() {
          var orgFile = File('test/fixtures/images/480x320.png');
          file = File(fileConverter.toIsar(orgFile)!);
        });
        test('アプリケーションディレクトリに保存されたパスを返すこと', () {
          var filePath = fileConverter.toIsar(file);
          // 1acc05735f503e8471e440efcad1706d は480x320.pngのMD5値
          expect(
              filePath, endsWith('files/1acc05735f503e8471e440efcad1706d.png'));
          expect(File(filePath!).existsSync(), isTrue);
        });
      });
    });
  });
}
