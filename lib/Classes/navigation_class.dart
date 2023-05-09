import 'package:flutter/cupertino.dart';
import 'package:page_animation_transition/page_animation_transition.dart';

import '../Auth Screens/login_screen.dart';
import '../Auth Screens/signup_screen.dart';
import 'bottom_to_top_transition.dart';

class Navigation {
  void showLoginScreens(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (context) {
        return CupertinoActionSheet(
          title: const Text("You need to sign in or login first"),
          actions: [
            CupertinoActionSheetAction(
              child: const Text(
                "Sign in",
              ),
              onPressed: () {
                //setRedirect(redirect);
                Navigator.pop(context);
                Navigator.of(context).push(PageAnimationTransition(
                    page: const SignUpScreen(),
                    pageAnimationType: BottomToTopTransition()));
              },
            ),
            CupertinoActionSheetAction(
              child: const Text("Login"),
              onPressed: () {
                //setRedirect(redirect);
                Navigator.pop(context);
                Navigator.of(context).push(PageAnimationTransition(
                    page: const LoginScreen(),
                    pageAnimationType: BottomToTopTransition()));
              },
            ),
          ],
        );
      },
    );
  }
}
