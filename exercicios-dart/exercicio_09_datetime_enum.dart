enum StatusConsulta { agendada, confirmada, cancelada }

void main() {
  DateTime dataConsulta = DateTime(2026, 8, 21, 14, 30);
  StatusConsulta status = StatusConsulta.agendada;
  var resumo = (paciente: 'Carlos Andrade', valor: 350.0);

  print('Data: ${dataConsulta.day}/${dataConsulta.month}/${dataConsulta.year}');
  print('Status atual: $status');
  print('Record - paciente: ${resumo.paciente} | valor: ${resumo.valor}');

  status = StatusConsulta.confirmada;
  print('Status atualizado: $status');

  DateTime dataRetorno = dataConsulta.add(const Duration(days: 7));
  print(
    'Data de retorno: ${dataRetorno.day}/${dataRetorno.month}/${dataRetorno.year}',
  );
}
