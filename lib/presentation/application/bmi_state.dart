part of 'bmi_bloc.dart';

class BmiState {
  final int height;
  final int weight;
  final Gender gender;
  final int age;
  BmiState({required this.height, required this.weight, required this.gender, required this.age});
  factory BmiState.initial() {
    return BmiState(height: 12, weight: 20, gender: Gender.male, age: 8);
  }
  BmiState copyWith({
    int? height,
    int? weight,
    int? age,
    Gender? gender,
  }) {
    return BmiState(
      height: height ?? this.height,
      weight: weight ?? this.weight,
      gender: gender ?? this.gender,
      age: age ?? this.age,
    );
  }
}
