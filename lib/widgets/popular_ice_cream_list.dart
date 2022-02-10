import 'package:flutter/material.dart';

import '../model/ice_cream.dart';
import '../screns/detail_screen.dart';

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
                  color: (i % 2 == 0) ? Colors.yellow[100] : Colors.blue[100],
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          color: (i % 2 == 0) ? Colors.yellow : Colors.blue,
                          child: Image.network(
                            cart[i].imageUrl,
                            height: 50,
                            width: 50,
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
