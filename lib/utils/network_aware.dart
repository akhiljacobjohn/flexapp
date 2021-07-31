import 'package:atlas/utils/toast.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'enums.dart';

class NetworkAware extends StatelessWidget {
  final Widget onlineChild;
  final Widget offlineChild;
  final Toast toast = Toast();


   NetworkAware({Key key, this.onlineChild, this.offlineChild})
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    NetworkStatus networkStatus = Provider.of<NetworkStatus>(context);
    print('networkStatus is ' +  networkStatus.toString());

    if (networkStatus == NetworkStatus.Online) {
      return onlineChild;
    } else {
      toast.showToastMessage(" Are Offline");
      return offlineChild;
    }

  }
}