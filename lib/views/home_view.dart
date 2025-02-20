import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/counter_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocProvider(
          create: (context) => CounterCubit(),
          child: Column(
            children: [
              CounterRow(),
              MonthsCounter(),
            ],
          ),
        ),
      ),
    );
  }
}

class MonthsCounter extends StatelessWidget {
  const MonthsCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<CounterCubit, CounterCubitState, int>(
      selector: (state) => state.monthsCounter,
      builder: (context, monthsCounter) {
        print('build Months');
        return Text('Months: $monthsCounter');
      },
    );
  }
}

class CounterRow extends StatelessWidget {
  const CounterRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[
        IncrementButton(),
        CounterWidget(),
        CounterButton(),
        DecrementButton(),
      ],
    );
  }
}

class IncrementButton extends StatelessWidget {
  const IncrementButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<CounterCubit, CounterCubitState>(
      listener: (context, state) {},
      child: IconButton(
        onPressed: context.read<CounterCubit>().increment,
        icon: Icon(
          Icons.add,
        ),
      ),
    );
  }
}

class CounterWidget extends StatelessWidget {
  const CounterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, CounterCubitState>(
      builder: (context, state) {
        return Text(state.weeksCounter.toString());
      },
    );
  }
}

class DecrementButton extends StatelessWidget {
  const DecrementButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        context.read<CounterCubit>().decrement();
      },
      icon: Icon(
        Icons.remove,
      ),
    );
  }
}

class CounterButton extends StatelessWidget {
  const CounterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterCubitState>(
      listener: (context, state) {},
      builder: (context, state) {
        return TextButton(
          onPressed: context.read<CounterCubit>().increment,
          child: Text(state.weeksCounter.toString()),
        );
      },
    );
  }
}
