import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ConnectivityStatusService extends StatefulWidget {
  @override
  _ConnectivityStatusServiceState createState() =>
      _ConnectivityStatusServiceState();
}

class _ConnectivityStatusServiceState extends State<ConnectivityStatusService> {
  final Connectivity _connectivity = Connectivity();
  StreamSubscription<ConnectivityResult> _connectivitySubscription;
  ConnectivityResult connectivityResult = ConnectivityResult.none;

  @override
  void initState() {
    super.initState();

    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

// Make sure to cancel subscription after you are done
  @override
  dispose() {
    super.dispose();

    _connectivitySubscription.cancel();
  }

  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    setState((){
      connectivityResult = result;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Container(
     child: Text('Connectivity Result is ' + connectivityResult.toString()),
    );
  }
}
