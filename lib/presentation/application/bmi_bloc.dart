import 'package:bmi_calculator/constants/logic_constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'bmi_event.dart';
part 'bmi_state.dart';

class BmiBloc extends Bloc<BmiEvent, BmiState> {
  BmiBloc() : super(BmiState.initial()) {
    on<OnGenderChange>((event, emit) => onGenderChange(event, emit));
    on<OnHeightChange>((event, emit) => onHeightChange(event, emit));
    on<OnWeightChange>((event, emit) => onWeightChange(event, emit));
    on<OnAgeChange>((event, emit) => onAgeChange(event, emit));
    on<OnCalculateBmi>((event, emit) => onCalculateBmi(event, emit));
  }

  onGenderChange(OnGenderChange event, Emitter<BmiState> emit) {
    emit(state.copyWith(gender: event.gender));
  }

  onWeightChange(OnWeightChange event, Emitter<BmiState> emit) {
    if (event.weight != 0) {
      emit(state.copyWith(weight: event.weight));
    }
  }

  onHeightChange(OnHeightChange event, Emitter<BmiState> emit) {
    emit(state.copyWith(height: event.height));
  }

  onAgeChange(OnAgeChange event, Emitter<BmiState> emit) {
    if (event.age != 0) {
      emit(state.copyWith(age: event.age));
    }
  }

  onCalculateBmi(OnCalculateBmi event, Emitter<BmiState> emit) {}
}
