import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../backend_control/app_state_control.dart';
import 'package:fitlife2/theme/theme_dataShip.dart';

Widget discoverFloatingNav(Map<String, String> items, BuildContext context) {
  final appProvider = Provider.of<AppStateControl>(context);
  Size screenSize = MediaQuery.sizeOf(context);
  return Row(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      for (var item in items.keys)
        Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  appProvider.change_currentDiscoverNavIndex(
                    List.of(items.keys).indexOf(item),
                  );
                },
                icon: SizedBox(
                  height: screenSize.height / 18.3,
                  width: screenSize.width / 8.24,
                  child: Image.asset(
                    items[item]!,
                    color:
                        (appProvider.currentDiscoverNavIndex ==
                                List.of(items.keys).indexOf(item))
                            ? mainGreenGenerator(1)
                            : mainBlackGenerator(1),
                  ),
                ),
              ),
              Text(
                item,
                style: TextStyle(
                  color:
                      (appProvider.currentDiscoverNavIndex ==
                              List.of(items.keys).indexOf(item))
                          ? mainGreenGenerator(1)
                          : mainBlackGenerator(1),
                  fontSize: screenSize.width / 22.88,
                ),
              ),
            ],
          ),
        ),
    ],
  );
}
