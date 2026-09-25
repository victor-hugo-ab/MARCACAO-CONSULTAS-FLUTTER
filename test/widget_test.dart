import 'package:flutter_test/flutter_test.dart';
import 'package:marcacao_consultas_flutter/main.dart';

void main() {
  testWidgets('App inicia e mostra a tela Home', (WidgetTester tester) async {
    await tester.pumpWidget(const MarcacaoConsultasApp());
    expect(find.text('Sistema de Consultas'), findsOneWidget);
  });
}
