import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TasbeehState extends ChangeNotifier {
  final SharedPreferences prefs;
  int counter = 0;
  String whichOne = 'Subhanallah\nسُبْحَانَ ٱللَّٰهِ';

  TasbeehState({required this.prefs}) {
    counter = prefs.getInt('counter') ?? 0;
  }

  void increment() {
    counter++;
    prefs.setInt('counter', counter);
    notifyListeners();
  }

  void makeZero() {
    counter = 0;
    prefs.setInt('counter', 0);
    notifyListeners();
  }

  void changeZikr() {
    if (counter == 0) {
      whichOne = 'Subhanallah\nسُبْحَانَ ٱللَّٰهِ';
    } else if (counter == 34) {
      whichOne = 'Alhamdulillah\nٱلْحَمْدُ لِلَّٰهِ';
    } else if (counter == 67) {
      whichOne = 'Allahu akbar\nالله أكبر';
    } else if (counter == 100) {
      whichOne = 'Another zikr';
    }
  }

  @override
  void notifyListeners() {
    changeZikr();
    super.notifyListeners();
  }
}
