import 'package:Bloc_Add_Cart/model/Food.dart';

enum EventType { add, delete, len }

class FoodEvent {
  Foods food;
  int foodIndex;
  int len;
  EventType eventType;

  FoodEvent.add(Foods food) {
    this.eventType = EventType.add;
    this.food = food;
  }
  FoodEvent.delete(int index) {
    this.eventType = EventType.delete;
    this.foodIndex = index;
  }
  FoodEvent.len() {
    this.eventType = EventType.len;
  }
}
