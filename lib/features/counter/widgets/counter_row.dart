import 'package:flutter/material.dart';
import 'counter_widget.dart';
import 'decrement_button.dart';
import 'increment_button.dart';

class CounterRow extends StatelessWidget {
  const CounterRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IncrementButton(),
        CounterWidget(),
        DecrementButton(),
      ],
    );
  }
}
