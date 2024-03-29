// ignore_for_file: public_member_api_docs, sort_constructors_first
class AppRouter {
  String name;
  String path;
  AppRouter({
    required this.name,
    required this.path,
  });
}

class Routes {
  static AppRouter homescreen = AppRouter(name: "homescreen", path: "/");
  static AppRouter discoverscreen =
      AppRouter(name: "discoverscreen", path: "/discoverscreen");
  static AppRouter checkoutscreen =
      AppRouter(name: "checkoutscreen", path: "/checkoutscreen");
}
