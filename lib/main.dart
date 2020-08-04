
import 'package:covid_19/teste.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'constant.dart';


final List<String> imgList = [
  'https://3.bp.blogspot.com/-3Y84LQMA6vo/U-gWh9BnMwI/AAAAAAAAA8E/sdpXm-sP1xQ/s1600/Dionisio.png',
  'https://3.bp.blogspot.com/-3Y84LQMA6vo/U-gWh9BnMwI/AAAAAAAAA8E/sdpXm-sP1xQ/s1600/Dionisio.png',
  'https://3.bp.blogspot.com/-3Y84LQMA6vo/U-gWh9BnMwI/AAAAAAAAA8E/sdpXm-sP1xQ/s1600/Dionisio.png',
  'https://3.bp.blogspot.com/-3Y84LQMA6vo/U-gWh9BnMwI/AAAAAAAAA8E/sdpXm-sP1xQ/s1600/Dionisio.png',
  'https://3.bp.blogspot.com/-3Y84LQMA6vo/U-gWh9BnMwI/AAAAAAAAA8E/sdpXm-sP1xQ/s1600/Dionisio.png',
  'https://3.bp.blogspot.com/-3Y84LQMA6vo/U-gWh9BnMwI/AAAAAAAAA8E/sdpXm-sP1xQ/s1600/Dionisio.png',
];

void main() => runApp(MyApp());
enum MenuItem { LOGOUT,GUIDANCE, ABOUT }

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //Desabilita debug banner
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        fontFamily: "Poppins",
        textTheme: TextTheme(
          body1: TextStyle(color: kBodyTextColor),
        ),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  void initState() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          children: <Widget>[
            Container(
                padding: EdgeInsets.only(left: 40, top: 50, right: 20),
                height: 310,
                width: double.infinity, //
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight: Radius.circular(40)),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter, //
                        colors: [
                          Color(0xFF3594DD),
                          Color(0xFF4563DB),
                          Color(0xFF5036D5),
                          Color(0xFF5B16D0),
                        ]),
                    image: DecorationImage(
                        image: AssetImage("assets/images/virus.png"))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                      Align(
                        alignment: Alignment.topRight,
                        child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return Teste();
                              }));
                            },
                            child: SvgPicture.asset("assets/icons/menu.svg")),
                      ),
                    Expanded(
                        child: Row(
                      children: <Widget>[
                        Image.asset("assets/images/fla.png",
                            width: 210,
                            fit: BoxFit.fitWidth,
                            alignment: Alignment.topCenter),
                        //SvgPicture.asset("assets/icons/Drcorona.svg",width: 230,fit: BoxFit.fitWidth,alignment: Alignment.topCenter),
                        Container(),
                      ],
                    ))
                  ],
                ),
              ),
//Abaixo chamada para carrousel slider com imagens
//          Column(
//            children: <Widget>[
//              CarouselSlider(
//                  options: CarouselOptions(
//                    autoPlay: true,
//                    aspectRatio: 2.0,
//                    enlargeCenterPage: false,
//                  ),
//                  items: imageSliders,
//                ),
//            ],
//          ),
            buildCard(),
          ],
        ),
      ),
    );
  }

  buildCard(){
    return Padding(
        padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
        child:
        Card(color: Colors.grey[80], child: _buildRow()));
  }
  Widget _buildRow() {
      return Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Row(
              children: <Widget>[
                _firstColumn(),
                _secondColumn(),
              ],
            ),
          ),
        ],
      );
  }

  Widget _firstColumn() {
    return Expanded(
        child: Row(children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    width: 150,
                    height: 150,
                  child: Image.asset("assets/images/ss.png"),
                ),
              ),
            ],
          ),
        ]));
  }


  _secondColumn(){
    return Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 8.0),
                  Text(
                    "Flutter é um kit de desenvolvimento de interface de usuário, de código aberto, criado pelo Google, que possibilita a criação de aplicativos compilados nativamente. Atualmente pode compilar para Android, iOS, Windows, Mac, Linux, Google Fuchsia e Web.",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8.0),
                ],
              ),
            ),
          );
  }



//Pop Menu, trabalhar para usar fora de APP-BAR
  Widget _popupMenu() {
    return PopupMenuButton<MenuItem>(
      onSelected: onSelectedMenu,
      itemBuilder: (BuildContext context) => <PopupMenuItem<MenuItem>>[
        const PopupMenuItem<MenuItem>(
          value: MenuItem.LOGOUT,
          child: Text('Logout'),
        ),
        const PopupMenuItem<MenuItem>(
          value: MenuItem.GUIDANCE,
          child: Text('Orientações'),
        ),
        const PopupMenuItem<MenuItem>(
          value: MenuItem.ABOUT,
          child: Text('Sobre'),
        ),
      ],
    );
  }
}

Future onSelectedMenu(MenuItem selectedValue) async {
  switch (selectedValue) {
    case MenuItem.LOGOUT:

      break;
    case MenuItem.GUIDANCE:

      break;
    case MenuItem.ABOUT:

      break;
  }
}

//Exemplo de metodo para slider com imagens
final List<Widget> imageSliders = imgList
    .map((item) => Container(
          margin: EdgeInsets.all(5.0),
          child: Container(
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(item,
                        fit: BoxFit.cover, width: 100, height: 100),
                    Container(
                      width: 95,
                      //Tamanho referente ao container que engloba a imagem
                      decoration: BoxDecoration(
                        borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(20.0),
                            topRight: const Radius.circular(20.0),
                            bottomLeft: const Radius.circular(20.0),
                            bottomRight: const Radius.circular(20.0)),
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(200, 0, 0, 0),
                            Color.fromARGB(0, 0, 0, 0)
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                      padding: EdgeInsets.only(
                          top: 90.0, left: 12.0, right: 0.0, bottom: 0.0),
                      child: Text(
                        'Dionisio',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ))
    .toList();

//Estilização de container
//class MyClipper extends CustomClipper<Path> {
//  @override
//  Path getClip(Size size) {
//    var path = Path();
//    path.lineTo(0, size.height - 80);
//    path.quadraticBezierTo(
//        size.width / 2, size.height, size.width, size.height - 20);
//    path.lineTo(size.width, 0);
//    path.close();
//    return path;
//  }
//
//  @override
//  bool shouldReclip(CustomClipper<Path> oldClipper) {
//    // TODO: implement shouldReclip
//    return null;
//  }
//}

