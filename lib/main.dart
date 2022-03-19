import 'package:beamer/beamer.dart';
import 'package:beamer_navigation/admin/admin_page.dart';
import 'package:beamer_navigation/user/user_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

final mainNavigationDelegate = BeamerDelegate(
  initialPath: '/user/shop',
  locationBuilder: RoutesLocationBuilder(
    routes: {
      '/admin/*': (context, state, data) => const AdminPage(),
      '/user/*': (context, state, data) => const UserPage(),
    },
  ),
  notFoundPage: const BeamPage(
    child: Scaffold(
      body: Center(child: Text('main navigation not found')),
    ),
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: mainNavigationDelegate,
      routeInformationParser: BeamerParser(),
    );
  }
}
