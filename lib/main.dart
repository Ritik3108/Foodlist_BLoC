import 'package:FoodList/bloc/food_bloc.dart';
import 'package:FoodList/bloc/food_bloc_delegate.dart';
import 'package:FoodList/food_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  BlocSupervisor.delegate = FoodBlocDelegate();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<FoodBloc>(
      create: (context) => FoodBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          secondaryHeaderColor: Colors.red,
        ),
        home: FoodForm(),
      ),
    );
  }
}
