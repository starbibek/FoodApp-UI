import 'package:get/get.dart';

import '../../../services/connectivity/connectivity_service_handler.dart';

class ConnectivityMiddleware extends GetMiddleware {
  @override
  GetPage? onPageCalled(GetPage? page) {
    if (page?.name == '/home') {
      ConnectivityServiceHandler().checkConnectivity();
    }
    return page;
  }
}
