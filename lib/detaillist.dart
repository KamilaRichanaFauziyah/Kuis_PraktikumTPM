import 'package:flutter/material.dart';
import 'groceries.dart';
import 'grocierlist.dart';

class DetailList extends StatelessWidget {
  final Groceries groceries;
  const DetailList({Key? key, required this.groceries}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Detail Barang',
      home: Scaffold(
        appBar: AppBar(
          title: Text(groceries.name),
        ),
        body: Card(
          child: Column(
            children: [
              Image.network(
                groceries.productImageUrls[0],
                fit: BoxFit.fitWidth,
                height: 200,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 8.0),
                    Text(
                      groceries.description,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    SizedBox(height: 16.0),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                    Row(
                    children: [
                    Icon(Icons.add_shopping_cart),
                    SizedBox(width: 8.0),
                    Text(groceries.stock),
                  ],
                ),

                Row(
                  children: [
                    Icon(Icons.attach_money),
                    SizedBox(width: 8.0),
                    Text(groceries.price),
                    Icon(Icons.discount),
                    SizedBox(width: 8.0),
                    Text(groceries.discount),

                  ],
                ),
              ],
    ),
            ],
          ),
        ),
      ],
      ),
    ),
    ),
    );
  }
}
