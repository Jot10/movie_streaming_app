// import 'dart:async';
// import 'dart:io';

import 'package:flutter/material.dart';
import 'package:movie_streaming/pages/home/homepage.dart';
import 'package:movie_streaming/pages/movies/movies.dart';
import 'package:movie_streaming/pages/profile/profile.dart';
import 'package:movie_streaming/pages/tvseries/tvseries.dart';
import 'package:movie_streaming/pages/watchlist/watchlist.dart';
class bottomnavigation extends StatefulWidget {
  const bottomnavigation({super.key});

  @override
  State<bottomnavigation> createState() => _bottomnavigationState();
}

class _bottomnavigationState extends State<bottomnavigation> {
  
  int selectedindex=0;
    void navigateBottomNavBar(int index){
      setState(() {
        selectedindex=index;
      });
    }
  @override
  Widget build(BuildContext context) {
    
    final List <Widget> screens=[
      homepage(),
      moviespage(),
      tvseries(),
      watchpage(),
      profilepage()

    ];
    return Scaffold(
      body: screens[selectedindex],
     bottomNavigationBar: BottomNavigationBar(
      backgroundColor: Colors.black,
      type: BottomNavigationBarType.fixed,
      currentIndex: selectedindex,
      selectedFontSize: 10,
      unselectedFontSize: 10,
      selectedItemColor: Colors.yellow,
      unselectedItemColor: Colors.white,
      selectedLabelStyle: TextStyle(color: Colors.black),
      unselectedLabelStyle: TextStyle(color: Colors.black),
      onTap: navigateBottomNavBar,
      items: [
        BottomNavigationBarItem(
        icon: Icon(Icons.home_filled),
        activeIcon: Icon(Icons.home_filled),
        label: 'Home',),

        BottomNavigationBarItem(
        icon: Icon(Icons.play_arrow_outlined),
        activeIcon: Icon(Icons.play_arrow),
        label: 'Movies',),

        BottomNavigationBarItem(
        icon: Icon(Icons.folder_outlined),
        activeIcon: Icon(Icons.folder),
        label: 'TV Series',
       ),

        BottomNavigationBarItem(
        icon: Icon(Icons.bookmark_outline),
        activeIcon: Icon(Icons.bookmark_outline),
        label: 'Watchlist',),

        BottomNavigationBarItem(
        icon: Icon(Icons.menu),
        activeIcon: Icon(Icons.menu),
        label: 'more',)
      ],),
    );
  }
}