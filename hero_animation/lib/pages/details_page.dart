import 'package:flutter/material.dart';

import '../models/items.dart';

class DetailsPage extends StatelessWidget {
  final Item item;

  const DetailsPage({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Hero Animation'),
          centerTitle: true,
        ),
        body: buildImage(),
      );

  Widget buildImage() => AspectRatio(
        aspectRatio: 1,
        child: Image.network(
          item.imageUrl,
          fit: BoxFit.cover,
        ),
      );
}
