import 'package:bookly_application/Features/home/presenations/views/widgets/best_seller_list_view.dart';
import 'package:bookly_application/Features/home/presenations/views/widgets/custom_appBar.dart';
import 'package:bookly_application/Features/home/presenations/views/widgets/featured_listView.dart';
import 'package:bookly_application/Features/home/presenations/views/widgets/firstfilmsListView.dart';
import 'package:bookly_application/constants.dart';
import 'package:bookly_application/core/utils/app_router.dart';
import 'package:bookly_application/core/utils/assets.dart';
import 'package:bookly_application/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class FirstFilmsListBody extends StatelessWidget {
  const FirstFilmsListBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 40,
                    bottom: 20,
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 75,
                        width: 75,
                        child: Image.asset(
                          AssetsData.logo,
                        ),
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {
                          GoRouter.of(context).push(AppRouter.klogin);
                        },
                        icon: const Icon(
                          Icons.logout,
                          size: 22,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Give us a hint of your taste',
                      style: Styles.textStyle18,
                    ),
                    TextButton(
                      onPressed: () {
                        GoRouter.of(context).push(AppRouter.kHomeView);
                      },
                      child: const Text(
                        'Done',
                        style: Styles.textStyle18,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: firstfilmsListView(),
          ),
        ),
      ],
    );
  }
}
