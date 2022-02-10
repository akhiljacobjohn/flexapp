import 'package:atlas/home.dart';
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
      backgroundColor: const Color(0xff21252d),
      //backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        titleSpacing: -10,
        backgroundColor: const Color(0xff21252d),
        // backgroundColor: const Color(0xff3c4852),
        elevation: 1,
        //  automaticallyImplyLeading: false,
        title: Text('Log in', style: TextStyle(color: const Color(0xddffffff), fontSize: 20,  fontFamily: 'Lato', fontWeight: FontWeight.w600),),
        // centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Container(
            height: 50,
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: TextField(
               // controller: myTextEditingController,
                keyboardType: TextInputType.phone,
                style: TextStyle(color: Colors.white70, fontSize: 14),
                // focusNode: focusNode,
                // enableInteractiveSelection: false,
                cursorHeight: 24,

                decoration: InputDecoration(
                  //contentPadding: EdgeInsets.symmetric(horizontal: 2.0),
                  isDense: true,

                  // filled: true,
                  // fillColor: const Color(0x50344081),
                  // fillColor: const Color(0x50344081),

                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white10,),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white10,),
                  ),
                  labelText: 'Email/Username/Phone number',
                  labelStyle: TextStyle(color: Colors.white54, fontSize: 14, height: 0),
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 50,
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: TextField(
               // controller: myTextEditingController,
                keyboardType: TextInputType.phone,
                style: TextStyle(color: Colors.white70, fontSize: 14),
                // focusNode: focusNode,
                // enableInteractiveSelection: false,
                cursorHeight: 24,

                decoration: InputDecoration(
                  //contentPadding: EdgeInsets.symmetric(horizontal: 2.0),
                  isDense: true,
                  // filled: true,
                  // fillColor: const Color(0x50344081),
                  // fillColor: const Color(0x50344081),
                  labelText: 'Password',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white10,),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white10,),
                  ),

                ),
              ),
            ),
          ),
        ],
      ),

        bottomNavigationBar: Transform.translate(
          offset: Offset(0.0, -1 * MediaQuery.of(context).viewInsets.bottom),
          child: Container(
              height: 90,
              //   color: const Color(0xffe9eff3),
              padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xff057855),
                //  primary: const Color(0xff7D2AE8),
                  onPrimary: Colors.white,
                  // foreground
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                      fontSize: 15,
                      color: const Color(0xfffdfdfd),
                      fontFamily: 'Helvetica',
                      fontWeight: FontWeight.normal),
                ),
              ),

          ),
        )
    );
  }
}
