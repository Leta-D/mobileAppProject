import 'package:fitlife2/backend_control/app_dataB_control.dart';
import 'package:fitlife2/backend_control/app_state_control.dart';
import 'package:fitlife2/network_control/network_api_access.dart';
import 'package:fitlife2/theme/theme_dataShip.dart';
import 'package:fitlife2/widgets/listed_discover_frame.dart';
import 'package:fitlife2/widgets/listed_item_frame.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);
    final appProvider = Provider.of<AppStateControl>(context);
    return SizedBox(
      height: screenSize.height / 1.22,
      child: ListView(
        children: [
          Text(
            "From local",
            style: TextStyle(color: mainWhiteGenerator(1), fontSize: 20),
          ),

          for (var item in appProvider.favoriteHome)
            ListedItemFrame(
              item["imgUrl"],
              item["name"],
              item["target"],
              item["steps"],
            ),
          Text(
            "From Discovery",
            style: TextStyle(color: mainWhiteGenerator(1), fontSize: 20),
          ),
          FutureBuilder(
            future: fetchDataWithId(favoriteDescovery),
            builder: (BuildContext context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasData) {
                  if (favoriteDescovery.isEmpty) {
                    return Center(
                      child: Text(
                        "Favorite from Discovery is empty!",
                        style: TextStyle(
                          color: secondGreenGenerator(1),
                          fontSize: 16,
                        ),
                      ),
                    );
                  }
                  return SizedBox(
                    height: screenSize.height / 1.5,
                    child: ListView(
                      children: [
                        for (var exerciseObject in snapshot.data!)
                          ListedDiscoverFrame(exerciseObject: exerciseObject),
                      ],
                    ),
                  );
                } else {
                  return Text(
                    "Connection problem error",
                    style: TextStyle(color: Colors.red, fontSize: 25),
                  );
                }
              } else if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: CircularProgressIndicator(
                      color: mainGreenGenerator(1),
                    ),
                  ),
                );
              } else {
                return Text(
                  "Connection problem",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
