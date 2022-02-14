import 'package:atlas/forgot_passed.dart';
import 'package:atlas/home.dart';
import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  //const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var focusNode = FocusNode();
  @override
  void initState() {
    super.initState();
    focusNode.requestFocus();
  }

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
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            setState(() {
              Navigator.pop(context);
            });
          },
        ),
        //  automaticallyImplyLeading: false,
       // title: Text('Log in', style: TextStyle(color: const Color(0xddffffff), fontSize: 20,  fontFamily: 'Lato', fontWeight: FontWeight.w600),),
        // centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
            child:  Text('Log in', style: TextStyle(color: const Color(0xddffffff), fontSize: 24,  fontFamily: 'Lato', fontWeight: FontWeight.bold),),
          ),

          SizedBox(height: 20,),
          Container(
            height: 50,
            child: Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: TextField(
               // controller: myTextEditingController,
               // keyboardType: TextInputType.phone,
                style: TextStyle(color: Colors.white70, fontSize: 14),
                 focusNode: focusNode,
                // enableInteractiveSelection: false,
                cursorHeight: 20,

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
                  labelText: 'Email, Username or Mobile Number*',
                  labelStyle: TextStyle(color: Colors.white54, fontSize: 14, height: 0.5),
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 50,
            child: Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: TextField(
               // controller: myTextEditingController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                style: TextStyle(color: Colors.white70, fontSize: 14),
                // focusNode: focusNode,
                // enableInteractiveSelection: false,
                cursorHeight: 20,
maxLength: 16,

                decoration: InputDecoration(counterText: "",
                  //contentPadding: EdgeInsets.symmetric(horizontal: 2.0),
                  isDense: true,
                  // filled: true,
                  // fillColor: const Color(0x50344081),
                  // fillColor: const Color(0x50344081),
                  labelText: 'Password*',
                  labelStyle: TextStyle(color: Colors.white54, fontSize: 14, height: 0.5),
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
          SizedBox(height: 20,),
          InkWell(
            child: Padding(padding: EdgeInsets.fromLTRB(15, 0, 15, 0) ,child: Text('Forgot Password?')),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ForgotPasswd()),
              );
            },
          )
        ],
      ),

        bottomNavigationBar: Transform.translate(
          offset: Offset(0.0, -1 * MediaQuery.of(context).viewInsets.bottom),
          child: Container(
              height: 100,
              //   color: const Color(0xffe9eff3),
              padding: EdgeInsets.fromLTRB(10, 30, 10, 30),
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
