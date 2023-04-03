part of 'bmi_bloc.dart';

abstract class BmiEvent {}

class OnGenderChange extends BmiEvent {
  final Gender gender;
  OnGenderChange({required this.gender});
}

class OnHeightChange extends BmiEvent {
  final int height;
  OnHeightChange({required this.height});
}

class OnWeightIncrement extends BmiEvent {
  final int weight;
  OnWeightIncrement({required this.weight});
}

class OnWeightDecrement extends BmiEvent {
  final int weight;
  OnWeightDecrement({required this.weight});
}

class OnAgeIncrement extends BmiEvent {
  final int age;
  OnAgeIncrement({required this.age});
}

class OnAgeDecrement extends BmiEvent {
  final int age;
  OnAgeDecrement({required this.age});
}
