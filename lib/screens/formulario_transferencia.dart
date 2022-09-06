import 'package:flutter/material.dart';

import '../components/editor.dart';
import '../models/transferencia.dart';

const _tituloAppBar = 'Criar Transferência';
const _dica = '0000';
const _rotulo_conta = 'Número da Conta';

const _dicaCampoValor = '00.00';
const _rotulo_Valor = 'Valor';

class FormularioTransferencia extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return FormularioTransferenciaState();
  }
}

class FormularioTransferenciaState extends State<FormularioTransferencia>{

  final TextEditingController _controladorCampoNumeroConta =
      TextEditingController();
  final TextEditingController _controladorCampoValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(_tituloAppBar),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Editor(
                controlador: _controladorCampoNumeroConta,
                dica: _dica,
                rotulo: _rotulo_conta,
              ),
              Editor(
                dica: _dicaCampoValor,
                controlador: _controladorCampoValor,
                rotulo: _rotulo_Valor,
                icone: Icons.monetization_on,
              ),
              ElevatedButton(
                child: Text('Confirmar'),
                onPressed: () => _criaTransferencia(context),
              )
            ],
          ),
        ));
  }

  void _criaTransferencia(BuildContext context) {
    final int? numeroConta =
        int.tryParse(_controladorCampoNumeroConta.text);
    final double? valor =
        double.tryParse(_controladorCampoValor.text);
    if (numeroConta != null && valor != null) {
      final transferenciaCriada = Transferencia(valor, numeroConta);
      Navigator.pop(context, transferenciaCriada);
    }
  }

}
