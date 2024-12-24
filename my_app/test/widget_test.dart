import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_app/main.dart'; // Импорт основного файла приложения

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Старт приложения
    await tester.pumpWidget( MyApp());

    // Проверяем, что начальное значение счетчика равно 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Нажимаем на кнопку с иконкой "+", чтобы увеличить значение счетчика.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump(); // Перезагрузка UI после изменений

    // Проверяем, что значение счетчика увеличилось до 1.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
