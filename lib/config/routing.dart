import 'package:fullgetxapp/features/views/home_page.dart';
import 'package:get/route_manager.dart';

import '../features/binding/home_binding.dart';

class RoutingApp {
  static List<GetPage> routes = [
    GetPage(
      name: HomePage().id,
      page: () => HomePage(),
      binding: HomeBinding(),
    )
  ];
}
