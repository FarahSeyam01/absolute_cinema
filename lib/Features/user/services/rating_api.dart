import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class RatingApi {
  static const String baseUrl = "https://backend-in-db-project.onrender.com/rating";

  userRate({
    required BuildContext context,
    required String rating,
  }) async {
    try {
      Map<String, dynamic> requestBody = {
        "userid": getUserId(),
        "movieid": getMovieId(),
        "rating": rating,
      };
      print(requestBody);
      Response response = await Dio().post("$baseUrl", data: requestBody);
      // Check if response is successful
      if (response.statusCode == 200 || response.statusCode == 201) {
        print('Request successful');
        print('Response: ${response.data}');
        // Show success dialog
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              backgroundColor: Colors.white, // Set background color to white
              title: Text('Success',style: TextStyle(color: Color(0xff100B20)),),
              content: Text('Rating submitted successfully.',style: TextStyle(color: Color(0xff100B20)),),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Color(0xff100B20), // Set button text color
                  ),
                  child: Text('OK'),
                ),
              ],
            );
          },
        );
      } else {
        // Handle non-200 status code
        print('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      // Handle Dio exceptions
      print('Request failed with error: $e');
    }
  }
}
