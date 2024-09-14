import 'package:flutter/widgets.dart';
import 'package:travelnews/constant/colors.dart';
import 'package:travelnews/provider/pageController.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:svg_flutter/svg_flutter.dart';
import 'package:travelnews/view/home/home.dart';

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({super.key});

  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  late PageController _pageController;
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _pageController = context.read<PageControllerProvider>().pageController;
    _selectedIndex = 0;
  }

  void jumpToPage(int pageIndex) {
    _pageController.jumpToPage(pageIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.white,
      body: PageView(
        onPageChanged: (newPage) {
          setState(() {
            _selectedIndex = newPage;
          });
        },
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: const [
          Home(),
          SizedBox(),
          SizedBox(),
          SizedBox(),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: Center(
          child: BottomNavigationBar(
            enableFeedback: false,
            currentIndex: _selectedIndex,
            onTap: (index) {
              jumpToPage(index);
            },
            selectedItemColor: CustomColor.blue,
            unselectedItemColor: CustomColor.grey,
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            backgroundColor: CustomColor.white,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/icons/home.svg",
                  width: 24,
                  height: 24,
                  color:
                      _selectedIndex == 0 ? CustomColor.blue : CustomColor.grey,
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/icons/bookmark.svg",
                  width: 24,
                  height: 24,
                  color:
                      _selectedIndex == 1 ? CustomColor.blue : CustomColor.grey,
                ),
                label: "Bookmark",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/icons/notification.svg",
                  width: 24,
                  height: 24,
                  color:
                      _selectedIndex == 2 ? CustomColor.blue : CustomColor.grey,
                ),
                label: "Notification",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/icons/profile.svg",
                  width: 24,
                  height: 24,
                  color:
                      _selectedIndex == 3 ? CustomColor.blue : CustomColor.grey,
                ),
                label: "Profile",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
