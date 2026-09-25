void main() {
  Set<String> especialidades = {'Cardiologia', 'Pediatria', 'Dermatologia'};

  especialidades.add('Cardiologia'); // duplicado, não faz efeito
  especialidades.add('Ortopedia');

  print('Conjunto final: $especialidades');
  print('Contém Pediatria? ${especialidades.contains('Pediatria')}');
  print('Quantidade de especialidades únicas: ${especialidades.length}');
}
