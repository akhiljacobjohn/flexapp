import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'home.dart';

class Pincode extends StatefulWidget {
 // const Pincode({Key? key}) : super(key: key);

  @override
  _PincodeState createState() => _PincodeState();
}

class _PincodeState extends State<Pincode> {
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
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xfff0f0ff),
      appBar: AppBar(

        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
SizedBox(height: 30,),
          Image.asset('assets/images/location-pin.png', width: 50, height: 50,),

          SizedBox(height: 30,),
          Text(
            'Enter your pin code (also known as zip code)',
            style: TextStyle(
                color: const Color(0xff333B5C),
                fontSize: 15,
                fontWeight: FontWeight.w600,
                fontFamily: 'Lato'),
          ),
          SizedBox(height: 40,),
          Padding(
            padding: EdgeInsets.fromLTRB(40, 0, 40, 20),
            child: Container(
              height: 50,
              child: TextFormField(
                autofocus: true,
                keyboardType: TextInputType.number,
                //  focusNode: focusNode,
                enableInteractiveSelection: false,
                style: TextStyle(
                    color: const Color(0xff464646),
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    // letterSpacing: 1,
                    fontFamily: 'Open Sans'),
                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  hintText: "Pin code",
                  suffixIcon: Padding(padding: const EdgeInsetsDirectional.only(end: 10.0), child: Image.asset('assets/images/locate.png')),
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
