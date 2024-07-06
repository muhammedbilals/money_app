import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class AppNavigation {
  static pushNavigation(BuildContext context, Widget myPage) {
    Navigator.push(
      context,
      PageTransition(
        type: PageTransitionType.fade,
        alignment: Alignment.topCenter,
        duration: const Duration(milliseconds: 300),
        child: myPage,
      ),
    );
  }

  static pushAndRemoveUntilNavigation(BuildContext context, Widget myPage) {
    Navigator.of(context).pushAndRemoveUntil(
        PageTransition(
          type: PageTransitionType.fade,
          alignment: Alignment.topCenter,
          duration: const Duration(milliseconds: 300),
          child: myPage,
        ),
        (Route route) => false);
  }

  static popNavigation(BuildContext context) {
    Navigator.pop(context);
  }

  static pushRepacementNavigation(BuildContext context, Widget myPage) {
    Navigator.of(context).pushReplacement(
      PageTransition(
        type: PageTransitionType.fade,
        alignment: Alignment.topCenter,
        duration: const Duration(milliseconds: 300),
        child: myPage,
      ),
    );
  }
}
