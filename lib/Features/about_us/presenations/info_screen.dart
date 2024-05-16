
import 'package:flutter/material.dart';

import '../widgets/custom_info.dart';

class Info_Screen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "About us",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Custom_INfo(
            photo: 'assets/images/Mohamed.jpg',
            text: 'Mohamed Ali',
            mail: 'the7ag22477@gmail.com',
            phone_num: '01027961546',
          ),
          Custom_INfo(
            photo: ('assets/images/Hady.jpg'),
            text: 'Hady Hesham',
            mail: 'hady.hisham.zu@gmail.com',
            phone_num: '01555234783',
          ),
          Custom_INfo(
            photo: ('assets/images/Abdelrahman.jpg'),
            text: 'Abdelrahman Ahmed',
            mail: 'eng.abdelrahman.ahmed.kamel@gmail.com',
            phone_num: '01125585006',
          ),
          Custom_INfo(
            photo: ('assets/images/salah.jpg'),
            text: 'Mohamed Salah',
            mail: 'mohamedelmorgel2001@gmail.com',
            phone_num: '01125927266',
          ),
          Custom_INfo(
            photo: ('assets/images/ahmed.jpg'),
            text: 'Ahmed Mohamed ',
            mail: 'eng.ahmedmohamedfawzy@gmail.com',
            phone_num: '01022176063',
          ),
          Custom_INfo(
            photo: ('assets/images/Mahmoud.jpg'),
            text: 'Mahmoud Samir',
            mail: 'masshass132@gmail.com',
            phone_num: '01280242745',
          ),
          Custom_INfo(
            photo: ('assets/images/yara.jpg'),
            text: 'Yara Mahmoud',
            mail: 'yaraafifi106@gmail.com',
            phone_num: '01015287430',
          ),
          Custom_INfo(
            photo: ('assets/images/Norhan.jpg'),
            text: 'Norhan Ahmed',
            mail: 'norhan.ahmed8262@gmail.com',
            phone_num: '01029585431',
          ),
          Custom_INfo(
            photo: ('assets/images/narden.jpg'),
            text: 'Narden Sobhy',
            mail: 'narden12340987@gmail.com',
            phone_num: '01155188543',
          ),
          Custom_INfo(
            photo: ('assets/images/nour.jpg'),
            text: 'Nour Reda',
            mail: 'eng.nourhanreda@gmail.com',
            phone_num: '01026686341',
          ),
          Custom_INfo(
            photo: ('assets/images/Sarah.jpg'),
            text: 'Sarah Elsayed',
            mail: 'sarasleem020@gmail.com',
            phone_num: '01060938188',
          ),
          Custom_INfo(
            photo: ('assets/images/duaa.jpg'),
            text: 'Duaa Wagdy',
            mail: 'doaawagdy24@gmail.com',
            phone_num: '01287581342',
          ),
          Custom_INfo(
            photo: ('assets/images/farah.jpg'),
            text: 'Farah Mohamed',
            mail: 'farahseyam1911@gmail.com',
            phone_num: '01022375524',
          ),
          Custom_INfo(
            photo: ('assets/images/noha.jpg'),
            text: 'Noha Ahmed',
            mail: 'nohaniho88@gmail.com',
            phone_num: '01019873378',
          ),
          Custom_INfo(
            photo: ('assets/images/farida.jpg'),
            text: 'Farida Elsayed',
            mail: 'faredaelsayed0@gmail.com',
            phone_num: '01065020584',
          ),
        ],
      ),
    );
  }
}
