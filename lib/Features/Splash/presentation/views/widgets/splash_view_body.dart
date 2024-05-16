import 'package:bookly_application/Features/Splash/presentation/views/widgets/sliding_text.dart';
import 'package:bookly_application/Features/home/presenations/views/home_view.dart';
import 'package:bookly_application/constants.dart';
import 'package:bookly_application/core/utils/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../core/utils/app_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width * 0.75,
            child: Image.asset(AssetsData.splashImage)),
        const SizedBox(
          height: 4,
        ),
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 10),
      end: Offset.zero,
    ).animate(animationController);
    animationController.forward();
  }

  void navigateToHome() {
    
     Future.delayed(
      const Duration(seconds: 2),
      () async{
        GoRouter.of(context).push(AppRouter.klogin);
        /* GoRouter.of(context).push(AppRouter.klogin);
        WidgetsFlutterBinding.ensureInitialized();
        SharedPreferences prefs = await SharedPreferences.getInstance();
        var id = prefs.getString("AddedID");
        print(id); */
        // Get.to(() => const HomeView(),
        //    transition: Transition.downToUp, duration: kTranstionDuration);
       // id==null?GoRouter.of(context).push(AppRouter.klogin):GoRouter.of(context).push(AppRouter.kHomeView);
      },
    ); 
  }
}
