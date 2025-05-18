import 'package:flutter/cupertino.dart';
import 'package:fitlife2/backend_control/app_dataB_control.dart';

class AppStateControl extends ChangeNotifier {
  String _userName = "";
  bool _isUserNameSet = false;
  bool _ageNotSet = true;

  String get userName => _userName;
  set userName(value) => _userName = value;
  get isUserNameSet => _isUserNameSet;
  get ageNotSet => _ageNotSet;

  void changeUserNameError(bool value) {
    _isUserNameSet = value;
    notifyListeners();
  }

  void changeAgeSet(bool value) {
    _ageNotSet = value;
    notifyListeners();
  }

  void addUserNameToMap() {
    userProfileInfo["userName"] = _userName;
    notifyListeners();
  }

  bool checkUserProfileData() {
    if (userProfileInfo["age"] == -1 || userProfileInfo["userName"] == "") {
      return false;
    }
    notifyListeners();
    return true;
  }

  // Home

  int _currentBottomNavIndex = 0;
  get currentBottomNavIndex => _currentBottomNavIndex;

  void change_currentBottomNavIndex(int index) {
    _currentBottomNavIndex = index;
    notifyListeners();
  }

  // Discover
  int _currentDiscoverNavIndex = 0;
  String _specifier = "";
  int _offSet = 0;
  List<String> discoveryOption = ["bodyPart", "target", "equipment"];

  get currentDiscoverNavIndex => _currentDiscoverNavIndex;
  get specifier => _specifier;
  get offset => _offSet;
  set offset(value) => _offSet;
  void change_currentDiscoverNavIndex(int index) {
    _currentDiscoverNavIndex = index;
    _specifier = "";
    notifyListeners();
  }

  void change_specifier_offset(int offset, String specifier) {
    _offSet = offset;
    _specifier = specifier;
    notifyListeners();
  }

  List<Map<String, dynamic>> _favoriteHome = [];

  get favoriteHome => _favoriteHome;
  // this is for home page
  bool checkAlradySelectedFav(String name) {
    for (var item in _favoriteHome) {
      if (name == item["name"]) return true;
      notifyListeners();
    }
    return false;
  }

  void controlfavoriteHome(Map<String, dynamic> item, bool mode) {
    if (mode && !checkAlradySelectedFav(item["name"])) {
      _favoriteHome.add(item);
      notifyListeners();
    } else {
      _favoriteHome.removeWhere((itemo) => itemo["name"] == item["name"]);
      notifyListeners();
    }
    // call a notifier function after creating
    notifyListeners();
  }
}
