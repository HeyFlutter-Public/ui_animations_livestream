import 'package:flutter/material.dart';

import '../data/item_data.dart';
import 'details_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
        ),
        body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];

            return GestureDetector(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => DetailsPage(item: item)),
              ),
              child: Card(
                elevation: 5,
                child: Row(
                  children: [
                    buildImage(item.imageUrl),
                    const SizedBox(width: 16),
                    Text(
                      'Item ${index + 1}',
                      style: const TextStyle(fontSize: 24),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      );

  Widget buildImage(String imageUrl) => Image.network(
        imageUrl,
        fit: BoxFit.cover,
        width: 100,
        height: 100,
      );
}
