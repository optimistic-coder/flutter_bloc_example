import 'package:Bloc_Add_Cart/events/food_event.dart';
import 'package:Bloc_Add_Cart/model/Food.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FoodBloc extends Bloc<FoodEvent, List<Foods>> {
  FoodBloc() : super(List<Foods>());

  @override
  Stream<List<Foods>> mapEventToState(FoodEvent event) async* {
    // TODO: implement mapEventToState
    switch (event.eventType) {
      case EventType.add:
        List<Foods> newState = List.from(state);
        if (newState != null) {
          newState.add(event.food);
        }
        yield newState;
        break;
      case EventType.delete:
        List<Foods> newState = List.from(state);
        newState.removeAt(event.foodIndex);
        yield newState;
        break;
      case EventType.len:
        List<Foods> newState = List.from(state);
        yield newState;
        break;
      default:
        throw Exception('Event not found');
    }
  }
}

// enum CounterEvent { increment, decrement }

// class CounterBloc extends Bloc<CounterEvent, int> {
//   CounterBloc() : super(0);

//   @override
//   Stream<int> mapEventToState(CounterEvent event) async* {
//     switch (event) {
//       case CounterEvent.decrement:
//         yield state - 1;
//         break;
//       case CounterEvent.increment:
//         yield state + 1;
//         break;
//       default:
//         addError(Exception('unsupported event'));
//     }
//   }
// }
