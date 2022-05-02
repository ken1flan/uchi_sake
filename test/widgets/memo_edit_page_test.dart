import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import '../test_helper.dart';
import 'package:uchi_sake/common.dart';
import 'package:uchi_sake/models/memo.dart';
import 'package:uchi_sake/widgets/memo_edit_page.dart';

void main() {
  wrapTest(() {
    group('memo = nullのとき', () {
      const Memo? memo = null;
      const memoEditPage = MemoEditPage(memo);

      testWidgets('ページが表示されていること', (WidgetTester tester) async {
        await tester.pumpWidget(const MaterialApp(home: memoEditPage));

        expect(find.text('飲んだお酒のメモ'), findsOneWidget);
      });

      testWidgets('記入後に自動的に保存されていること', (WidgetTester tester) async {
        await tester.pumpWidget(const MaterialApp(home: memoEditPage));
        await tester.enterText(
            find.byKey(const ValueKey('memoNameTextField')), 'お酒の名前');
        await tester.enterText(
            find.byKey(const ValueKey('memoBodyTextField')), 'メモの本文');
        var savedMemo = isar.memos.where().findFirstSync();
        expect(savedMemo?.name, equals('お酒の名前'));
        expect(savedMemo?.body, equals('メモの本文'));
      });
    });

    group('memo = 保存済みのレコードのとき', () {
      Memo? memo = Memo()
        ..name = 'お酒の名前'
        ..body = 'メモの本文';

      setUp(() {
        memo.save();
      });

      var memoEditPage = MemoEditPage(memo);

      testWidgets('ページが表示されていること', (WidgetTester tester) async {
        await tester.pumpWidget(MaterialApp(home: memoEditPage));

        expect(find.text('お酒の名前'), findsOneWidget);
        expect(find.text('メモの本文'), findsOneWidget);
      });

      testWidgets('記入後に自動的に保存されていること', (WidgetTester tester) async {
        await tester.pumpWidget(MaterialApp(home: memoEditPage));
        await tester.enterText(
            find.byKey(const ValueKey('memoNameTextField')), 'お酒の名前（変更）');
        await tester.enterText(
            find.byKey(const ValueKey('memoBodyTextField')), 'メモの本文（変更）');
        var savedMemo = isar.memos.where().findFirstSync();
        expect(savedMemo?.name, equals('お酒の名前（変更）'));
        expect(savedMemo?.body, equals('メモの本文（変更）'));
      });
    });
  });
}
