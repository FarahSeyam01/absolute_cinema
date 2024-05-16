import 'dart:ui';

import 'package:bookly_application/constants.dart';
import 'package:bookly_application/core/utils/app_router.dart';
import 'package:bookly_application/core/utils/styles.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterApi {
  static String ?id;

  static const registerApiUrl =
      "https://backend-in-db-project.onrender.com/signup";
  userRegister(
      {required BuildContext context,
      required TextEditingController userNameCont,
      required TextEditingController emailcont,
      required TextEditingController passcont}) async {
    try {
      print('before');
      Map<String, dynamic> requestBody = {
        'username': userNameCont.text,
        'email': emailcont.text,
        'password': passcont.text,
      };
      Response response =
          await Dio().post("$registerApiUrl", data: requestBody);
      if (response.statusCode == 200 || response.statusCode == 201) {
        print(response.data);
        GoRouter.of(context).push(AppRouter.kfirstFilmsList);
        print(response.data["addedID"]);

        final SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString("AddedID", response.data["addedID"]);
        String? AddedId = prefs.getString("AddedID");
        id=AddedId;

        print("Id is : $AddedId");
        setUserId(response.data["addedID"]);
        print("after");
      }
    } catch (e) {
      if (e is DioException) {
        print(e.response?.data);
        _showErrorDialog(context, 'Format of data isn\'t correct', userNameCont,
            emailcont, passcont);
      }
    }
  }
}

void _showErrorDialog(
  BuildContext context,
  String message,
  TextEditingController userNameCont,
  TextEditingController emailcont,
  TextEditingController passCont,
) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        content: Text(
          message,
          textAlign: TextAlign.center,
          style: Styles.textStyle20.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              emailcont.clear();
              passCont.clear();
              Navigator.of(context).pop(); // Close the dialog
            },
            child: Container(
              width: 120,
              height: 45,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: const Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  'OK',
                  textAlign: TextAlign.center,
                  style: Styles.textStyle20,
                ),
              ),
            ),
          ),
        ],
      );
    },
  );
}
