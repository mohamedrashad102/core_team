import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubits/counter_cubit.dart';

class CounterButton extends StatelessWidget {
  const CounterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, int>(
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
      builder: (context, state) {
        return TextButton(
          onPressed: context.read<CounterCubit>().increment,
          child: Text(
            state.toString(),
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
        );
      },
    );
  }
}
