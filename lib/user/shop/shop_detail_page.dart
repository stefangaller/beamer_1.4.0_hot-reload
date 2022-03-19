import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

class ShopDetailPage extends StatelessWidget {
  static String path(String id) => '/user/shop/$id';

  static BeamPage page(String id) =>
      BeamPage(
        key: ValueKey(path(id)),
        child: ShopDetailPage(id: id),
      );

  final String id;

  const ShopDetailPage({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('Product $id'),
      ),
    );
  }
}
