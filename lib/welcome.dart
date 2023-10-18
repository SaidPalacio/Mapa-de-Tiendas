import 'package:flutter/material.dart';
import 'package:mapa/animated_map.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand, // Para que la imagen de fondo cubra toda la pantalla
        children: [
          // Fondo de pantalla
          Image.asset(
            'fondo_welcome.png', // Reemplaza con la ruta de tu imagen de fondo
            fit: BoxFit.cover,
          ),
          // Contenido en el centro
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'BIENVENIDO A TAINID',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Navegar a la siguiente pantalla
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const AnimatedMarkersMap()),//AnimatedMarkersMap
                  );
                },
                child: const Text('EXPLORAR TIENDAS'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Segunda Pantalla'),
      ),
      body: const Center(
        child: Text('Contenido de la segunda pantalla'),
      ),
    );
  }
}