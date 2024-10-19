import 'package:apuntes_clase/utilidades/contenedor.dart';
import 'package:flutter/material.dart';

class Productos extends StatelessWidget {
  const Productos({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListaRopa();
  }
}

class ListaRopa extends StatelessWidget {
  const ListaRopa({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 15,
        ),
        Contenedor(
            imagen:
                'https://www.sartex.com.mx/cdn/shop/products/PL06IN1.jpg?v=1669330744',
            producto: 'Pantalon',
            precio: '25'),
        SizedBox(
          height: 15,
        ),
        Contenedor(
            imagen:
                'https://milano.com/cdn/shop/products/661-6025A3_Playera_Basica_Lisa_Manga_Corta_Cuello_Redondo_Caballero_Milano_M_4f6f01bb-856f-499b-bfb6-bfff440031c8_1024x1024.jpg?v=1628132534',
            producto: 'Playera',
            precio: '10'),
        SizedBox(
          height: 15,
        ),
        Contenedor(
            imagen:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRviCXrr1sq1d1Ztx5m01Rzh7AXqYDBD4NBQQ&s',
            producto: 'Tenis',
            precio: '90'),
      ],
    );
  }
}
