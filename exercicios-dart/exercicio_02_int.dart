void main() {
  int idConsulta = 1;
  int idadePaciente = 35;
  int totalConsultas = 12;

  print('ID da consulta: $idConsulta');
  print('Idade do paciente: $idadePaciente');
  print('Idade daqui a 10 anos: ${idadePaciente + 10}');
  print('Total de consultas do ano: $totalConsultas');
  print('Média de consultas por mês: ${(totalConsultas / 12).round()}');
  print('É par? ${totalConsultas % 2 == 0}');
}
