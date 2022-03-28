import 'dart:async';
import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:data_connection_checker/data_connection_checker.dart';

class ConnectionUtil {
  StreamSubscription<DataConnectionStatus> listener;
  var InternetStatus = "Unknown";
  var contentmessage = "Unknown";


  // checkConnection(BuildContext context) async{
  //   listener = DataConnectionChecker().onStatusChange.listen((status) {
  //     switch (status){
  //       case DataConnectionStatus.connected:
  //         InternetStatus = "Connected";
  //         contentmessage = "Connected";
  //       //  _showDialog(InternetStatus,contentmessage,context);
  //       //  Fluttertoast.showToast(msg: InternetStatus);
  //         break;
  //       case DataConnectionStatus.disconnected:
  //         InternetStatus = "No Connection ";
  //         contentmessage = "No Connection";
  //         Fluttertoast.showToast(msg: InternetStatus);
  //         break;
  //     }
  //   });
  //   return await DataConnectionChecker().connectionStatus;
  // }


}