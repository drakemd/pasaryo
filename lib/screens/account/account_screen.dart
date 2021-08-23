import 'package:flutter/cupertino.dart';

class AccountScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => AccountState();
}

class AccountState extends State<AccountScreen>{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Account screen"),
      ),
    );
  }
}