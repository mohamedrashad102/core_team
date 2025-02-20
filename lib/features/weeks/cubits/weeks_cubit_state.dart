part of 'weeks_cubit.dart';

class WeeksCubitState {
  final int weeksCounter;
  final int monthsCounter;

  WeeksCubitState._({
    required this.weeksCounter,
    required this.monthsCounter,
  });

  factory WeeksCubitState.initial() {
    return WeeksCubitState._(
      weeksCounter: 0,
      monthsCounter: 0,
    );
  }

  factory WeeksCubitState.incrementWeeks(WeeksCubitState state) {
    return WeeksCubitState._(
      weeksCounter: state.weeksCounter + 1,
      monthsCounter: (state.weeksCounter + 1) ~/ 4,
    );
  }

  factory WeeksCubitState.decrementWeeks(WeeksCubitState state) {
    if (state.weeksCounter == 0) return state;
    return WeeksCubitState._(
      weeksCounter: state.weeksCounter - 1,
      monthsCounter: (state.weeksCounter - 1) ~/ 4,
    );
  }
}
