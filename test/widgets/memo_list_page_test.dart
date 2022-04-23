import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:uchi_sake/widgets/memo_list_page.dart';

void main() {
  testWidgets('メモ一覧ページのテスト', (WidgetTester tester) async {
    const memoListPage = MemoListPage();
    await tester.pumpWidget(const MaterialApp(home: memoListPage));

    expect(find.text('飲んだお酒のメモ'), findsOneWidget);
  });
}
