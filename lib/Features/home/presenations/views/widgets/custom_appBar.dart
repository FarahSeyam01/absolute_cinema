import 'package:bookly_application/Features/home/presenations/views/widgets/best_seller_list_view.dart';
import 'package:bookly_application/Features/info/info_screen.dart';
import 'package:bookly_application/Features/info/infoview.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../search/search_product.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 40,
        bottom: 20,
      ),
      child: Row(
        children: [
          SizedBox(
            height: 75,
            width: 75,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InfoView()),
                );
              },
              child: Image.asset(
                AssetsData.logo,
              ),
            ),
          ),
          Spacer(),
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: ProductSearch());
              //  GoRouter.of(context).push(AppRouter.kSearchView);
            },
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 22,
            ),
          ),
          //Spacer(),
          IconButton(
            onPressed: () async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              prefs.remove("AddedID");
              GoRouter.of(context).push(AppRouter.klogin);
            },
            icon: const Icon(
              Icons.logout,
              size: 22,
            ),
          ),
        ],
      ),
    );
  }
}
