import 'package:flutter/material.dart';
import 'package:ice_cream_ui_clone/widgets/top_flavours_list.dart';

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
          padding: EdgeInsets.symmetric(horizontal: 16),
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
                        "Hey Emma",
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                            fontWeight: FontWeight.normal, color: Colors.black),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "What flavor do you like to eat?",
                        style: Theme.of(context).textTheme.bodyText2,
                      )
                    ],
                  ),
                  const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://thumbs.dreamstime.com/b/charming-happy-asian-female-white-t-shrit-smiling-satisfied-clapping-hands-congratulate-person-win-praising-good-work-well-193061246.jpg"),
                    radius: 24,
                  )
                ],
              ),
              const SizedBox(height: 16),
              SearchTextField(),
              const SizedBox(height: 16),
              Text("Top Flavours",
                  style: Theme.of(context).textTheme.headline5),
              const SizedBox(height: 16),
              if (!isKeyboard) TopFlavoursList(),
              const SizedBox(height: 16),
              Text("Popular Ice Cream",
                  style: Theme.of(context).textTheme.headline5),
              PopularIceCreamList(),
              const SizedBox(height: 16),
              Text("Top Item", style: Theme.of(context).textTheme.headline5),
              if (!isKeyboard) TopItemList(),
            ],
          ),
        ),
      ),
    );
  }
}
