import 'package:covid_19/pagesview/PageView.dart';
import 'package:covid_19/register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bloc/login_bloc.dart';

class Teste extends StatefulWidget {
//  final String cpf;
//
//  const RegisterUser({Key key, this.cpf}) : super(key: key);
  @override
  TesteState createState() => TesteState();
}

class TesteState extends State<Teste> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final userController = TextEditingController();
  final passwordController = TextEditingController();
  LoginBloc _loginBloc;

  void initState() {
    _loginBloc = LoginBloc();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      physics: AlwaysScrollableScrollPhysics(),
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 290,
            decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topCenter, colors: [
                Color(0xFF3594DD),
                Color(0xFF4563DB),
                Color(0xFF5036D5),
                Color(0xFF5B16D0),
              ]),
              borderRadius:
                  (BorderRadius.only(bottomRight: Radius.circular(60))),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 90),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Login",
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Bem-vindo",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 15),
                      Container(
                          child: Form(
                            key: _formKey,
                            child: Column(children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width/1.2,
                                height: 50,
                                padding: EdgeInsets.only(top: 4,left: 16,right: 16,bottom: 4),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(50)
                                    ),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black26,
                                          blurRadius: 5
                                      ),
                                    ]),
                                child: TextFormField(
                                  controller: userController,
                                  keyboardType: TextInputType.emailAddress,
                                  autofocus: false,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    hintText: 'E-mail',
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                  ),
                                  validator: (String value) {
                                    if (value.isEmpty) {
                                      return 'Cpf é obrigatório. Por favor preencha o campo. ';
                                    } else if (value.length < 14) {
                                      return 'Seu cpf deve conter 11 números';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              SizedBox(height: 20),
                              Container(
                                width: MediaQuery.of(context).size.width/1.2,
                                height: 50,
                                padding: EdgeInsets.only(top: 4,left: 16,right: 16,bottom: 4),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(50)
                                    ),
                                    color: Colors.white,
                                    boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 5
                                  ),
                                ]),
                                child: Center(
                                  child: TextFormField(
                                    controller: passwordController,
                                    obscureText: !_loginBloc.showPassword,
                                    keyboardType: TextInputType.emailAddress,
                                    autofocus: false,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      hintText: 'Senha',
//                                      suffixIcon: IconButton(
//                                        icon: Icon(
//                                          _loginBloc.showPassword
//                                              ? Icons.visibility
//                                              : Icons.visibility_off,
//                                          color: Colors.blueGrey,
//                                        ),
//                                        onPressed: () {
//                                          setState(() {
//                                            _loginBloc.showPassword =
//                                            !_loginBloc.showPassword;
//                                          });
//                                        },
//                                      ),
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                    ),

                                    validator: (String value) {
                                      if (value.isEmpty) {
                                        return 'Cpf é obrigatório. Por favor preencha o campo. ';
                                      } else if (value.length < 14) {
                                        return 'Seu cpf deve conter 11 números';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerRight,
                                child: FlatButton(
                                  onPressed: () => Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                        return PageView1();
                                      })),
                                  padding: EdgeInsets.only(right: 16,top: 16),
                                  child: Text(
                                    "Esqueceu sua senha?",
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 25.0),
                                width: MediaQuery.of(context).size.width/1.2,
                                height: 100,
                                child: RaisedButton(
                                  elevation: 5.0,
                                  onPressed: () => Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                        return PageView1();
                                      })),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  color: Colors.white,
                                  child: Text(
                                    "Login",
                                    style: TextStyle(
                                      color: Color(0xFF527DAA),
                                      letterSpacing: 1.5,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'OpenSans',
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      horizontalLine,
                                      Text(
                                        'OU',
                                        style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      horizontalLine,
                                    ],
                                  ),
                                  SizedBox(height: 20.0),
                                  InkWell(
                                      onTap: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(builder: (context) {
                                              return CadUser();
                                            }));
                                      },
                                      child: Text(
                                        'Registre-se',
                                        style: TextStyle(color: Colors.blue),
                                      )),
                                ],
                              ),
                            ]),
                          ))
                    ],
                  ),
                ),
              ),
        ],
      ),
    ));
  }
}

Widget horizontalLine = Padding(
  padding: EdgeInsets.symmetric(horizontal: 16.0),
  child: Container(
    width: 100,
    height: 1.0,
    color: Colors.black26.withOpacity(.2),
  ),
);

