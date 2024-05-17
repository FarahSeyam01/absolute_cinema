import 'package:bookly_application/Features/home/model/filmdetailsmodel.dart';
import 'package:bookly_application/Features/home/model/targetFilmModel.dart';
import 'package:bookly_application/constants.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

const getFilmApiUrl = "https://backend-in-db-project.onrender.com/MovieID";

Future<Targetfilm> getFilmApi() async {
 
  
  Targetfilm targetFilm = Targetfilm(movieid: '', title: '', poster: '', genres: [], castPhotos: [] );
  
  String? movieId = getMovieId();

  try {
    if (movieId != null) {
      print('id hhere: $movieId');
    } else {
      print('id is null');
      //return filmsList; // Return empty list if id is null
    }

    final Map<String, dynamic> requestBody = {'id': movieId};
    final Response response = await Dio().get(getFilmApiUrl, data: requestBody);

    if (response.statusCode == 200 || response.statusCode == 201) {
      final filmsData = response.data;
      
     targetFilm=  Targetfilm(
          movieid: filmsData['movieid'],
          title: filmsData['title'],
          poster: filmsData['poster'],
          genres: List<String>.from(filmsData['genres']),
       castPhotos: List<String>.from(filmsData['cast_photos']),
          //cast: List<String>.from(filmsData['cast']),
        );
     
      print(targetFilm);
      //print(targetFilm.title);
      return targetFilm;
    } else {
      print('Failed to fetch films. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }

  return targetFilm;
}