import 'package:bookly_application/Features/home/presenations/views/widgets/home_view_body.dart';
import 'package:bookly_application/Features/info/info_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class InfoView extends StatelessWidget {
  const InfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Info_Screen(),
    );
  }
}
