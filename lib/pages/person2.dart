import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constant.dart';
import '../main.dart';
import '../prox_tela.dart';

class Person2 extends StatelessWidget{
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
                    image: AssetImage("assets/images/raio.png"))),
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
                        Image.asset("assets/images/sasuke.png",
                            width: 220,
                            fit: BoxFit.fitWidth,
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
      ],
    );
  }

}