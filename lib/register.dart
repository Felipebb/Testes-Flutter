
import 'package:covid_19/pagesview/PageView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CadUser extends StatefulWidget {
//  final String cpf;
//
//  const RegisterUser({Key key, this.cpf}) : super(key: key);
  @override
  CadUserState createState() => CadUserState();
}

class CadUserState extends State<CadUser> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  final dateOfBirthController = TextEditingController();
  final phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.1, 0.4, 0.7, 0.9], //
                colors: [
                  Color(0xFF3594DD),
                  Color(0xFF4563DB),
                  Color(0xFF5036D5),
                  Color(0xFF5B16D0),
                ],
              ),
            ),
          ),
          Container(
            height: double.infinity,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 60.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    Image(
                      image: AssetImage('assets/images/flw.png'),
                      height: 100,
                      width: 100,
                    ),
                    SizedBox(height: 30),
                    TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      autofocus: false,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'E-mail',
                        contentPadding:
                        EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32.0),
                          borderSide: BorderSide(color: Colors.white),
                        ),
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
                    SizedBox(height: 20),
                    TextFormField(
                      controller: userNameController,
                      keyboardType: TextInputType.emailAddress,
                      autofocus: false,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Nome de usuário',
                        contentPadding:
                        EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32.0),
                          borderSide: BorderSide(color: Colors.white),
                        ),
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
                    SizedBox(height: 20),
                    TextFormField(
                      controller: passwordController,
                      keyboardType: TextInputType.emailAddress,
                      autofocus: false,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Senha',
                        contentPadding:
                        EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32.0),
                          borderSide: BorderSide(color: Colors.white),
                        ),
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
                    SizedBox(height: 20),
                    TextFormField(
                      controller: dateOfBirthController,
                      keyboardType: TextInputType.emailAddress,
                      autofocus: false,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Dt de nascimento',
                        contentPadding:
                        EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32.0),
                          borderSide: BorderSide(color: Colors.white),
                        ),
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
                    SizedBox(height: 20),
                    TextFormField(
                      controller: phoneController,
                      keyboardType: TextInputType.emailAddress,
                      autofocus: false,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Phone',
                        contentPadding:
                        EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32.0),
                          borderSide: BorderSide(color: Colors.white),
                        ),
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
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 25.0),
                      width: double.infinity,
                      height: 100,
                      child: RaisedButton(
                        elevation: 5.0,
                        onPressed: () =>  Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                              return PageView1();
                            })),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        color: Colors.white,
                        child: Text(
                          "Cadastrar-se",
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
                ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

}
