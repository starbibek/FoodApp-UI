import 'package:connectivity_plus/connectivity_plus.dart';

import 'connectivity_servics.dart';

class ConnectivityServiceHandler implements ConnectivityServices {
  var connectivityResult = Connectivity().checkConnectivity();
  bool isConnected = false;
  @override
  checkConnectivity() async {
    var connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.none) {
      isConnected = false;
      return isConnected;
    } else {
      isConnected = true;
      return isConnected;
    }
  }
}
