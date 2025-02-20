import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/counter_cubit.dart';

class IncrementButton extends StatelessWidget {
  const IncrementButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<CounterCubit, int>(
      listener: (context, state) {
        if (state % 2 == 0) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Yaaay! You have an even number!'),
              duration: Duration(milliseconds: 500),
            ),
          );
        }
      },
      child: IconButton(
        onPressed: context.read<CounterCubit>().increment,
        icon: const Icon(Icons.add),
      ),
    );
  }
}
