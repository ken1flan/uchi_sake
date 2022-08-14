import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import '../test_helper.dart';
import 'package:uchi_sake/models/memo.dart';
import 'package:uchi_sake/widgets/memo_search_page.dart';

void main() {
  wrapTest(() {
    Map<String, Memo> memos = {};
    const memoSearchPage = MemoSearchPage();

    memos['sake'] = Memo()
      ..name = '日本酒'
      ..tappedOn = DateTime.now()
      ..score = 3
      ..purchaceStore = "なんとか酒店"
      ..tappedOn = DateTime.now()
      ..keywords = ['日本酒', '純米' '原酒' '辛口']
      ..keywordsString = "日本酒 純米 原酒 辛口"
      ..body = "今回もたいへん美味しかった！";
    memos['red_wine'] = Memo()
      ..name = "赤ワイン"
      ..tappedOn = DateTime.now()
      ..score = 3
      ..purchaceStore = 'リカーショップ・ナントカ'
      ..tappedOn = DateTime.now()
      ..keywords = ['ワイン', '赤' 'カベルネ・ソーヴィニヨン' 'フルボディ']
      ..keywordsString = 'ワイン 赤 カベルネ・ソーヴィニヨン フルボディ'
      ..body = '今回もたいへん美味しかった！';
    memos['white_wine'] = Memo()
      ..name = "白ワイン"
      ..tappedOn = DateTime.now()
      ..score = 3
      ..purchaceStore = 'リカーショップ・ナントカ'
      ..tappedOn = DateTime.now()
      ..keywords = ['ワイン', '白' 'シャルドネ' '辛口']
      ..keywordsString = 'ワイン 白 シャルドネ 辛口'
      ..body = '今回もたいへん美味しかった！';

    setUp(() {
      memos.forEach((_key, memo) {
        memo.save();
      });
    });

    testWidgets('「酒」で検索したとき、「日本酒」が表示されること', (WidgetTester tester) async {
      String searchText = '酒';

      await tester.pumpWidget(const MaterialApp(home: memoSearchPage));
      await tester.pump();
      await tester.enterText(
          find.byKey(const ValueKey('searchTextField')), searchText);
      await tester.testTextInput.receiveAction(TextInputAction.done);
      await tester.pump();
      expect(find.text(memos['sake']!.name!), findsOneWidget);
      expect(find.text(memos['red_wine']!.name!), findsNothing);
      expect(find.text(memos['white_wine']!.name!), findsNothing);
    });

    testWidgets('「ワイン」で検索したとき、「赤ワイン」と「白ワイン」が表示されること',
        (WidgetTester tester) async {
      String searchText = 'ワイン';

      await tester.pumpWidget(const MaterialApp(home: memoSearchPage));
      await tester.pump();
      await tester.enterText(
          find.byKey(const ValueKey('searchTextField')), searchText);
      await tester.testTextInput.receiveAction(TextInputAction.done);
      await tester.pump();
      expect(find.text(memos['sake']!.name!), findsNothing);
      expect(find.text(memos['red_wine']!.name!), findsOneWidget);
      expect(find.text(memos['white_wine']!.name!), findsOneWidget);
    });
  });
}
