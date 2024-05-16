
import 'package:flutter/material.dart';

import 'list_item.dart';

// ignore: must_be_immutable
class Custom_INfo extends StatelessWidget {
  Custom_INfo(
      {super.key,
      required this.photo,
      required this.text,
      required this.mail,
      required this.phone_num
      });
  final String photo;
  final String text;
  final String mail;
  final String phone_num;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:20.0, right: 20, top: 10,bottom: 15),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 4,
                spreadRadius: 2,
              )
            ]),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:10.0),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(photo),
                  ),
                  title: Text(
                    text,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff003248),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Divider(
                  thickness: 1,
                  height: 20,
                ),
              ),
              list_item(icon: Icons.person, content: 'CSE student at Zagazig university'),
              list_item(icon: Icons.email, content: mail),
              list_item(icon: Icons.call, content: phone_num)
            ],
          ),
        ),
      ),
    );
  }
}
