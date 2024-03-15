import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:mountain_travel/features/checkout/checkoutscreen.dart';
import 'package:mountain_travel/features/discover/discoverscreen.dart';
import 'package:mountain_travel/features/home/homescreen.dart';
import 'package:mountain_travel/features/home/model/place_model.dart';
import 'package:mountain_travel/router/router.dart';

final router = GoRouter(routes: [
  GoRoute(
    path: Routes.homescreen.path,
    name: Routes.homescreen.name,
    pageBuilder: (context, state) {
      return const CupertinoPage(child: HomeScreen());
    },
  ),
  GoRoute(
    path: Routes.discoverscreen.path,
    name: Routes.discoverscreen.name,
    pageBuilder: (context, state) {
      return CupertinoPage(
          child: DiscoverScreen(model_list: state.extra as List<PlaceModel>,));
    },
  ),
  GoRoute(
    path: Routes.checkoutscreen.path,
    name: Routes.checkoutscreen.name,
    pageBuilder: (context, state) {
      return  CupertinoPage(child: CheckOutScreen(model: state.extra as PlaceModel,));
    },
  ),
]);
