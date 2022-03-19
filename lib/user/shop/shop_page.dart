import 'package:beamer/beamer.dart';
import 'package:beamer_navigation/user/shop/shop_detail_page.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatelessWidget {
  static const String path = '/user/shop';

  static const BeamPage page = BeamPage(
    key: ValueKey(path),
    child: ShopPage(),
  );

  const ShopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shop'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => ListTile(
          title: Text(
            'Product $index',
          ),
          onTap: () => context.beamToNamed(
            ShopDetailPage.path('$index'),
          ),
        ),
      ),
    );
  }
}
