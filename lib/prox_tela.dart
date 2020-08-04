import 'package:covid_19/pages/flutterPages.dart';
import 'package:covid_19/pages/otherPage.dart';
import 'package:covid_19/pages/person1.dart';
import 'package:covid_19/pages/person2.dart';
import 'package:covid_19/pages/person3.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ProxTela extends StatefulWidget {
  @override
  ProxTelaState createState() => ProxTelaState();
}

class ProxTelaState extends State<ProxTela> {
  int pageIndex = 0;

  //Criando instancia de chamada para todas as outras telas
  final Person1 _person1 = Person1();
  final Person2 _person2 = Person2();
  final Person3 _person3 = Person3();
  final FlutterPage _flutterPage = FlutterPage();
  final OtherPage _otherPage = OtherPage();

  Widget _showPage = new Person1();

  Widget _pageChooser(int page){
    switch(page){
      case 0:
        return _person1;
        break;
      case 1:
        return _person2;
        break;
      case 2:
        return _person3;
        break;
      case 3:
        return _flutterPage;
        break;
      case 4:
        return _otherPage;
        break;
        default: Container(
          child: Center(
            child: Text(
            "No Page found",style: TextStyle(fontSize: 20),
          ),
        ));
    }
  }

  GlobalKey _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index: pageIndex,
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.image, size: 30),
          Icon(Icons.warning, size: 30),
          Icon(Icons.insert_invitation, size: 30),
          Icon(Icons.perm_identity, size: 30),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.white,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (int tappedIndex) {
          setState(() {
            _showPage = _pageChooser(tappedIndex);
          });
        },
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          //child: Text(_page.toString(),textScaleFactor: 10.0),
          child: _showPage,
        ),
      ));
  }
}
