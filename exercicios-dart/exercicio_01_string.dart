void main() {
  String especialidade = 'Cardiologia';
  String nomePaciente = 'Carlos Andrade';

  print('Especialidade: $especialidade');
  print('Maiúsculo: ${especialidade.toUpperCase()}');
  print('Minúsculo: ${especialidade.toLowerCase()}');
  print('Tamanho do nome: ${nomePaciente.length}');
  print(
    'Nome invertido nas palavras: ${nomePaciente.split(' ').reversed.join(' ')}',
  );
  print('Contém "Andrade"? ${nomePaciente.contains('Andrade')}');
}
