import 'package:bookly_application/Features/home/model/filmdetailsmodel.dart';
import 'package:bookly_application/Features/home/model/targetFilmModel.dart';
import 'package:bookly_application/Features/home/presenations/views/widgets/Similar_films_section.dart';

import 'package:bookly_application/Features/home/presenations/views/widgets/custom_film_details_appBar.dart';
import 'package:bookly_application/Features/home/presenations/views/widgets/film_detail_section.dart';
import 'package:bookly_application/Features/home/presenations/views/widgets/film_details_viewToShow.dart';
import 'package:bookly_application/Features/home/repo/getFiimApi.dart';

import 'package:bookly_application/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/widgets/custom_button.dart';

class FilmDetailsViewBody extends StatefulWidget {
  const FilmDetailsViewBody({super.key});

  @override
  State<FilmDetailsViewBody> createState() => _FilmDetailsViewBodyState();
}


class _FilmDetailsViewBodyState extends State<FilmDetailsViewBody> {
  Films? film;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   // film = getFilmApi();
    print('body1');
    //print(targetFilm);
  }
   Future<Targetfilm> filmsFuture= getFilmApi();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Targetfilm>(


         future: filmsFuture,
      builder: (BuildContext context, AsyncSnapshot<Targetfilm> snapshot)
      {if (snapshot.connectionState == ConnectionState.waiting) {
        // until data is fetched, show loader
        return Center(heightFactor:40,child: const CircularProgressIndicator(color: Colors.white,));
      } else if (snapshot.hasData) {
        // once data is fetched, display it on screen (call buildPosts())
        final film = snapshot.data!;
        print('film title ${film.title}');
        return FilmDetailsShow(film:film ,);
      } else {
        // if no data, show simple Text
        return const Text("No data available");
      }  },
    );
      
    
  }
}
