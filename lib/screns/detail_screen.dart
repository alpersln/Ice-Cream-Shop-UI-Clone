import 'package:flutter/material.dart';
import 'package:ice_cream_ui_clone/model/ice_cream.dart';
import 'package:ice_cream_ui_clone/widgets/add_item_button.dart';

import '../utils/constants.dart';
import '../widgets/add_to_cart_button.dart';
import '../widgets/extract_item_button.dart';
import '../widgets/star_icon_widget.dart';

class DetailScreen extends StatelessWidget {
  final IceCream item;
  const DetailScreen({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var totalKilos = 1;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.pink,
          actions: [const Icon(Icons.favorite_border)]),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
              padding: EdgeInsets.all(lowPadding),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(highPaddig))),
              child: Image.network(
                item.imageUrl,
              )),
          Container(
            padding: EdgeInsets.all(upperLowPadding),
            margin: EdgeInsets.symmetric(horizontal: mediumPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title!,
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                      fontWeight: FontWeight.normal, color: Colors.black),
                ),
                SizedBox(
                  height: upperLowPadding,
                ),
                Row(
                  children: [
                    const StarIconWidget(),
                    SizedBox(
                      width: mediumPadding,
                    ),
                    Text(item.review.toString(),
                        style: Theme.of(context).textTheme.bodyText1),
                    Text("(${item.reviewCount} Reviews)")
                  ],
                ),
                SizedBox(
                  height: upperLowPadding,
                ),
                Row(
                  children: [
                    ExtractItemButton(),
                    Text(totalKilos.toString(),
                        style: Theme.of(context).textTheme.headline5),
                    AddItemButton(
                      buttonShape: const RoundedRectangleBorder(),
                    ),
                    const Spacer(),
                    Text(
                      "\$ ${item.price}",
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                          fontWeight: FontWeight.normal, color: Colors.black),
                    )
                  ],
                ),
                SizedBox(
                  height: upperLowPadding,
                ),
                Text(item.longDescription!),
                SizedBox(
                  height: upperLowPadding,
                ),
                const AddToCartButton()
              ],
            ),
          )
        ]),
      ),
    );
  }
}
