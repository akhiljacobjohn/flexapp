import 'package:flutter/material.dart';

class MyShop extends StatefulWidget {
 // const MyShop({Key? key}) : super(key: key);

  @override
  _MyShopState createState() => _MyShopState();
}

class _MyShopState extends State<MyShop> {
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
        title: Text('My Shop', style: TextStyle(color: const Color(0xddffffff), fontSize: 20,  fontFamily: 'Lato', fontWeight: FontWeight.w600),),
        // centerTitle: true,
      ),
    );
  }
}
