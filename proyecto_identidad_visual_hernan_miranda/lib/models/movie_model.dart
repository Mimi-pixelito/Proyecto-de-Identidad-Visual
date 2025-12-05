class Movie {
  final int id;
  final String title;
  final String overview;
  final String posterPath;
  final double voteAverage;
  final String releaseDate;

  // Constructor simple
  Movie({
    required this.id,
    required this.title,
    required this.overview,
    required this.posterPath,
    required this.voteAverage,
    required this.releaseDate,
  });

  // Esto convierte el mapa raro que nos da la API (JSON) en un objeto Movie
  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      id: json['id'],
      title: json['title'] ?? 'Sin título',
      overview: json['overview'] ?? 'Sin descripción disponible.',
      // Si no hay imagen, dejamos esto vacío o podríamos poner una por defecto
      posterPath: json['poster_path'] ?? '', 
      // A veces viene como entero, así que lo forzamos a double
      voteAverage: (json['vote_average'] ?? 0).toDouble(),
      releaseDate: json['release_date'] ?? 'Desconocida',
    );
  }
}