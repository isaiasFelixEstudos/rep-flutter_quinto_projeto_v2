import 'package:flutter/material.dart';

class FormPageValidator extends StatefulWidget {
  const FormPageValidator({Key? key}) : super(key: key);

  @override
  State<FormPageValidator> createState() => _FormPageValidatorState();
}

class _FormPageValidatorState extends State<FormPageValidator> {
  final _formkey = GlobalKey<FormState>();
  //bool _emailValido = false;
  bool _formValido = false;
  TextEditingController _controladorNome = TextEditingController();
  TextEditingController _controladorCpf = TextEditingController();
  TextEditingController _controladorContato = TextEditingController();

  void _validacaoFormulario() {
    _formkey.currentState?.validate();
  }

  @override
  void initState() {
    super.initState();
    _controladorNome.addListener(_validacaoFormulario);
    _controladorCpf.addListener(_validacaoFormulario);
    _controladorContato.addListener(_validacaoFormulario);
  }

  @override
  void dispose() {
    super.dispose();
    _controladorNome.removeListener(_validacaoFormulario);
    _controladorCpf.removeListener(_validacaoFormulario);
    _controladorContato.removeListener(_validacaoFormulario);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(32, 10, 32, 10),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: _controladorNome,
                decoration: InputDecoration(
                  errorStyle:
                      TextStyle(color: _formValido ? Colors.blue : Colors.red),
                  errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: _formValido ? Colors.blue : Colors.red)),
                  labelText: 'NOME',
                ),
                onChanged: (value) {
                  setState(() {
                    _formValido = value.isNotEmpty;
                  });
                },
                validator: (String? nome) {
                  if (nome == null || nome.isEmpty) {
                    return 'Preencha o campo';
                  } else {
                    return 'campo preenchido';
                  }
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: _controladorCpf,
                decoration: InputDecoration(
                  errorStyle:
                      TextStyle(color: _formValido ? Colors.blue : Colors.red),
                  errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: _formValido ? Colors.blue : Colors.red)),
                  labelText: 'CPF',
                ),
                onChanged: (value) {
                  setState(() {
                    _formValido = value.isNotEmpty;
                  });
                },
                validator: (String? cpf) {
                  if (cpf == null || cpf.isEmpty) {
                    return 'Preencha o campo';
                  } else {
                    return 'campo preenchido';
                  }
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: _controladorContato,
                decoration: InputDecoration(
                  errorStyle:
                      TextStyle(color: _formValido ? Colors.blue : Colors.red),
                  errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: _formValido ? Colors.blue : Colors.red)),
                  labelText: 'CONTATO',
                ),
                onChanged: (value) {
                  setState(() {
                    _formValido = value.isNotEmpty;
                  });
                },
                validator: (String? contato) {
                  if (contato == null || contato.isEmpty) {
                    return 'Preencha o campo';
                  } else {
                    return 'campo preenchido';
                  }
                },
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
