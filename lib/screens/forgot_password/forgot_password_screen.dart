import 'package:flutter/material.dart';
import 'package:pasaryo/widgets/appbar_widget.dart';

class ForgotPasswordScreen extends StatelessWidget {
  final _usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double _statusBarHeight = MediaQuery.of(context).padding.top;

    return Scaffold(
      body: Column(
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
                    Text("Lupa Password",
                        style: TextStyle(
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.bold,
                            fontSize: 30)),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 30,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Username",
                      prefixIcon: Container(
                        transform: Matrix4.translationValues(-5.0, -5.0, 0.0),
                        child: new Image.asset("assets/icons/user_small.png",
                            height: 10),
                      ),
                    ),
                    controller: _usernameController,
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
                      child: Text('Kirim Kode',
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
                          onTap: () => Navigator.pushNamed(context, "/register"),
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
    );
  }
}
