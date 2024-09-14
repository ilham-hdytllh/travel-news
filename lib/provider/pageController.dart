import 'package:flutter/widgets.dart';

class PageControllerProvider extends ChangeNotifier {
  late PageController _pageController;

  PageController get pageController => _pageController;

  PageControllerProvider() {
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
