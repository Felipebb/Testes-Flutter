import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constant.dart';
import '../main.dart';
import '../prox_tela.dart';

class OtherPage extends StatelessWidget {
  final List<String> labels = [
    'Susano',
    'Amaterasu',
    'Chibaku Tensei',
    'Izanagi',
    'Kamui',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ClipPath(
          child: Container(
            padding: EdgeInsets.only(left: 40, top: 50, right: 20),
            height: 310,
            width: double.infinity, //
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight, //
                    end: Alignment.bottomLeft,
                    colors: [
                      kDeathColor,
                      kBodyTextColor,
                    ]),
                image: DecorationImage(
                    image: AssetImage("assets/images/fogo.png"))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Align(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ProxTela();
                        }));
                      },
                      child: SvgPicture.asset("assets/icons/menu.svg")),
                ),
                SizedBox(height: 20),
                Expanded(
                    child: Stack(
                  children: <Widget>[
                    Image.asset("assets/images/madarao.png",
                        width: 220,
                        fit: BoxFit.fitWidth, //
                        alignment: Alignment.topCenter),
                    //SvgPicture.asset("assets/icons/Drcorona.svg",width: 230,fit: BoxFit.fitWidth,alignment: Alignment.topCenter),
                    Positioned(
                      top: 20,
                      left: 180,
                      child: Text(
                        "",
                        style: kHeadingTextStyle.copyWith(color: Colors.white),
                      ),
                    ),
                    Container(),
                  ],
                ))
              ],
            ),
          ),
        ),

        //Container responsavel por uma lista de containers com scroll horizontal
        Container(
          height: 60.0,
          child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            scrollDirection: Axis.horizontal,
            itemCount: labels.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: EdgeInsets.all(10.0),
                width: 160.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xFFD45253), Color(0xFF9E1F28)]),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF9E1F28),
                      offset: Offset(0.0, 2.0),
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    labels[index].toUpperCase(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.8,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
