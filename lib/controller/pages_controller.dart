import 'package:flutter/material.dart';

import 'package:frescapp/view/primary_screen.dart';

class PagesController extends ChangeNotifier {
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  // final Map<String, WidgetBuilder> routes = {
  //   //'/': (context) => const PrimaryScreen()
  //   //'/login': (context) => const LoginScreen()
  // }
}