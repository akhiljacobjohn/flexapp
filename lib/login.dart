import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  //const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xff14263c),
      //backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        titleSpacing: -10,
        backgroundColor: const Color(0xff14263c),
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Container(
              color: Colors.red,
              child: Text('Login')),
        ],
      ),
    );
  }
}
