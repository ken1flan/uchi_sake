import 'package:flutter_test/flutter_test.dart';
import 'test_helper.dart';
import 'package:uchi_sake/helpers.dart';

void main() {
  wrapTest(() async {
    group('#dateTime2yyyymmdd', () {
      group('dateTime = nullのとき', () {
        DateTime? dateTime;

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

    group('#stars', () {
      group('score = nullのとき', () {
        int? score;

        test('children.length = 0であること', () {
          expect(stars(score).children.length, equals(0));
        });
      });

      group('score = 0のとき', () {
        int? score = 0;

        test('children.length = 0であること', () {
          expect(stars(score).children.length, equals(0));
        });
      });

      group('score = 1のとき', () {
        int? score = 1;

        test('children.length = 1であること', () {
          expect(stars(score).children.length, equals(1));
        });
      });

      group('score = 2のとき', () {
        int? score = 2;

        test('children.length = 2であること', () {
          expect(stars(score).children.length, equals(2));
        });
      });
    });
  });
}
