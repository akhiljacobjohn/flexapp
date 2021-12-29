import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'home.dart';

class Profile extends StatefulWidget {
 // const Pincode({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
        onWillPop: () async {
      // Fluttertoast.showToast(
      //   msg: 'Some text',
      //   toastLength: Toast.LENGTH_SHORT,
      //   gravity: ToastGravity.BOTTOM,
      //   timeInSecForIosWeb: 1,
      // );
      return true;
        },

      child: Scaffold(
          resizeToAvoidBottomInset:false,
          backgroundColor: const Color(0xff232A53),
          //backgroundColor: const Color(0xffffffff),
          appBar: AppBar(
            titleSpacing: -10,
            backgroundColor: const Color(0xff232A53),
            // backgroundColor: const Color(0xff3c4852),
              elevation: 1,
            //  automaticallyImplyLeading: false,
            title: Text('Create Profile', style: TextStyle(color: const Color(0xaaffffff), fontSize: 20,  fontFamily: 'Lato', fontWeight: FontWeight.w600),),
            // centerTitle: true,
          ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
// SizedBox(height: 30,),
//           Image.asset('assets/images/location-pin.png', width: 50, height: 50,),
//
//           SizedBox(height: 30,),
//           Text(
//             'Enter your pin code (also known as zip code)',
//             style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 15,
//                 fontWeight: FontWeight.w600,
//                 fontFamily: 'Lato'),
//           ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 30, 20, 10),
            child: Container(
              height: 50,
              child: TextFormField(
                autofocus: true,
                keyboardType: TextInputType.number,
                //  focusNode: focusNode,
cursorHeight: 24,

                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    // letterSpacing: 1,
                    fontFamily: 'Lato'),
                decoration: InputDecoration(
                  isDense: true,

                  // filled: true,
                  // fillColor: const Color(0x50344081),
                  // fillColor: const Color(0x50344081),

                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: const Color(0xff7D2AE8),),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: const Color(0xff7D2AE8),),
                  ),
                  alignLabelWithHint: true,
                  hintText: "Name",
                  hintStyle: TextStyle(color: Colors.white54, fontSize: 16, height: 0),

                  // suffixIcon: Padding(padding: const EdgeInsetsDirectional.only(end: 10.0), child: Image.asset('assets/images/locate.png')),
                  // suffixIconConstraints: BoxConstraints(
                  //
                  //     maxHeight: 30,
                  //
                  //     maxWidth: 30
                  // ),
                ),

              ),
            ),
          ),
          //SizedBox(height: 10,),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
            child: Container(
              height: 50,
              child: TextFormField(
                autofocus: true,
                keyboardType: TextInputType.number,
                //  focusNode: focusNode,
                cursorHeight: 24,

                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    // letterSpacing: 1,
                    fontFamily: 'Lato'),
                decoration: InputDecoration(
                  isDense: true,

                  // filled: true,
                  // fillColor: const Color(0x50344081),
                  // fillColor: const Color(0x50344081),

                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: const Color(0xff7D2AE8),),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: const Color(0xff7D2AE8),),
                  ),
                  alignLabelWithHint: true,
                  hintText: "Password",
                  hintStyle: TextStyle(color: Colors.white54, fontSize: 16, height: 0),

                  // suffixIcon: Padding(padding: const EdgeInsetsDirectional.only(end: 10.0), child: Image.asset('assets/images/locate.png')),
                  // suffixIconConstraints: BoxConstraints(
                  //
                  //     maxHeight: 30,
                  //
                  //     maxWidth: 30
                  // ),
                ),

              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
            child: Container(
              height: 50,
              child: TextFormField(
                autofocus: true,
                keyboardType: TextInputType.number,
                //  focusNode: focusNode,
                cursorHeight: 24,

                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    // letterSpacing: 1,
                    fontFamily: 'Lato'),
                decoration: InputDecoration(
                  isDense: true,

                  // filled: true,
                  // fillColor: const Color(0x50344081),
                  // fillColor: const Color(0x50344081),

                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: const Color(0xff7D2AE8),),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: const Color(0xff7D2AE8),),
                  ),
                  alignLabelWithHint: true,
                  hintText: "Re-enter Password",
                  hintStyle: TextStyle(color: Colors.white54, fontSize: 16, height: 0),

                  // suffixIcon: Padding(padding: const EdgeInsetsDirectional.only(end: 10.0), child: Image.asset('assets/images/locate.png')),
                  // suffixIconConstraints: BoxConstraints(
                  //
                  //     maxHeight: 30,
                  //
                  //     maxWidth: 30
                  // ),
                ),

              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
            child: Container(
              height: 50,
              child: TextFormField(
                autofocus: true,
                keyboardType: TextInputType.number,
                //  focusNode: focusNode,
                cursorHeight: 24,

                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    // letterSpacing: 1,
                    fontFamily: 'Lato'),
                decoration: InputDecoration(
                  isDense: true,

                  // filled: true,
                  // fillColor: const Color(0x50344081),
                  // fillColor: const Color(0x50344081),

                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: const Color(0xff7D2AE8),),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: const Color(0xff7D2AE8),),
                  ),
                  alignLabelWithHint: true,
                  hintText: "Pincode",
                  hintStyle: TextStyle(color: Colors.white54, fontSize: 16, height: 0),

                  suffixIcon: Padding(padding: const EdgeInsetsDirectional.only(end: 10.0),
                      //child: Image.asset('assets/images/locate.png')),
                      child: Icon(Icons.location_searching, color: Colors.white70, size: 18,)),
                  suffixIconConstraints: BoxConstraints(

                      maxHeight: 30,

                      maxWidth: 30
                  ),
                ),

              ),
            ),
          ),
          // SizedBox(height: 10,),
          // Text(
          //   'Why pin code?',
          //   style: TextStyle(
          //       color: const Color(0xff9146FF),
          //       fontSize: 14,
          //       fontWeight: FontWeight.bold,
          //       fontFamily: 'Lato'),
          // ),
          // SizedBox(height: 100,),
        ],
      ),
    bottomNavigationBar: Transform.translate(
    offset: Offset(0.0, -1 * MediaQuery.of(context).viewInsets.bottom),
    child: Container(
      height: 90,
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(20, 25, 20, 25),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: const Color(0xff7d2ae8),
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
          'CONTINUE',
          style: TextStyle(
              fontSize: 15,
              color: const Color(0xfffdfdfd),
              fontFamily: 'Helvetica',
              fontWeight: FontWeight.normal),
        ),
      ),
    ),)
    ),);
  }
}
