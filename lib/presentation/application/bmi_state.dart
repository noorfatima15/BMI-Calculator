part of 'bmi_bloc.dart';

class BmiState {
  final int height;
  final int weight;
  final Gender? gender;
  final int age;
  final double bmiResult;
  BmiState({required this.height, required this.weight, required this.gender, required this.age, required this.bmiResult});
  factory BmiState.initial() {
    return BmiState(height: 12, weight: 1, gender: null, age: 1, bmiResult: 0.0);
  }
  BmiState copyWith({
    int? height,
    int? weight,
    int? age,
    Gender? gender,
    double? bmiResult,
  }) {
    return BmiState(
      height: height ?? this.height,
      weight: weight ?? this.weight,
      gender: gender ?? this.gender,
      age: age ?? this.age,
      bmiResult: bmiResult ?? this.bmiResult,
    );
  }
}
