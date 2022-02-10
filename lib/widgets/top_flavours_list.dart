import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ice_cream_ui_clone/model/ice_cream.dart';
import 'package:ice_cream_ui_clone/screns/detail_screen.dart';

import 'add_item_button.dart';

class TopFlavoursList extends StatelessWidget {
  late Card mycard;
/*   final String id;
  final String title;
  final double kilos;
  final double review;
  final double price;
  final String imageUrl;

  const IceCreamList(
      {Key? key,
      required this.id,
      required this.title,
      required this.kilos,
      required this.review,
      required this.price,
      required this.imageUrl})
      : super(key: key); */

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
                  color: Colors.pink[100],
                  // margin: EdgeInsets.all(16),
                  child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.network(
                            cart[i].imageUrl,
                            height: 100,
                            width: 100,
                          ),
                          Column(
                            //   mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(cart[i].title!,
                                  style: Theme.of(context).textTheme.headline5),
                              SizedBox(
                                height: 8,
                              ),
                              Row(
                                children: [
                                  Text("${cart[i].kilos.toString()} KG",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Text(cart[i].review.toString(),
                                      style:
                                          Theme.of(context).textTheme.headline6)
                                ],
                              ),
                              Row(
                                /*  mainAxisAlignment:
                                MainAxisAlignment.spaceBetween, */
                                children: [
                                  Text("\$${cart[i].price.toString()}",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline5),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  AddItemButton(
                                    buttonShape: CircleBorder(),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      )),
                ),
              )),
    );
  }
}
