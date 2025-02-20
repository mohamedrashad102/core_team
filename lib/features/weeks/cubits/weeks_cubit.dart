import 'package:flutter_bloc/flutter_bloc.dart';

part 'weeks_cubit_state.dart';

class WeeksCubit extends Cubit<WeeksCubitState> {
  WeeksCubit() : super(WeeksCubitState.initial());

  void increment() {
    emit(WeeksCubitState.incrementWeeks(state));
  }

  void decrement() {
    emit(WeeksCubitState.decrementWeeks(state));
  }
}
