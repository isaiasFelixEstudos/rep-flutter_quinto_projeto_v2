import 'package:flutter/material.dart';
import 'formpagevalidator.dart';
import 'formpage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _paginaSelecionada = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: IndexedStack(
        index: _paginaSelecionada,
        children: [
          FormPageValidator(),
          FormPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _paginaSelecionada,
        onTap: (int? novoValor) {
          setState(() {
            _paginaSelecionada = novoValor!;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box), label: 'Formulario com validação'),
          BottomNavigationBarItem(
              icon: Icon(Icons.abc), label: 'Formulario sem validação'),
        ],
      ),
    );
  }
}
