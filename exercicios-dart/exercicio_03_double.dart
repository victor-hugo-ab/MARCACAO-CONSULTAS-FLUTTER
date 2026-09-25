void main() {
  double valorConsulta = 350.0;
  double desconto = 0.10; // 10%

  double valorComDesconto = valorConsulta - (valorConsulta * desconto);

  print('Valor original: R\$ ${valorConsulta.toStringAsFixed(2)}');
  print('Desconto: ${(desconto * 100).toStringAsFixed(0)}%');
  print('Valor com desconto: R\$ ${valorComDesconto.toStringAsFixed(2)}');

  double somaConsultasMes = 350.0 + 280.0 + 420.0;
  print('Soma de 3 consultas: R\$ ${somaConsultasMes.toStringAsFixed(2)}');
  print(
    'Média das 3 consultas: R\$ ${(somaConsultasMes / 3).toStringAsFixed(2)}',
  );
}
