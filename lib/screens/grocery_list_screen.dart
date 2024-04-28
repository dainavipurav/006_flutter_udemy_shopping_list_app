import 'package:flutter/material.dart';
import 'package:udemy_006_shopping_list_app/screens/new_item_screen.dart';

import '../widgets/grocery_list.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  void _addNewItem() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const NewItemScreen();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Groceries'),
        actions: [
          IconButton(
            onPressed: _addNewItem,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: const GroceryList(),
    );
  }
}
