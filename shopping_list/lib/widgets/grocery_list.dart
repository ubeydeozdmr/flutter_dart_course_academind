import 'package:flutter/material.dart';
import 'package:shopping_list/data/dummy_items.dart';

class GroceryList extends StatelessWidget {
  const GroceryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Your Groceries'),
        ),
        body: ListView(
          children: groceryItems.map((item) {
            return ListTile(
              title: Text(item.name),
              trailing: Text('${item.quantity}'),
              leading: CircleAvatar(
                child: Container(
                  color: item.category.color,
                  // decoration: BoxDecoration(
                  //   shape: BoxShape.rectangle,
                  //   color: item.category.color,
                  // ),
                ),
              ),
            );
          }).toList(),
        ));
  }
}
