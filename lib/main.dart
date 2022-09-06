import 'package:flutter/material.dart';
import 'package:gepat/screens/lista_transferencia.dart';

void main() => runApp(BytebankApp());

class BytebankApp extends StatelessWidget {
    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blueGrey,
        ).copyWith(secondary: Colors.blueAccent[700]),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
          primary: Colors.blueAccent[700],
        )),
        buttonTheme: ButtonThemeData(
            buttonColor: Color.fromARGB(255, 168, 39, 136),
            textTheme: ButtonTextTheme.normal),
      ),
      home: ListaTransferencias(),
    );
  }
}

