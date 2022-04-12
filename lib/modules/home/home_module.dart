import 'package:get/get.dart';

import '../../application/modules/module.dart';
import 'home_bindings.dart';
import 'home_page.dart';

class HomeModule extends Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/home',
      page: () => const HomePage(),
      binding: HomeBindings(),
    ),
  ];
}
