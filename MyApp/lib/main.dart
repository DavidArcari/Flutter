import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final TextEditingController _controladorNome = TextEditingController();
  final TextEditingController _controladorQtd = TextEditingController();
  final TextEditingController _controladorValor = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cadastrando Produto'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
          children: <Widget>[
            TextField( 
              controller: _controladorNome,
              decoration: InputDecoration(),  
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: TextField(
                controller: _controladorQtd,
                decoration: InputDecoration(),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: TextField( 
                controller: _controladorValor,
                decoration: InputDecoration(),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: RaisedButton(
              child: Text('Cadastrar'),
                onPressed: () {
                  final String nome = _controladorNome.text;
                  final int quantidade = int.tryParse(_controladorQtd.text);
                  final double valor = double.tryParse(_controladorValor.text);
                  final Produto produtoNovo = Produto(nome, quantidade, valor);
                  print(produtoNovo);
                  },
                ),
              )
            ],
          ),
        ),  
      ),
    );
  }
}

class Produto {
  final String nome;
  final int quantidade;
  final double valor;

  Produto (
    this.nome,
    this.quantidade,
    this.valor
  );
  @override
  String toString() {
    return 'Produto{nome: $nome, quantidade: $quantidade, valor: $valor}';
  }
}

