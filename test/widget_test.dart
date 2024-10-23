testWidgets('Verifica a integração da API com a Content Page', (WidgetTester tester) async {
  await tester.pumpWidget(MaterialApp(home: ContentPage()));

  expect(find.byType(CircularProgressIndicator), findsOneWidget);

  await tester.pump(Duration(seconds: 2));
  expect(find.byType(ListTile), findsWidgets);
});
