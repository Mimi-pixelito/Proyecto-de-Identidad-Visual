import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const NetStreamApp());
}

class NetStreamApp extends StatelessWidget {
  const NetStreamApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NetStream',
      debugShowCheckedModeBanner: false, // Quitamos la etiquetita de debug
      // --- TEMA Y COLORES DEL PDF ---
      theme: ThemeData(
        // Color de fondo principal (#0C2B4E)
        scaffoldBackgroundColor: const Color(0xFF0C2B4E),
        
        // Color de la barra de arriba
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0C2B4E),
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5, // Un poco de espacio como en el logo
          ),
          iconTheme: IconThemeData(color: Colors.white),
        ),
        
        // Colores generales
        primaryColor: const Color(0xFF0C2B4E),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: const Color(0xFF1D546C), // Color acento
        ),
        
        // Estilo de texto por defecto
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
          bodyLarge: TextStyle(color: Colors.white),
        ),
      ),
      // Pantalla inicial
      home: const HomeScreen(),
    );
  }
}