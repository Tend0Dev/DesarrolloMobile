import 'package:flutter/material.dart';

class DetalleProducto extends StatelessWidget {
  final String imagen;
  final String producto;
  final String precio;

  const DetalleProducto({
    super.key,
    required this.imagen,
    required this.producto,
    required this.precio,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(producto),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(imagen),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              producto,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              '$precio Dolares',
              style: const TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'estos son los detalles de este producto $producto',
              style: const TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
