import 'package:flutter_test/flutter_test.dart';
import 'supports/common_support.dart';
import 'supports/isar_support.dart';

void wrapTest(void Function() example) {
  setUpAll(() {
    CommonSupport.setUpAll();
    IsarSupport.setupAll();
  });

  setUp(() {
    // テストごとセットアップ
  });

  example();

  tearDown(() {
    IsarSupport.tearDown();
  });

  tearDownAll(() {
    CommonSupport.finalize();
  });
}
