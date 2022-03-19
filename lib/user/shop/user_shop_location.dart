import 'package:beamer/beamer.dart';
import 'package:beamer_navigation/user/shop/shop_detail_page.dart';
import 'package:beamer_navigation/user/shop/shop_page.dart';
import 'package:flutter/material.dart';

class UserShopLocation extends BeamLocation<BeamState> {
  @override
  List<Pattern> get pathPatterns => ['/user/shop/:productId'];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    final pages = [
      if (state.uri.pathSegments.contains('shop')) ShopPage.page,
    ];

    final productId = state.pathParameters['productId'];
    if (productId != null) {
      pages.add(ShopDetailPage.page(productId));
    }

    return pages;
  }
}
