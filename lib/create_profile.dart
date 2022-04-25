import 'package:atlas/base_location.dart';
import 'package:flutter/material.dart';

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
          backgroundColor: const Color(0xff161b22),
          //backgroundColor: const Color(0xffffffff),
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(30.0),
            child: AppBar(
              backgroundColor: const Color(0xff161b22),
              elevation: 0,
              automaticallyImplyLeading: false,
            ),
          ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                    child: Text(
                      'Name & Email',
                      style: TextStyle(
                        color: const Color(0xff7D2AE8),
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Lato',),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 20),
                    child: Text(
                      'Few more details before we get you started',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Lato',),
                    ),
                  ),

                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                // child: Image.asset(
                //   'assets/images/phone-get-started.png',
                //   width: 60,
                //  // height: 40,
                // ),
                // child: Icon(Icons.vpn_key_sharp, size: 45,  color: const Color(0xff7D2AE8),),
              ),

            ],
          ),
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
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Container(
              height: 50,
              child: TextFormField(
                autofocus: true,
                keyboardType: TextInputType.name,
                //  focusNode: focusNode,
cursorHeight: 24,

                style: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    // letterSpacing: 1,
                    fontFamily: 'Lato'),
                decoration: InputDecoration(
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
                  alignLabelWithHint: true,
                  hintText: "Name",
                  hintStyle: TextStyle(color: Colors.white54, fontSize: 14, height: 0),

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
          // Padding(
          //   padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
          //   child: Container(
          //     height: 50,
          //     child: TextFormField(
          //       autofocus: true,
          //       obscureText: true,
          //       keyboardType: TextInputType.visiblePassword,
          //       //  focusNode: focusNode,
          //       cursorHeight: 24,
          //
          //       style: TextStyle(
          //           color: Colors.white70,
          //           fontWeight: FontWeight.w500,
          //           fontSize: 18,
          //           // letterSpacing: 1,
          //           fontFamily: 'Lato'),
          //       decoration: InputDecoration(
          //         isDense: true,
          //
          //         // filled: true,
          //         // fillColor: const Color(0x50344081),
          //         // fillColor: const Color(0x50344081),
          //
          //         enabledBorder: UnderlineInputBorder(
          //           borderSide: BorderSide(color: Colors.white10,),
          //         ),
          //         focusedBorder: UnderlineInputBorder(
          //           borderSide: BorderSide(color: Colors.white10,),
          //         ),
          //         alignLabelWithHint: true,
          //         hintText: "Password",
          //         hintStyle: TextStyle(color: Colors.white54, fontSize: 14, height: 0),
          //
          //         // suffixIcon: Padding(padding: const EdgeInsetsDirectional.only(end: 10.0), child: Image.asset('assets/images/locate.png')),
          //         // suffixIconConstraints: BoxConstraints(
          //         //
          //         //     maxHeight: 30,
          //         //
          //         //     maxWidth: 30
          //         // ),
          //       ),
          //
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
          //   child: Container(
          //     height: 50,
          //     child: TextFormField(
          //       obscureText: true,
          //       autofocus: true,
          //       keyboardType: TextInputType.visiblePassword,
          //       //  focusNode: focusNode,
          //       cursorHeight: 24,
          //
          //       style: TextStyle(
          //
          //           color: Colors.white70,
          //           fontWeight: FontWeight.w500,
          //           fontSize: 18,
          //           // letterSpacing: 1,
          //           fontFamily: 'Lato'),
          //       decoration: InputDecoration(
          //         isDense: true,
          //
          //         // filled: true,
          //         // fillColor: const Color(0x50344081),
          //         // fillColor: const Color(0x50344081),
          //
          //         enabledBorder: UnderlineInputBorder(
          //           borderSide: BorderSide(color: Colors.white10,),
          //         ),
          //         focusedBorder: UnderlineInputBorder(
          //           borderSide: BorderSide(color: Colors.white10,),
          //         ),
          //         alignLabelWithHint: true,
          //
          //         hintText: "Re-enter Password",
          //         hintStyle: TextStyle(color: Colors.white54, fontSize: 14, height: 0),
          //
          //         // suffixIcon: Padding(padding: const EdgeInsetsDirectional.only(end: 10.0), child: Image.asset('assets/images/locate.png')),
          //         // suffixIconConstraints: BoxConstraints(
          //         //
          //         //     maxHeight: 30,
          //         //
          //         //     maxWidth: 30
          //         // ),
          //       ),
          //
          //     ),
          //   ),
          // ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
            child: Container(
              height: 50,
              child: TextFormField(
                autofocus: true,
                keyboardType: TextInputType.emailAddress,
                //  focusNode: focusNode,
                cursorHeight: 24,

                style: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    // letterSpacing: 1,
                    fontFamily: 'Lato'),
                decoration: InputDecoration(
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
                  alignLabelWithHint: true,
                  hintText: "Email",
                  hintStyle: TextStyle(color: Colors.white54, fontSize: 14, height: 0),


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
              height: 110,
              width: double.infinity,
              padding: EdgeInsets.fromLTRB(10, 30, 10, 30),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xff057855),
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  // foreground
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BaseLocaltionSetter()),
                  );
                },
                child: Text(
                  'SUBMIT',
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
