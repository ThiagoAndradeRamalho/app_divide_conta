import 'package:flutter/material.dart';
import 'package:app/dados_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
    required this.title,
    // required this.numPessoas,
    // required this.totalConta
  });

  final String title;
  // final int numPessoas;
  // final double totalConta;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _numPessoas = 0;
  double _totalConta = 0;

  double dividirValor() => _totalConta / _numPessoas;

  double getComissao() => _totalConta * 0.1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
          child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 300),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Digite o valor total da conta:',
                style: TextStyle(
                  color: Color.fromARGB(31, 6, 2, 2),
                  fontSize: 30,
                )),
            TextField(
              keyboardType: TextInputType.number,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onPrimary,
                  fontSize: 20,
                ),
                onChanged: (value) {
                  setState(() {
                    _totalConta = double.parse(value);
                  });
                }),
            Container(
              height: 40,
            ),
            const Text('Digite o valor total de pessoas:',
                style: TextStyle(
                  color: Color.fromARGB(31, 6, 2, 2),
                  fontSize: 30,
                )),
            TextField(
                keyboardType: TextInputType.number,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onPrimary,
                  fontSize: 20,
                ),
                onChanged: (value) {
                  setState(() {
                    _numPessoas = int.parse(value);
                  });
                }),

            SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DadosPage(
                        valorDividido: dividirValor(),
                        comissao: getComissao(),
                      ),
                    ),
                  );
                },
                child: Text('Calcular e Mostrar Resultados'),
              ),
          ],
        ),
      )),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}
