import 'package:FoodList/food_list.dart';
import 'package:flutter/material.dart';

class FoodListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Food List')),
      body: FoodList(),
    );
  }
}
