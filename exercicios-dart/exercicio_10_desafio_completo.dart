enum StatusConsulta { agendada, confirmada, cancelada }

class Paciente {
  int id;
  String nome;
  String? telefone;

  Paciente({required this.id, required this.nome, this.telefone});
}

class Consulta {
  int id;
  Paciente paciente;
  double valor;
  StatusConsulta status;

  Consulta({
    required this.id,
    required this.paciente,
    required this.valor,
    required this.status,
  });

  void confirmar() {
    if (status == StatusConsulta.agendada) status = StatusConsulta.confirmada;
  }

  void cancelar() {
    if (status == StatusConsulta.agendada) status = StatusConsulta.cancelada;
  }
}

void main() {
  final carlos = Paciente(
    id: 1,
    nome: 'Carlos Andrade',
    telefone: '(11) 98765-4321',
  );
  final ana = Paciente(id: 2, nome: 'Ana Souza');

  List<Consulta> consultas = [
    Consulta(
      id: 1,
      paciente: carlos,
      valor: 350.0,
      status: StatusConsulta.agendada,
    ),
    Consulta(
      id: 2,
      paciente: ana,
      valor: 280.0,
      status: StatusConsulta.agendada,
    ),
  ];

  Set<String> especialidadesUnicas = {
    'Cardiologia',
    'Dermatologia',
    'Cardiologia',
  };

  Map<String, dynamic> dadosPaciente = {
    'nome': carlos.nome,
    'telefone': carlos.telefone,
  };

  var resumoRapido = (paciente: carlos.nome, valor: 350.0);

  consultas[0].confirmar();
  consultas[1].cancelar();

  print('--- Relatório Final ---');
  print('Quantidade de consultas: ${consultas.length}');

  double soma = consultas.fold(0.0, (total, c) => total + c.valor);
  print('Soma dos valores: R\$ ${soma.toStringAsFixed(2)}');

  for (var c in consultas) {
    print('Consulta #${c.id} | ${c.paciente.nome} | ${c.status}');
  }

  print(
    'Especialidades únicas: $especialidadesUnicas (${especialidadesUnicas.length})',
  );
  print('Map do paciente: $dadosPaciente');
  print('Record: ${resumoRapido.paciente} - R\$ ${resumoRapido.valor}');
  print('Telefone da Ana: ${ana.telefone ?? "não informado"}');
}
