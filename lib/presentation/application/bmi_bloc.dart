import 'package:bmi_calculator/constants/logic_constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'bmi_event.dart';
part 'bmi_state.dart';

class BmiBloc extends Bloc<BmiEvent, BmiState> {
  BmiBloc() : super(BmiState.initial()) {
    on<OnGenderChange>((event, emit) => onGenderChange(event, emit));
    on<OnHeightChange>((event, emit) => onHeightChange(event, emit));
    on<OnWeightIncrement>((event, emit) => onWeightIncrement(event, emit));
    on<OnWeightDecrement>((event, emit) => onWeightDecrement(event, emit));
    on<OnAgeIncrement>((event, emit) => onAgeIncrement(event, emit));
    on<OnAgeDecrement>((event, emit) => onAgeDecrement(event, emit));
  }

  onGenderChange(OnGenderChange event, Emitter<BmiState> emit) {
    emit(state.copyWith(gender: event.gender));
  }

  onHeightChange(OnHeightChange event, Emitter<BmiState> emit) {
    emit(state.copyWith(height: event.height));
  }

  onWeightIncrement(OnWeightIncrement event, Emitter<BmiState> emit) {}
  onWeightDecrement(OnWeightDecrement event, Emitter<BmiState> emit) {}

  onAgeIncrement(OnAgeIncrement event, Emitter<BmiState> emit) {}
  onAgeDecrement(OnAgeDecrement event, Emitter<BmiState> emit) {}
}
