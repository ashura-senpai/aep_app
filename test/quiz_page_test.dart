import 'package:flutter_test/flutter_test.dart';
import 'package:cyber_security_app/pages/quiz_page.dart';
import 'package:flutter/material.dart';

void main() {
  testWidgets('Verifica se a primeira pergunta do quiz é exibida', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: QuizPage()));

    expect(find.text('Qual é o principal objetivo de um ataque de phishing?'), findsOneWidget);
    expect(find.text('Roubar credenciais'), findsOneWidget);
  });

  testWidgets('Simula interação no quiz e avança para a próxima pergunta', (WidgetTester tester) async {
  await tester.pumpWidget(MaterialApp(home: QuizPage()));

  expect(find.text('Qual é o principal objetivo de um ataque de phishing?'), findsOneWidget);

  await tester.tap(find.text('Roubar credenciais'));
  await tester.pump();
  
  expect(find.text('Qual medida ajuda a prevenir ataques de ransomware?'), findsOneWidget);
});

}
