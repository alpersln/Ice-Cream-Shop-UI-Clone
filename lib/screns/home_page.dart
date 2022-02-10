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
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: mediumPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        greetingUser,
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                            fontWeight: FontWeight.normal, color: Colors.black),
                      ),
                      SizedBox(height: lowPadding),
                      Text(
                        "What flavor do you like to eat?",
                        style: Theme.of(context).textTheme.bodyText2,
                      )
                    ],
                  ),
                  const CircleAvatar(
                    backgroundImage: NetworkImage(avatarNetworkImage),
                    radius: 24,
                  )
                ],
              ),
              SizedBox(height: mediumPadding),
              SearchTextField(),
              SizedBox(height: mediumPadding),
              Text(topFlavoursString,
                  style: Theme.of(context).textTheme.headline5),
              SizedBox(height: mediumPadding),
              if (!isKeyboard) TopFlavoursList(),
              SizedBox(height: mediumPadding),
              Text(popularIceCreamString,
                  style: Theme.of(context).textTheme.headline5),
              PopularIceCreamList(),
              SizedBox(height: 16),
              Text(topItemString, style: Theme.of(context).textTheme.headline5),
              if (!isKeyboard) const TopItemList(),
            ],
          ),
        ),
      ),
    );
  }
}
