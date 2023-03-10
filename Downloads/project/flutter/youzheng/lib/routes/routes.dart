/*
 * @Author: Oliva-cgf 1756303507@qq.com
 * @Date: 2023-01-04 22:29:52
 * @LastEditors: Oliva-cgf 1756303507@qq.com
 * @LastEditTime: 2023-01-08 21:07:41
 * @FilePath: /youzheng/lib/routes/routes.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:flutter/material.dart';
import 'package:youzheng/pages/PassengerPage.dart';
import '../pages/HomeDetailPage.dart';
import '../pages/MyPage.dart';
import "./../pages/LoginPage.dart";
import "./../pages/HomePage.dart";
import "./../pages/NotFoundPage.dart";
import "./../pages/FoundPage.dart";
import "../pages/TravelPage.dart";

// 1.定义路由
Map routes = {
  "/": (context) => const HomePage(),
  "/HomeDetailPage": (context) => const HomeDetailPage(),
  "/login": (context) => const LoginPage(),
  "/FoundPage": (context) => const FoundPage(),
  "/TravelPage": (context) => const TravelPage(),
  "/MyPage": (context) => const MyPage(),
  "/PassengerPage": (context) => const PassengerPage(),
  "*": (context) => const NotFoundPage(),
};

// 2.配置onGenerateRoute 固定写法
var onGenerateRoute = (RouteSettings settings) {
  final String? name = settings.name;
  final Function? pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
  return null;
};
