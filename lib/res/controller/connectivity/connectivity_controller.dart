import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:food_ordering/services/connectivity/connectivity_service_handler.dart';
import 'package:get/get.dart';

class ConnectivityController extends GetxController {
  RxBool isConnected = true.obs;
  ConnectivityServiceHandler connectivityServiceHandler =
      ConnectivityServiceHandler();
  @override
  void onInit() {
    super.onInit();
    connectivityServiceHandler.checkConnectivity();
    Connectivity().onConnectivityChanged.listen((result) {
      if (result == ConnectivityResult.none) {
        isConnected(false);
      } else {
        isConnected(true);
      }
    });
  }
}
