import 'package:Bloc_Add_Cart/cart_icon.dart';
import 'package:Bloc_Add_Cart/checkout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/food_bloc.dart';
import 'events/food_event.dart';
import 'model/Food.dart';

class FoodForm extends StatefulWidget {
  @override
  _FoodFormState createState() => _FoodFormState();
}

class _FoodFormState extends State<FoodForm> {
  String _foodname;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: cart_screen()),
      body: Container(
        padding: EdgeInsets.all(36),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Bloc Tutorial',
                style: TextStyle(fontSize: 42),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(labelText: 'Food'),
                style: TextStyle(fontSize: 22),
                onChanged: (text) {
                  setState(() {
                    _foodname = text;
                  });
                },
              ),
              // FoodList(),
            ],
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          FloatingActionButton(
            heroTag: 'button1',
            child: Icon(Icons.save),
            onPressed: () => {
              BlocProvider.of<FoodBloc>(context).add(
                FoodEvent.add(
                  Foods(_foodname),
                ),
              ),
            },
          ),
          SizedBox(height: 16),
          FloatingActionButton(
            heroTag: 'button2',
            child: Icon(Icons.navigate_next),
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => checkout()),
              )
            },
          ),
        ],
      ),
    );
  }
}
