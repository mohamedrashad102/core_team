part of 'counter_cubit.dart';

class CounterCubitState {
  final int weeksCounter;
  final int monthsCounter;
  bool? increment;

  CounterCubitState._({
    required this.weeksCounter,
    required this.monthsCounter,
    this.increment,
  });

  factory CounterCubitState.initial() {
    return CounterCubitState._(
      weeksCounter: 0,
      monthsCounter: 0,
    );
  }

  factory CounterCubitState.increment(CounterCubitState state) {
    return CounterCubitState._(
      weeksCounter: state.weeksCounter + 1,
      monthsCounter: (state.weeksCounter + 1) ~/ 4,
      increment: true,
    );
  }

  factory CounterCubitState.decrement(CounterCubitState state) {
    return CounterCubitState._(
      weeksCounter: state.weeksCounter - 1,
      monthsCounter: (state.weeksCounter - 1) ~/ 4,
      increment: false,
    );
  }
}
