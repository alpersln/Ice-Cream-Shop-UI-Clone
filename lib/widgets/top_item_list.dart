import 'package:flutter/material.dart';

import '../model/ice_cream.dart';
import '../screns/detail_screen.dart';
import 'add_item_button.dart';

class TopItemList extends StatelessWidget {
  const TopItemList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cart = Products().items;

    return Expanded(
      flex: 3,
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
                  color: (i % 2 == 0) ? Colors.blue[100] : Colors.pink[100],
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Image.network(
                          cart[i].imageUrl,
                          height: 100,
                          width: 100,
                        ),
                        Text(cart[i].title!,
                            style: Theme.of(context).textTheme.headline5),
                        Text(cart[i].description!,
                            style: Theme.of(context).textTheme.bodyText2),
                        Row(
                          children: [
                            Text("\$${cart[i].price.toString()}",
                                style: Theme.of(context).textTheme.headline5),
                            SizedBox(
                              width: 50,
                            ),
                            AddItemButton(
                              buttonShape: CircleBorder(),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )),
    );
  }
}
