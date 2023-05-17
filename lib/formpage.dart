import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  TextEditingController _controladorNome = TextEditingController();
  TextEditingController _controladorCpf = TextEditingController();
  TextEditingController _controladorContato = TextEditingController();

  void validarDados() {
    if (_controladorNome.text.isNotEmpty &&
        _controladorCpf.text.isNotEmpty &&
        _controladorContato.text.isNotEmpty) {
      print(
          '${_controladorNome} - ${_controladorContato} - ${_controladorContato}');
    }
  }

  @override
  Widget build(BuildContext context) {
    //final largura = MediaQuery.of(context).size.width;
    //final altura = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(32, 30, 32, 10),
            child: TextField(
              controller: _controladorNome,
              decoration: InputDecoration(
                labelText: 'Nome',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(32, 10, 32, 10),
            child: TextField(
              controller: _controladorCpf,
              decoration: InputDecoration(
                  labelText: 'Cpf', border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(32, 10, 32, 10),
            child: TextField(
              controller: _controladorContato,
              decoration: InputDecoration(
                  labelText: 'Contato', border: OutlineInputBorder()),
            ),
          ),
          Container(
              child: ElevatedButton(
                  onPressed: validarDados, child: Text('Enviar cadastro')))
        ],
      ),
    );
  }
}
