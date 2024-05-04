import 'package:flutter/material.dart';

import 'package:meals/models/meal.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({super.key, required this.title, required this.meals});

  final String title;
  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Scrollable(
        viewportBuilder: (context, position) {
          return Column(
            children: [
              if (meals.isEmpty) const Text('No meals found'),
              for (final meal in meals)
                ListTile(
                  title: Text(meal.title),
                  subtitle: Text(meal.categories.join(', ')),
                  trailing: Text('\$${meal.steps.length * 10}'),
                ),
            ],
          );
        },
      ),
    );
  }
}
