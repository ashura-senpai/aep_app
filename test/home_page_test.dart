import 'package:flutter_test/flutter_test.dart';
import 'package:cyber_security_app/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  testWidgets('Testa se a Home Page tem os botões de navegação', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: HomePage()));

    expect(find.text('Conteúdos sobre Segurança'), findsOneWidget);
    expect(find.text('Quiz Interativo'), findsOneWidget);
  });
}
