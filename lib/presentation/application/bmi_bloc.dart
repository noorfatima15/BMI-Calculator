import 'package:bmi_calculator/constants/logic_constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'bmi_event.dart';
part 'bmi_state.dart';

class BmiBloc extends Bloc<BmiEvent, BmiState> {
  BmiBloc() : super(BmiState.initial()) {
    on<BmiEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
