import 'package:apuntes_clase/utilidades/productos.dart';
import 'package:flutter/material.dart';

class PaginaInicio extends StatefulWidget {
  final String usuario;

  const PaginaInicio({super.key, required this.usuario});

  @override
  State<PaginaInicio> createState() => _PaginaInicioState();
}

class _PaginaInicioState extends State<PaginaInicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], // Color de fondo gris
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://www.sdpnoticias.com/resizer/v2/53R22ZHUMBA2ZJH5FP2G2QUPYA.jpg?smart=true&auth=5f096f945becf08115a2cd043f1217e2b5305390aee470420d766afe683d0d18&width=640&height=360'),
          ),
        ),
        title: Text('Bienvenido ${widget.usuario}'),
        centerTitle: true,
      ),
      body: const ListaRopa(),
    );
  }
}
