import 'package:Bloc_Add_Cart/bloc/food_bloc.dart';
import 'package:Bloc_Add_Cart/bloc/food_bloc_delegate.dart';
import 'package:Bloc_Add_Cart/events/food_event.dart';
import 'package:Bloc_Add_Cart/form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  Bloc.observer = FoodBlocDelegate();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<FoodBloc>(
      create: (context) => FoodBloc(),
      child: MaterialApp(
        title: 'Coding with Curry',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          secondaryHeaderColor: Colors.red,
        ),
        home: FoodForm(),
      ),
    );
  }
}
