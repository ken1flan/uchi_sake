import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void wrapTest(void Function() body) {
  setUpAll(() {
    // 一度だけセットアップ
  });

  setUp(() {
    // 毎回セットアップ
  });

  body();

  tearDown(() {
    // 終了処理
  });

  tearDownAll(() {
    // 一度だけ終了処理
  });
}
