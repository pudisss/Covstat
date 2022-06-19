import "package:flutter/material.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/widgets.dart";
import "../pages/homepage.dart";
import "../pages/map.dart";
import "../pages/education.dart";
import "../pages/discovery.dart";
import "../pages/news.dart";

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  // Page list
  List pageslist = [
    Homepage(),
    MapPage(),
    Education(),
    Discovery(),
    News(),

  ];

  int _currentIndex = 0;

  void changepage(int index) {
    setState(() {
      _currentIndex = index; 
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: changepage,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset("assets/icons/navigationbaricon/home.png"),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/icons/navigationbaricon/map.png", color: Color.fromRGBO(153, 153, 153, 1)),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/icons/navigationbaricon/person.png"),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/icons/navigationbaricon/discovery.png"),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/navigationbaricon/news.png'),
            label: ""
          )
        ]
        
      ),
      appBar: AppBar(
        leading: Icon(Icons.menu, color: Colors.black),
        title: Text("COVID - 19", style: TextStyle(fontFamily: "Poppins", fontSize: 17, fontWeight: FontWeight.w600, color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  
                });
              },
              child: Icon(Icons.refresh, color: Colors.black)
            )
          )
        ]
      ),
      body: pageslist[_currentIndex],
    );
  }
}