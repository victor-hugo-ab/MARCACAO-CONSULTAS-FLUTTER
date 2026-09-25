void main() {
  // num aceita int e depois double na mesma variável
  num registro = 10;
  print('Registro (int): $registro');
  registro = 10.5;
  print('Registro (double): $registro');

  // Null safety
  String? telefone;
  String? observacoes = 'Paciente com histórico de hipertensão';

  print('Telefone: ${telefone ?? 'não informado'}');

  if (observacoes != null) {
    print('Tamanho das observações: ${observacoes.length}');
  }
}
