import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


class Toast extends StatelessWidget {
  const Toast({Key key}) : super(key: key);

  showToastMessage(String message){
    Fluttertoast.showToast(
        msg: message,
        //toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
