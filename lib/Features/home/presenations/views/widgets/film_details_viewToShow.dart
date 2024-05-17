import 'package:bookly_application/Features/home/model/filmdetailsmodel.dart';
import 'package:bookly_application/Features/home/model/targetFilmModel.dart';
import 'package:bookly_application/Features/home/presenations/views/widgets/custom_film_details_appBar.dart';
import 'package:bookly_application/Features/home/presenations/views/widgets/film_detail_section.dart';
import 'package:bookly_application/Features/home/presenations/views/widgets/userRating.dart';
import 'package:bookly_application/core/utils/assets.dart';
import 'package:bookly_application/core/utils/styles.dart';
import 'package:flutter/material.dart';

class FilmDetailsShow extends StatelessWidget {
  const FilmDetailsShow({super.key, required this.film});
 final Targetfilm film;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    var width = MediaQuery.of(context).size.width;
    print('in the code');
    print(film.title);
    return 
      
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children:  [
                CustomFilmDetailsAppBar(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.2),
          child: AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
           /* image: DecorationImage(
            image: AssetImage(AssetsData.testImage),
            fit: BoxFit.fill,
          ),  */
        ),
         child: FittedBox(
          fit: BoxFit.fill,
          child: Image.network(film.poster)),
        
      ),
    ),
        ),
        const SizedBox(
          height: 35,
        ),
         Text(

          film.title,
          textAlign: TextAlign.center,
          style: Styles.textStyle30,
        ),
       
        const SizedBox(
          height: 18,
        ),
        userRating(),
        const SizedBox(
          height: 25,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Genere',style: TextStyle(color: Colors.white,fontSize: 25,
                fontWeight: FontWeight.bold),),
            SizedBox(
              width: size.width,
              height: size.height * 0.06,
              child: buildListViewGenere(film.genres),
            ),
          ],
        ),const SizedBox(
          //child: Text('Cast',textAlign: TextAlign.start,),
          height: 25,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Cast',style: TextStyle(color: Colors.white,fontSize: 25,
                fontWeight: FontWeight.bold),),
            SizedBox(
            width: size.width,
             height: size.height * 0.1,
            child: buildListViewCast(film.castPhotos),
            ),
          ],
        )
      ],
    ),
               
              
              ],
            ),
          ),
        );
      
    
  }
  ListView buildListViewCast(List<String> details ) {

    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount:
      details.length,
      itemBuilder: (context, index) {
        return Container(

          padding: const EdgeInsets.only(
              top: 12, right: 4, left: 4),
          //width:75,

          child: CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(details[index]),),);
      }
      ,);
  }
  ListView buildListViewGenere(List<String> details ) {

    return ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount:
              details.length,
          itemBuilder: (context, index) {
            return Container(

              padding: const EdgeInsets.only(
                  top: 12, right: 4, left: 4),
              //width:75,

              child: Text(
           ' ${details[index]},',
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color:  Color(0xffef8262),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),),);
          }
          ,);
  }

}