
import 'package:flutter/material.dart';

class TermsOfService extends StatefulWidget {
  // const TermsOfService({Key? key}) : super(key: key);

  @override
  _TermsOfServiceState createState() => _TermsOfServiceState();
}

class _TermsOfServiceState extends State<TermsOfService> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xff21252d),
      // backgroundColor: const Color(0xff21252d),
      //backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        titleSpacing: -10,
        backgroundColor: const Color(0xff21252d),
        title: Text('Terms of service', style: TextStyle(color: const Color(0xddffffff), fontSize: 20,  fontFamily: 'Lato',),),
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
        //  title: Text('Get Started', style: TextStyle(color: const Color(0xddffffff), fontSize: 20,  fontFamily: 'Lato',),),
        // centerTitle: true,
      ),
    );
  }
}