// lib/screens/login.dart
import 'package:apuntes_clase/screens/pagina_inicio.dart'; // Importa la página de inicio
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'My Flutter App',
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  _Login createState() => _Login();
}

class _Login extends State<Login> {
  String usuarioText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(context), // Pasamos el context aquí
    );
  }

  Widget body(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              "https://scontent.fqro1-1.fna.fbcdn.net/v/t1.6435-9/96258639_2990287924383412_422139691140120576_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=25d718&_nc_eui2=AeGwh-ZVyB_nFQloUPk2YH5FH_2M3Dy4FWAf_YzcPLgVYHLqFA6CVQ5WeSXK6JaxNA0&_nc_ohc=CwpGnF1x-qIQ7kNvgEg1wPr&_nc_zt=23&_nc_ht=scontent.fqro1-1.fna&_nc_gid=ASAFXhvQJpQJ2Dq-qFhS9rH&oh=00_AYCWBi5HM6BJAKf1Q1Gl16RW4MJ3AWpCg7WxHwnWMBGz4g&oe=6730CBAA"),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            nombre(),
            usuario((value) {
              setState(() {
                usuarioText = value;
              });
            }),
            password(),
            const SizedBox(height: 10),
            boton(context, usuarioText),
          ],
        ),
      ),
    );
  }

  Widget nombre() {
    return const Text(
      "Login",
      style: TextStyle(
          color: Colors.white, fontSize: 35.0, fontWeight: FontWeight.bold),
    );
  }

  Widget usuario(ValueChanged<String> onChanged) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: TextField(
        decoration: const InputDecoration(
          hintText: "User",
          fillColor: Colors.white,
          filled: true,
        ),
        onChanged: onChanged,
      ),
    );
  }

  Widget password() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: const TextField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: "Password",
          fillColor: Colors.white,
          filled: true,
        ),
      ),
    );
  }

  Widget boton(BuildContext context, String usuarioText) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.cyan, // Color de fondo
        padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 10),
      ),
      onPressed: () {
        try {
          // Navegar a PaginaInicio y pasar el usuarioText
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => PaginaInicio(usuario: usuarioText),
            ),
          );
        } catch (e) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('error al navegar: $e'),
          ));
        }
      },
      child: const Text(
        "Entrar",
        style: TextStyle(fontSize: 25, color: Colors.white),
      ),
    );
  }
}
