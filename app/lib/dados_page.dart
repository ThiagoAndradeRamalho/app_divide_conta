import 'package:flutter/material.dart';

class DadosPage extends StatelessWidget {
  final double valorDividido;
  final double comissao;

  DadosPage({required this.valorDividido, required this.comissao});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resultados'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Valor por pessoa: ${valorDividido.toStringAsFixed(2)}', style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            Text('Comissão: ${comissao.toStringAsFixed(2)}', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}