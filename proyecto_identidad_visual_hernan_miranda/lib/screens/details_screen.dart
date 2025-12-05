import 'package:flutter/material.dart';
import '../models/movie_model.dart';

class DetailsScreen extends StatelessWidget {
  final Movie movie;

  // Recibimos la película desde la pantalla anterior
  const DetailsScreen({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0C2B4E), // Fondo oscuro principal
      appBar: AppBar(
        title: Text(movie.title),
      ),
      body: SingleChildScrollView( // Permite hacer scroll si el texto es largo
        child: Column(
          children: [
            // Imagen grande del póster
            SizedBox(
              width: double.infinity,
              height: 400,
              child: movie.posterPath.isNotEmpty
                  ? Image.network(
                      'https://image.tmdb.org/t/p/w500${movie.posterPath}',
                      fit: BoxFit.cover,
                    )
                  : const Icon(Icons.movie_creation, size: 100, color: Colors.white),
            ),
            
            // Contenedor con la información
            Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Color(0xFF1A3D64), // Color secundario para contraste
                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          movie.title,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: 'Roboto', // Usamos una fuente estándar limpia
                          ),
                        ),
                      ),
                      // Círculo con la puntuación
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: const Color(0xFF1D546C), // Color acento
                          shape: BoxShape.circle,
                        ),
                        child: Text(
                          movie.voteAverage.toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Fecha de estreno: ${movie.releaseDate}",
                    style: const TextStyle(color: Colors.white70, fontStyle: FontStyle.italic),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Sinopsis",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    movie.overview,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 30),
                  // Botón decorativo
                  Center(
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF1D546C), // Color terciario
                        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      ),
                      onPressed: () {
                        // Aquí podría ir la acción de "Ver Película"
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Reproduciendo película... (Simulado)")),
                        );
                      },
                      icon: const Icon(Icons.play_arrow, color: Colors.white),
                      label: const Text("VER AHORA", style: TextStyle(color: Colors.white)),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}