import 'package:flutter/material.dart';
import 'package:ice_cream_ui_clone/model/ice_cream.dart';
import 'package:ice_cream_ui_clone/widgets/top_flavours_list.dart';

import '../utils/constants.dart';
import '../widgets/popular_ice_cream_list.dart';
import '../widgets/search_text_field.dart';
import '../widgets/top_item_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                greetingUserString,
                style: Theme.of(context).textTheme.headline4!.copyWith(
                    fontWeight: FontWeight.normal, color: Colors.black),
              ),
              const CircleAvatar(
                backgroundImage: NetworkImage(avatarNetworkImage),
                radius: 24,
              )
            ],
          ),
          SizedBox(height: lowPadding),
          Text(
            attractiveString,
            style: Theme.of(context).textTheme.bodyText2,
          ),
          SizedBox(height: mediumPadding),
          const SearchTextField(),
          SizedBox(height: mediumPadding),
          Text(topFlavoursString, style: Theme.of(context).textTheme.headline5),
          SizedBox(height: mediumPadding),
          TopFlavoursList(),
          SizedBox(height: mediumPadding),
          Text(popularIceCreamString,
              style: Theme.of(context).textTheme.headline5),
          const PopularIceCreamList(),
          SizedBox(height: mediumPadding),
          Text(topItemString, style: Theme.of(context).textTheme.headline5),
          const TopItemList(),
        ],
      ),
    );
  }
}
