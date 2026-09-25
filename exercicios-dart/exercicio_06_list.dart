void main() {
  List<String> statusPossiveis = ['agendada', 'confirmada', 'cancelada'];
  List<double> valoresConsultas = [350.0, 280.0, 420.0, 190.0];

  for (var status in statusPossiveis) {
    print('Status disponível: $status');
  }

  valoresConsultas.add(500.0);
  print('Lista após adicionar: $valoresConsultas');

  var valoresAltos = valoresConsultas.where((v) => v >= 300).toList();
  print('Valores >= 300: $valoresAltos');

  print('Quantidade total de preços: ${valoresConsultas.length}');
}
