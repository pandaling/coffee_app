// import 'package:child_care_super_app/features/auth/controllers/auth_controller.dart';
// import 'package:child_care_super_app/features/main/view/main_view.dart';
import 'dart:async';

import 'package:corpsec_app/view/home_screen/view/home_view.dart';
import 'package:corpsec_app/view/main_screen/view/main_screen.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  // _validateUserStatus() async {
  //   await Future.delayed(const Duration(seconds: 1));

  //   // bool isLoggedIn = AuthController.instance.isLoggedIn;

  //   if (isLoggedIn) {
  //     AuthController.instance.retrieveUserInfo();

  //     await Future.delayed(const Duration(milliseconds: 500));

  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(builder: (_) => const MainView()),
  //     );
  //   } else {
  //     AuthController.instance.mockUserInfo();
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(builder: (_) => const MainView()),
  //     );
  //   }
  // }

  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (_) => const MainView()));
    });
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print('Widget Lifecycle: didChangeDependencies');
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.6,
          child: const LinearProgressIndicator(),
        ),
      ),
    );
  }
}
