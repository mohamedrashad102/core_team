import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubits/weeks_cubit.dart';

class MonthsCounter extends StatelessWidget {
  const MonthsCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<WeeksCubit, WeeksCubitState, int>(
      selector: (state) => state.monthsCounter,
      builder: (context, monthsCounter) {
        print('Build MonthsCounter');
        return Text('Months: $monthsCounter');
      },
    );
  }
}
