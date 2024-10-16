import 'package:apuntes_clase/utilidades/lista_ropa.dart';
import 'package:flutter/material.dart';

class PaginaInicio extends StatefulWidget {
  const PaginaInicio({super.key});

  @override
  State<PaginaInicio> createState() => _PaginaInicioState();
}

class _PaginaInicioState extends State<PaginaInicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('ROPA'),
        backgroundColor: Colors.grey,
      ),
      body: ListView(
        children: const [
          ListaRopa(),
        ],
      ),
    );
  }
}
