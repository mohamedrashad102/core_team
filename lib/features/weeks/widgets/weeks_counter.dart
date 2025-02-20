import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubits/weeks_cubit.dart';

class WeeksCounter extends StatelessWidget {
  const WeeksCounter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: context.read<WeeksCubit>().increment,
      child: BlocBuilder<WeeksCubit, WeeksCubitState>(
        builder: (context, state) {
          return Text(
            'Weeks: ${state.weeksCounter}',
          );
        },
      ),
    );
  }
}
