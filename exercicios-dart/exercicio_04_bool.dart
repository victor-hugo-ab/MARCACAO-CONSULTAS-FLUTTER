void main() {
  bool medicoAtivo = true;
  bool consultaAgendada = true;
  bool pacienteTemTelefone = false;
  bool pagamentoConfirmado = true;

  // 1 e 2: só permite confirmar se as duas condições forem verdadeiras
  bool podeConfirmar = medicoAtivo && consultaAgendada;
  print('Pode confirmar a consulta? $podeConfirmar');

  // 3: aviso de contato faltante
  if (!pacienteTemTelefone) {
    print('Aviso: paciente sem telefone cadastrado');
  }

  // 4: liberado para atendimento
  if (pagamentoConfirmado) {
    print('Liberado para atendimento');
  }
}
