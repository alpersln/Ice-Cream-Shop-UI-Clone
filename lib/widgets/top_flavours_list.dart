import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ice_cream_ui_clone/model/ice_cream.dart';
import 'package:ice_cream_ui_clone/screns/detail_screen.dart';

import '../utils/constants.dart';
import 'add_item_button.dart';

class TopFlavoursList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cart = Products().items;

    return Expanded(
      flex: 2,
      child: ListView.builder(
          itemCount: cart.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, i) => GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (ctx) => DetailScreen(
                                item: cart[i],
                              )));
                },
                child: Card(
                  color: myLightPinkColor,
                  child: Padding(
                      padding: EdgeInsets.all(lowPadding),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.network(
                            cart[i].imageUrl,
                            height: midImageHeight,
                            width: midImageWidht,
                          ),
                          SingleChildScrollView(
                            child: Column(
                              children: [
                                Text(cart[i].title!,
                                    style:
                                        Theme.of(context).textTheme.headline5),
                                SizedBox(
                                  height: lowPadding,
                                ),
                                Row(
                                  children: [
                                    Text("${cart[i].kilos.toString()} KG",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6),
                                    SizedBox(
                                      width: lowImageWidht,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: myYellowColor,
                                    ),
                                    Text(cart[i].review.toString(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6)
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("\$${cart[i].price.toString()}",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline5),
                                    SizedBox(
                                      width: lowImageWidht,
                                    ),
                                    AddItemButton(
                                      buttonShape: const CircleBorder(),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      )),
                ),
              )),
    );
  }
}
