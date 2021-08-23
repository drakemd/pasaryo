import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pasaryo/blocs/blocs.dart';

class LoginFormWidget extends StatefulWidget {
  @override
  State<LoginFormWidget> createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _onLoginButtonPressed() {
      BlocProvider.of<LoginBloc>(context).add(
        LoginButtonPressed(
          username: _usernameController.text,
          password: _passwordController.text,
        ),
      );
    }

    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state is LoginFailure) {
          Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text('${state.error}'),
              backgroundColor: Colors.red,
            ),
          );
        }
      },
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          return Column(
            children: <Widget>[
              SizedBox(
                height: 5,
              ),
              state is LoginLoading ? LinearProgressIndicator() : Row(),
              Form(
                  child: Padding(
                padding: EdgeInsets.only(left: 52, right: 52, top: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text("Login",
                            style: TextStyle(
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.bold,
                                fontSize: 30)),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text("Silahkan login untuk melanjutkan",
                            style: TextStyle(
                                fontFamily: "Raleway",
                                fontSize: 12,
                                height: 1.2,
                                color: Color.fromRGBO(0, 0, 0, 0.3))),
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
                            transform:
                                Matrix4.translationValues(-5.0, -5.0, 0.0),
                            child: new Image.asset(
                                "assets/icons/user_small.png",
                                height: 10),
                          ),
                        ),
                        controller: _usernameController,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 30,
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Container(
                            transform:
                                Matrix4.translationValues(-5.0, -5.0, 0.0),
                            child: new Image.asset("assets/icons/lock.png",
                                height: 10),
                          ),
                          hintText: "Password",
                        ),
                        controller: _passwordController,
                        obscureText: true,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: InkWell(
                            onTap: () => Navigator.pushNamed(context, "/forgotPassword"),
                            child: Container(
                              child: Text(
                                "Lupa Password?",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontFamily: "Raleway",
                                    fontWeight: FontWeight.w700,
                                    fontSize: 13),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                            flex: 1,
                            child: Container(
                              child: RaisedButton(
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(5.0),
                                ),
                                onPressed: state is! LoginLoading
                                    ? _onLoginButtonPressed
                                    : null,
                                child: Text('Login',
                                    style: TextStyle(color: Colors.white)),
                                color: Color.fromRGBO(221, 99, 73, 1),
                              ),
                            ))
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
          );
        },
      ),
    );
  }
}
