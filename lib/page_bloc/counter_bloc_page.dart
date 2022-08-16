import 'package:counter_bloc/page_bloc/bloc/counter_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class CounterBlocPage extends StatelessWidget {
  const CounterBlocPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Bloc'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterBlolc, CounterState>(
              builder: (context, state) {
                return Text('Counter ${state.counter}',
                    style: Theme
                        .of(context)
                        .textTheme
                        .headlineMedium);
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton.icon(
                  onPressed: () {
                    context.read<CounterBlolc>().add(CounterIncrement());
                  },
                  icon: Icon(Icons.add),
                  label: Text(''),
                ),
                TextButton.icon(
                  onPressed: () {
                    context.read<CounterBlolc>().add(CounterDecrement());
                  },
                  icon: Icon(Icons.remove),
                  label: Text(''),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
