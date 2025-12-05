import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sobre los Desarrolladores"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Avatar con tu foto o iniciales
              const CircleAvatar(
                radius: 80,
                backgroundColor: Color(0xFF1D546C),
                child: Icon(Icons.person, size: 80, color: Colors.white),
                // SI QUIERES PONER TU FOTO MIMI:
                // backgroundImage: NetworkImage('URL_DE_TU_FOTO_IMGUR'),
              ),
              const SizedBox(height: 30),
              // Tarjeta con información
              Card(
                color: const Color(0xFF1A3D64),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    children: const [
                      Text(
                        "Desarrollado por:",
                        style: TextStyle(color: Colors.white70, fontSize: 16),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Hernán N. | Miranda B.", // Si quieres le cambias la fuente mimi
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Estudiantes de Ingeniería",
                        style: TextStyle(color: Colors.white70),
                      ),
                      Divider(color: Colors.white24, height: 30),
                      Text(
                        "NetStream App v1.0",
                        style: TextStyle(
                          color: Color(0xFF1D546C), // Color acento del PDF
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 40),
              const Text(
                "\"Cinema is a matter of what's in the frame and what's out\"",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.grey,
                ),
              ),
              const Text("- Martin Scorsese", style: TextStyle(color: Colors.grey)),
            ],
          ),
        ),
      ),
    );
  }
}