import 'package:beamer/beamer.dart';
import 'package:beamer_navigation/user/shop/user_shop_location.dart';
import 'package:flutter/material.dart';

final userRouterDelegate = BeamerDelegate(
  locationBuilder: BeamerLocationBuilder(
    beamLocations: [
      UserShopLocation()
    ],
  ),
);

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Beamer(
        routerDelegate: userRouterDelegate,
      ),
    );
  }
}
