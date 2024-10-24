import 'package:apuntes_clase/screens/detalle_producto.dart';
import 'package:flutter/material.dart';

class Contenedor extends StatelessWidget {
  final String imagen;
  final String producto;
  final String precio;

  const Contenedor({
    super.key,
    required this.imagen,
    required this.producto,
    required this.precio,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // Agregado GestureDetector
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetalleProducto(
              imagen: imagen,
              producto: producto,
              precio: precio,
            ),
          ),
        );
      },
      child: Container(
        // Padding de la caja
        padding: const EdgeInsets.all(10),
        // Decoración de la caja
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: <Widget>[
            SizedBox(
              height: 100.0,
              width: 100.0,
              // Aquí va la variable imagen interpolada correctamente
              child: Image.network(imagen),
            ),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment
                  .start, // Para alinear el texto a la izquierda
              children: [
                // Aquí va la variable producto interpolada correctamente
                Text(
                  producto,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 25),
                // Aquí va la variable precio interpolada correctamente
                Text(
                  '$precio Dolares',
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w200),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
