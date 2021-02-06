import 'package:flutter/material.dart';
import 'package:flutter_online_shop/models/iphone_items.dart';
import 'components/body.dart';
import 'components/custom_app_bar.dart';

class DetailsListScreen extends StatelessWidget {
  static String routeName = "/details_list";

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments args =
        ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: CustomAppBar(rating: 4.8),
      body: Body(iPhoneItem: args.iPhoneItem),
    );
  }
}

class ProductDetailsArguments {
  final IPhoneItem iPhoneItem;

  ProductDetailsArguments({@required this.iPhoneItem});
}
