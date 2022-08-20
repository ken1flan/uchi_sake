import 'package:flutter_test/flutter_test.dart';
import '../test_helper.dart';
import 'package:uchi_sake/common.dart';
import 'package:uchi_sake/helpers.dart';
import 'package:uchi_sake/models/memo.dart';

void main() {
  wrapTest(() async {
    group('#save', () {
      late Memo memo;
      group('値を設定せずにでsaveしたとき', () {
        setUp(() {
          memo = Memo();
          memo.save();
        });

        test('データベースから取得できること', () {
          var savedMemo = isar.memos.getSync(memo.id!);
          expect(savedMemo, isNotNull);
          expect(savedMemo!.createdAt, equals(savedMemo.updatedAt));
          expect(savedMemo.name, isNull);
          expect(savedMemo.labelImage, isNull);
          expect(savedMemo.specImage, isNull);
          expect(savedMemo.otherImage, isNull);
          expect(savedMemo.tappedOn, isNull);
          expect(savedMemo.keywordsString, isNull);
          expect(savedMemo.score, isNull);
          expect(savedMemo.purchaceStore, isNull);
          expect(savedMemo.body, isNull);
        });
      });

      group('値を設定してsaveしたとき', () {
        setUp(() {
          memo = Memo()
            ..name = 'お酒のなまえ'
            ..tappedOn = DateTime.parse('2022-01-02')
            ..keywordsString = '日本酒 純米 辛口'
            ..score = 3
            ..purchaceStore = 'なんとか酒店'
            ..body = 'すごくおいしかった！';
          memo.save();
        });

        test('データベースから取得したデータが設定した値であること', () {
          var savedMemo = isar.memos.getSync(memo.id!);
          expect(savedMemo, isNotNull);
          expect(savedMemo!.createdAt, equals(savedMemo.updatedAt));
          expect(savedMemo.name, equals('お酒のなまえ'));
          expect(dateTime2yyyymmdd(savedMemo.tappedOn), equals('2022/1/2'));
          expect(savedMemo.keywordsString, equals('日本酒 純米 辛口'));
          expect(savedMemo.score, equals(3));
          expect(savedMemo.purchaceStore, equals('なんとか酒店'));
          expect(savedMemo.body, equals('すごくおいしかった！'));
        });
      });

      group('値を更新してsaveしたとき', () {
        setUp(() {
          memo = Memo()
            ..name = 'お酒のなまえ'
            ..tappedOn = DateTime.parse('2022-01-02')
            ..keywordsString = '日本酒 純米 辛口'
            ..score = 3
            ..purchaceStore = 'なんとか酒店'
            ..body = 'すごくおいしかった！';
          memo.save();
          memo
            ..name = 'お酒のなまえ(変更)'
            ..tappedOn = DateTime.parse('2021-01-02')
            ..keywordsString = '日本酒 純米 辛口 変更'
            ..score = 3
            ..purchaceStore = 'なんとか酒店(変更)'
            ..body = 'すごくおいしかった！(変更)';
          memo.save();
        });

        test('データベースから取得したデータが設定した値であること', () {
          var savedMemo = isar.memos.getSync(memo.id!);
          expect(savedMemo, isNotNull);
          expect(savedMemo!.createdAt, isNot(equals(savedMemo.updatedAt)));
          expect(savedMemo.name, equals('お酒のなまえ(変更)'));
          expect(dateTime2yyyymmdd(savedMemo.tappedOn), equals('2021/1/2'));
          expect(savedMemo.keywordsString, equals('日本酒 純米 辛口 変更'));
          expect(savedMemo.score, equals(3));
          expect(savedMemo.purchaceStore, equals('なんとか酒店(変更)'));
          expect(savedMemo.body, equals('すごくおいしかった！(変更)'));
        });
      });
    });

    group('#destroy', () {
      late Memo memo;

      group('Memoが保存されていないとき', () {
        setUp(() {
          memo = Memo()
            ..name = '名前のテスト'
            ..body = '本文のテスト';
        });
        test('正常終了すること', () {
          expect(() => memo.destroy(), returnsNormally);
        });
      });

      group('Memoが保存されているとき', () {
        setUp(() {
          memo = Memo()
            ..name = '名前のテスト'
            ..body = '本文のテスト';
          memo.save();
        });
        test('レコードが消えていること', () {
          var id = memo.id;
          memo.destroy();

          var savedMemo = isar.memos.getSync(id!);
          expect(savedMemo, isNull);
        });
      });
    });

    group('#searchText', () {
      List<Memo> memos = [];

      var memoSake = Memo()..name = '日本酒';
      var memoRedWine = Memo()..name = '赤ワイン';
      var memoWhiteWine = Memo()..name = '白ワイン';

      setUp(() {
        memoSake.save();
        memoRedWine.save();
        memoWhiteWine.save();
        memos.add(memoSake);
        memos.add(memoRedWine);
        memos.add(memoWhiteWine);
      });

      group('searchText = ""のとき', () {
        test('すべてのメモが返されること', () {
          var ret = Memo.searchByText('');
          var ids = ret.map((memo) => memo.id).toList();
          for (var memo in memos) {
            expect(ids.contains(memo.id), isTrue);
          }
        });
      });

      group('searchText = "酒"のとき', () {
        test('memoSakeが返されること', () {
          var ret = Memo.searchByText('酒');
          var ids = ret.map((memo) => memo.id).toList();
          expect(ids.contains(memoSake.id), isTrue);
          expect(ids.contains(memoRedWine.id), isFalse);
          expect(ids.contains(memoWhiteWine.id), isFalse);
        });
      });

      group('searchText = "ワイン"のとき', () {
        test('memoSakeが返されること', () {
          var ret = Memo.searchByText('ワイン');
          var ids = ret.map((memo) => memo.id).toList();
          expect(ids.contains(memoSake.id), isFalse);
          expect(ids.contains(memoRedWine.id), isTrue);
          expect(ids.contains(memoWhiteWine.id), isTrue);
        });
      });
    });
  });
}
