
import 'package:flutter/material.dart';
import 'package:untitled1/tabs/browse/browse.dart';
import 'package:untitled1/tabs/home/home_tab.dart';
import 'package:untitled1/tabs/search/search.dart';
import 'package:untitled1/tabs/watch_list/watch_list.dart';

class MyAppProvider extends ChangeNotifier {
  int index = 0;
  bool isMovieAdded = false;

  List<Widget> tabs = [
    const HomeTab(),
    const SearchTab(),
    const BrowseTab(),
    const Watchlist(),
  ];

  onTap(value) {
    index = value;
    notifyListeners();
  }
}
