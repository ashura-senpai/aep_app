import 'package:flutter_test/flutter_test.dart';
import 'package:cyber_security_app/pages/content_page.dart';
import 'package:flutter/material.dart';

void main() {
  testWidgets('Verifica se a Content Page exibe artigos', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: ContentPage()));

    expect(find.byType(CircularProgressIndicator), findsOneWidget);

    await tester.pump();
    expect(find.byType(ListTile), findsWidgets);
  });
}
