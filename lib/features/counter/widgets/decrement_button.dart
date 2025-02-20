import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubits/counter_cubit.dart';

class DecrementButton extends StatelessWidget {
  const DecrementButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: context.read<CounterCubit>().decrement,
      icon: const Icon(Icons.remove),
    );
  }
}
