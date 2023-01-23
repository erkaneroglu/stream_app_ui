import 'package:get/get.dart';

import '../view/tabs/home_view.dart';

class Routes {
  static const String splash = '/splash';
  static const String login = '/login';
  static const String register = '/register';
  static const String home = '/home';

  static final List<GetPage> getPage = [
    //GetPage(name: splash, page: () => SplashView()),
    //GetPage(name: login, page: () => LoginView()),
    //GetPage(name: register, page: () => RegisterView()),
    GetPage(name: home, page: () => const HomeView()),
  ];
}
