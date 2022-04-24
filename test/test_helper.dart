import 'package:flutter_test/flutter_test.dart';

void wrapTest(void Function() example) {
  setUpAll(() {
    // 全体で一度だけセットアップ
  });

  setUp(() {
    // テストごとセットアップ
  });

  example();

  tearDown(() {
    // テストごと終了処理
  });

  tearDownAll(() {
    // 全体で一度だけ終了処理
  });
}
