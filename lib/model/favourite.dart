import 'package:flutter/cupertino.dart';

class Favourite with ChangeNotifier {
  int like = 0;
  bool isToggled = false;
  bool liked() {
    // if (!isToggled) {
    //   like++;
    // } else {
    //   like--;
    // }
    isToggled != true ? like++ : like--;
    notifyListeners();

    return isToggled = !isToggled;
  }
}
