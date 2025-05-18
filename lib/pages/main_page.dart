import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fitlife2/theme/theme_dataShip.dart';
import 'package:fitlife2/backend_control/app_state_control.dart';
import 'package:fitlife2/widgets/floating_bottom_nav.dart';
import 'package:fitlife2/pages/home_page.dart';
import 'package:fitlife2/pages/discover_page.dart';
import 'package:fitlife2/pages/favorite_page.dart';
import 'package:fitlife2/pages/setting_page.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});
  final data = {
    "Home": Icon(CupertinoIcons.home),
    "Discover": Icon(CupertinoIcons.search),
    "Favorite": Icon(CupertinoIcons.heart_circle),
    "Setting": Icon(CupertinoIcons.settings),
  };
  final pages = [HomePage(), DiscoverPage(), FavoritePage(), SettingPage()];
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);
    final appProvider = Provider.of<AppStateControl>(context);
    return Scaffold(
      // this is used to reduce brightness of the background-color
      backgroundColor: mainGreyGenerator(0.6),

      appBar: AppBar(
        backgroundColor: mainBlackGenerator(0.9),
        elevation: 5,
        shadowColor: secondGreenGenerator(0.7),
        centerTitle: true,
        title: SizedBox(
          height: screenSize.height / 10.1,
          child: Image.asset("assets/images/appLogo.png", fit: BoxFit.fill),
        ),
      ),

      body: Container(
        decoration: BoxDecoration(gradient: backgroundGradient),
        child: Stack(
          children: [
            pages[appProvider.currentBottomNavIndex],
            floatingBottomNavigation(data, context),
          ],
        ),
      ),
    );
  }
}
