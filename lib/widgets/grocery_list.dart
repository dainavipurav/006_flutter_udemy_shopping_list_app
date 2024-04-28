import 'package:flutter/material.dart';

import '../models/grocery_item.dart';

class GroceryList extends StatelessWidget {
  final List<GroceryItem> groceryItems;
  const GroceryList({super.key, required this.groceryItems});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: groceryItems.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Container(
            height: 24,
            width: 24,
            color: groceryItems[index].category.color,
          ),
          title: Text(groceryItems[index].name),
          trailing: Text(
            groceryItems[index].quantity.toString(),
          ),
        );
      },
    );
  }
}
