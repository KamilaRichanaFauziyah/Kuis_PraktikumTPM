import 'package:flutter/material.dart';
import 'groceries.dart';
import 'detaillist.dart';

class GroceriesList extends StatelessWidget {
  const GroceriesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: groceryList .length,
      itemBuilder: (BuildContext context, int index){
        return GroceryListCard(groceries: groceryList[index]);
      },
    );
  }
}

class GroceryListCard extends StatelessWidget {
  final Groceries groceries;

  const GroceryListCard({Key? key, required this.groceries}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GestureDetector(
          onTap: () => {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailList(groceries: groceries);
            }))
          },
    child: Card(
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
                Text(
                  groceries.name,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(height: 8.0),
                Text(
                  groceries.description,
                  style: Theme.of(context).textTheme.titleMedium,
                ),

                // SizedBox(height: 16.0),
                // Text(groceries.price),

                SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.add_shopping_cart),
                        SizedBox(width: 8.0),
                        Text(groceries.stock),
                        SizedBox(height: 8.0),
                        Icon(Icons.place),
                        Text(groceries.storeName,
                        ),
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



