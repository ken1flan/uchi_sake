import 'package:flutter_test/flutter_test.dart';
import 'test_helper.dart';
import 'package:uchi_sake/helpers.dart';

void main() {
  wrapTest(() async {
    group('#dateTime2yyyymmdd', () {
      group('dateTime = nullのとき', () {
        DateTime? dateTime = null;

        test('空文字列を返すこと', () {
          expect(dateTime2yyyymmdd(dateTime), equals(''));
        });
      });

      group('dateTime = 2022/04/05 01:02:03のとき', () {
        DateTime? dateTime = DateTime.parse('2022-04-05 01:02:03');

        test('2022/4/5を返すこと', () {
          expect(dateTime2yyyymmdd(dateTime), equals('2022/4/5'));
        });
      });
    });
  });
}
