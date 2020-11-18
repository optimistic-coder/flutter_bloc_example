import 'package:Bloc_Add_Cart/model/Food.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/food_bloc.dart';
import 'events/food_event.dart';
import 'model/Food.dart';

class checkout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(16),
        child: BlocConsumer<FoodBloc, List<Foods>>(
          builder: (context, foodList) {
            return ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              padding: EdgeInsets.all(16),
              itemCount: foodList.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(foodList[index].name),
                    onTap: () => BlocProvider.of<FoodBloc>(context).add(
                      FoodEvent.delete(index),
                    ),
                  ),
                );
              },
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

// class CounterPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: const Text('Counter')),
//         body:Container(
//           child: BlocConsumer<FoodBloc, List<Food>>(
//          builder: (context, foodList) {
//             return ListView.builder(
//               scrollDirection: Axis.vertical,
//               shrinkWrap: true,
//               padding: EdgeInsets.all(16),
//               itemCount: foodList.length,
//               itemBuilder: (context, index) {
//                 return Card(
//                   child: ListTile(
//                     title: Text(foodList[index].name),
//                     onTap: () => BlocProvider.of<FoodBloc>(context).add(
//                       FoodEvent.delete(index),
//                     ),
//                   ),
//                 );
//               },
//             );
//           },
//            listener: (BuildContext context, foodList) {
//             Scaffold.of(context).showSnackBar(
//               SnackBar(content: Text('Added!')),
//             );
//           },
//         ),
//         )
//         );
//   }
// }
