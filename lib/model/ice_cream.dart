import 'package:flutter/cupertino.dart';

class IceCream {
  final String id;
  final String? title;
  final String? shortTitle;
  final String? description;
  final String? longDescription;
  final double price;
  final String imageUrl;
  final double? kilos;
  final double? review;
  final int? reviewCount;

  IceCream(
      {required this.id,
      this.title,
      this.shortTitle,
      this.description,
      this.longDescription,
      required this.price,
      required this.imageUrl,
      this.kilos,
      this.review,
      this.reviewCount});
}

class Products {
  List<IceCream> _items = [
    IceCream(
      id: 'p1',
      title: 'Vanilla Ice Cream',
      shortTitle: "Vanilla",
      description: 'With strawberry jam ',
      longDescription:
          "The best sorbets come from the best fruits.That's why we hand-pick heritage raspberries and combine them with the sweetest and most juicy strawberries.",
      price: 14.60,
      imageUrl: 'https://cdn-icons-png.flaticon.com/128/938/938063.png',
      kilos: 1.3,
      review: 4.9,
      reviewCount: 298,
    ),
    IceCream(
      id: 'p2',
      title: 'Neapolitan Ice Cream',
      shortTitle: "Neopolitan",
      description: 'Made from sweetened water and flavoring.',
      longDescription:
          "The best sorbets come from the best fruits.That's why we hand-pick heritage raspberries and combine them with the sweetest and most juicy strawberries.",
      price: 59.99,
      imageUrl: 'https://cdn-icons-png.flaticon.com/512/3077/3077188.png',
      kilos: 1.1,
      review: 4.7,
      reviewCount: 349,
    ),
    IceCream(
      id: 'p3',
      title: 'Raspberry Ice Cream',
      shortTitle: "Raspberry",
      description: 'Made with milk,cream,sugar and flavoring.',
      longDescription:
          "The best sorbets come from the best fruits.That's why we hand-pick heritage raspberries and combine them with the sweetest and most juicy strawberries.",
      price: 19.99,
      imageUrl: 'https://cdn-icons-png.flaticon.com/128/3198/3198662.png',
      kilos: 1.7,
      review: 4.3,
      reviewCount: 654,
    ),
    IceCream(
      id: 'p4',
      title: 'Mango Ice Cream',
      shortTitle: "Mango",
      description: 'Include fruit juice or fruit puree.',
      longDescription:
          "The best sorbets come from the best fruits.That's why we hand-pick heritage raspberries and combine them with the sweetest and most juicy strawberries.",
      price: 49.99,
      imageUrl: 'https://cdn-icons-png.flaticon.com/128/6794/6794756.png',
      kilos: 1.6,
      review: 4.8,
      reviewCount: 179,
    ),
  ];

  List<IceCream> get items {
    return [..._items];
  }
}
