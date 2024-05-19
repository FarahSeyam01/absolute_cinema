
class Targetfilm {
  final String movieid;

  final String title;
  final String poster;
  final List<String> genres;
  //Lis t<String>? cast;
  final List<String> castPhotos;

  Targetfilm( {
    required this.movieid,
    required this.title,
    required this.poster,
    required this.genres,
   //this.cast,
    required this.castPhotos,

  });


// factory Targetfilm.fromJson(Map<String, dynamic> json) => Targetfilm(
//   movieid: json["movieid"],
//   imdbid: json["imdbid"],
//   tmdbid: json["tmdbid"],
//   title: json["title"],
//   poster: json["poster"],
//   genres: json["genres"] == null ? [] :List<String>.from(json["genres"]!.map((x) => x)),
//   cast: json["cast"] == null ? [] : List<String>.from(json["cast"]!.map((x) => x)),
//   castPhotos: json["cast_photos"] == null ? [] : List<String>.from(json["cast_photos"]!.map((x) => x)),
// );
}
 
