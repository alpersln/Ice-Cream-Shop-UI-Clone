import 'package:flutter/material.dart';

import '../model/ice_cream.dart';
import '../screns/detail_screen.dart';
import '../utils/constants.dart';

class PopularIceCreamList extends StatelessWidget {
  const PopularIceCreamList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cart = Products().items;

    return Expanded(
      flex: 1,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: cart.length,
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
                  color: (i % 2 == 0) ? myLightYellowColor : myLightBlueColor,
                  child: Padding(
                    padding: EdgeInsets.all(lowPadding),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          color: (i % 2 == 0) ? myYellowColor : myBlueColor,
                          child: Image.network(
                            cart[i].imageUrl,
                            height: lowImageHeight,
                            width: lowImageWidht,
                          ),
                        ),
                        Text(cart[i].shortTitle!,
                            style: Theme.of(context).textTheme.headline6)
                      ],
                    ),
                  ),
                ),
              )),
    );
  }
}
