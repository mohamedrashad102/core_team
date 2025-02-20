import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/weeks_cubit.dart';
import '../widgets/months_counter.dart';
import '../widgets/weeks_counter.dart';

class WeeksView extends StatelessWidget {
  const WeeksView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => WeeksCubit(),
        child: const SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              WeeksCounter(),
              MonthsCounter(),
            ],
          ),
        ),
      ),
    );
  }
}
