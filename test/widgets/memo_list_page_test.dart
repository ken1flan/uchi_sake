import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import '../test_helper.dart';
import 'package:uchi_sake/models/memo.dart';
import 'package:uchi_sake/widgets/memo_list_page.dart';

void main() {
  wrapTest(() {
    group('メモが0件のとき', () {
      testWidgets('「まだありません。」と表示されていること', (WidgetTester tester) async {
        const memoListPage = MemoListPage();
        await tester.pumpWidget(const MaterialApp(home: memoListPage));

        expect(find.text('まだありません。'), findsOneWidget);
      });
    });

    group('メモが1件のとき', () {
      var i = Random().nextInt(10000);
      final memo = Memo()
        ..name = "お酒${i.toString()}"
        ..tappedOn = DateTime.now()
        ..score = i % 5 + 1
        ..purchaceStore = "なんとか酒店${i.toString()}号店"
        ..tappedOn = DateTime.now()
        ..keywords = ['日本酒', '純米' '原酒' '辛口' "${i.toString()}回目"]
        ..keywordsString = "日本酒 純米 原酒 辛口 ${i.toString()}回目"
        ..body = "${i.toString()}回目！今回もたいへん美味しかった！";

      setUp(() {
        memo.save();
      });

      testWidgets('メモが表示されていること', (WidgetTester tester) async {
        const memoListPage = MemoListPage();
        await tester.pumpWidget(const MaterialApp(home: memoListPage));

        expect(find.text(memo.name!), findsOneWidget);
      });

      testWidgets('メモをタップしたときにメモ編集ページが表示されること', (WidgetTester tester) async {
        const memoListPage = MemoListPage();
        await tester.pumpWidget(const MaterialApp(home: memoListPage));

        await tester.tap(find.text(memo.name!));
        await tester.pumpAndSettle();

        expect(find.text(memo.name!), findsOneWidget);
      });

      testWidgets('タイトルを長押したときに記事を削除できること', (WidgetTester tester) async {
        const memoListPage = MemoListPage();
        await tester.pumpWidget(const MaterialApp(home: memoListPage));
        await tester.longPress(find.text(memo.name!));
        await tester.pump();

        await tester.tap(find.text('はい'));
        await tester.pump();

        expect(find.text('まだありません。'), findsOneWidget);
      });
    });

    group('メモが2件のとき', () {
      late List<Memo> memos = [];

      setUp(() {
        for (var i = 0; i < 2; i++) {
          final memo = Memo()
            ..name = "お酒${i.toString()}"
            ..tappedOn = DateTime.now()
            ..score = i % 5 + 1
            ..purchaceStore = "なんとか酒店${i.toString()}号店"
            ..tappedOn = DateTime.now()
            ..keywords = ['日本酒', '純米' '原酒' '辛口' "${i.toString()}回目"]
            ..keywordsString = "日本酒 純米 原酒 辛口 ${i.toString()}回目"
            ..body = "${i.toString()}回目！今回もたいへん美味しかった！";
          memos.add(memo);
          memo.save();
        }
      });

      testWidgets('メモが表示されていること', (WidgetTester tester) async {
        const memoListPage = MemoListPage();
        await tester.pumpWidget(const MaterialApp(home: memoListPage));

        for (var memo in memos) {
          expect(find.text(memo.name!), findsOneWidget);
        }
      });
    });

    testWidgets('エディットボタンを押したときに記事ページが表示されること', (WidgetTester tester) async {
      const memoListPage = MemoListPage();
      await tester.pumpWidget(const MaterialApp(home: memoListPage));

      await tester.tap(find.byIcon(Icons.add));
      await tester.pump();

      expect(find.text('飲んだお酒のメモ'), findsOneWidget);
    });
  });
}
