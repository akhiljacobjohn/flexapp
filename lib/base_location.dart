import 'package:atlas/home.dart';
import 'package:flutter/material.dart';

class BaseLocaltionSetter extends StatefulWidget {
  // const BaseLocaltionSetter({Key? key}) : super(key: key);

  @override
  _BaseLocaltionSetterState createState() => _BaseLocaltionSetterState();
}

class _BaseLocaltionSetterState extends State<BaseLocaltionSetter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:false,
      backgroundColor: const Color(0xff2161b22),
      //backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        titleSpacing: -10,
        backgroundColor: const Color(0xff2161b22),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            setState(() {
              Navigator.pop(context);
            });
          },
        ),
        // backgroundColor: const Color(0xff3c4852),
        elevation: 1,
        //  automaticallyImplyLeading: false,
        title: Text('', style: TextStyle(color: const Color(0xddffffff), fontSize: 20,  fontFamily: 'Lato', fontWeight: FontWeight.w600),),
        // centerTitle: true,
      ),
    body: Column(
    // mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
   // mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
        Padding(
            padding: EdgeInsets.fromLTRB(0, 20, 0, 25),
            // child: Image.asset('assets/images/location-pin.png', width: 45,)
            child: Icon(Icons.location_on_rounded, size: 65, color: const Color(0xff9146FF),)
        ),
        ]
      ),
      Padding(
          padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
          child: Text(
            'Enter your area pin code and allow location permissions when requested.  Billboard will set this as your home location.  You can change this later from your home screen.',
            style: TextStyle(
                color: Colors.white54,
                fontSize: 14,
                height: 1.6,
                fontWeight: FontWeight.normal,
                fontFamily: 'Lato'),
            textAlign: TextAlign.start,
          )),
      Padding(
        padding: EdgeInsets.fromLTRB(10, 30, 10, 10),
        child: Container(
          height: 50,
          child: TextFormField(
            autofocus: true,
            keyboardType: TextInputType.name,
            //  focusNode: focusNode,
            cursorHeight: 24,
maxLength: 6,
            style: TextStyle(
                color: Colors.white70,
                fontWeight: FontWeight.w500,
                fontSize: 18,
                // letterSpacing: 1,
                fontFamily: 'Lato'),
            decoration: InputDecoration(
              isDense: true,
counterText: "",
              suffixIcon: IconButton(icon: Image.asset('assets/images/locate.png', height: 20, width: 20,)),
              // filled: true,
              // fillColor: const Color(0x50344081),
              // fillColor: const Color(0x50344081),

              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white10,),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white10,),
              ),
              alignLabelWithHint: true,
              hintText: "Pin code",
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
    ]),
        bottomNavigationBar: Transform.translate(
          offset: Offset(0.0, -1 * MediaQuery.of(context).viewInsets.bottom),
          child: Container(
            height: 100,
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(10, 30, 10, 30),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color(0xff057855),
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
                'SUBMIT',
                style: TextStyle(
                    fontSize: 15,
                    color: const Color(0xfffdfdfd),
                    fontFamily: 'Helvetica',
                    fontWeight: FontWeight.normal),
              ),
            ),
          ),)
    );
  }
}
