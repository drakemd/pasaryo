import 'package:flutter/material.dart';
import 'package:pasaryo/widgets/appbar_widget.dart';
import 'package:pasaryo/widgets/caution_widget.dart';

class RegisterScreen extends StatelessWidget {
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _contactNumberController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double _statusBarHeight = MediaQuery.of(context).padding.top;

    return Scaffold(
      body:
      SingleChildScrollView(
        child: Column(
          children: <Widget>[
            MyAppBarWidget(_statusBarHeight),
            SizedBox(
              height: 5,
            ),
            Form(
                child: Padding(
                  padding: EdgeInsets.only(left: 52, right: 52, top: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text("Daftar",
                              style: TextStyle(
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30)),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CautionWidget(text: "Mohon gunakan nomor hp yang aktif untuk kepentingan aktivasi"),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 30,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Nama Depan",
                          ),
                          controller: _firstNameController,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 30,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Nama Belakang",
                          ),
                          controller: _lastNameController,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 30,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "No Hp",
                          ),
                          controller: _contactNumberController,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 30,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Email",
                          ),
                          controller: _emailController,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 30,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Password",
                          ),
                          controller: _passwordController,
                          obscureText: true,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          RaisedButton(
                            color: Color.fromRGBO(221, 99, 73, 1),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(5.0),
                            ),
                            child: Text('Daftar',
                                style: TextStyle(color: Colors.white)),
                            onPressed: () => {},
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Column(
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("Belum punya akun? daftar ",
                                  style: TextStyle(
                                    fontFamily: "Average",
                                    fontSize: 16,
                                  )),
                              InkWell(
                                child: Text("disini",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontFamily: "Average",
                                        fontSize: 16,
                                        color: Colors.blue)),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ))
          ],
        ),
      )
    );
  }
}
