import 'package:flutter_test/flutter_test.dart';

import 'package:uchi_sake/main.dart';

void main() {
  testWidgets('メモ一覧ページのテスト', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('To Do'), findsOneWidget);
  });
}
