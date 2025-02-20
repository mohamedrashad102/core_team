import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_cubit_state.dart';

class CounterCubit extends Cubit<CounterCubitState> {
  CounterCubit() : super(CounterCubitState.initial());

  void increment() {
    emit(CounterCubitState.increment(state));
  }

  void decrement() {
    emit(CounterCubitState.decrement(state));
  }
}
