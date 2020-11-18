import 'package:Bloc_Add_Cart/model/Food.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/food_bloc.dart';
import 'events/food_event.dart';
import 'model/Food.dart';

class cart_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(16),
        child: BlocConsumer<FoodBloc, List<Foods>>(
          builder: (context, foodList) {
            int lens = foodList.length;
            return Container(
              child: Stack(
                children: <Widget>[
                  new IconButton(
                    icon: new Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    ),
                    onPressed: null,
                  ),
                  Positioned(
                    top: 3.0,
                    right: 4.0,
                    child: new Icon(Icons.brightness_1,
                        size: 20.0, color: Colors.green[800]),
                  ),
                  new Positioned(
                      top: 4.0,
                      right: 10.0,
                      child: new Center(
                        child: new Text(
                          '$lens',
                          style: new TextStyle(
                              color: Colors.white,
                              fontSize: 11.0,
                              fontWeight: FontWeight.w500),
                        ),
                      )),
                ],
              ),
            );
          },
          listener: (BuildContext context, foodList) {
            Scaffold.of(context).showSnackBar(
              SnackBar(content: Text('Added!')),
            );
          },
        ));
  }
}
