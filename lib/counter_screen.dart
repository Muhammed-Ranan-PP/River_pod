import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_pod/counter_notifier.dart';

class CounterScreen extends ConsumerWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(counterProvider);
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Count: $count', style: TextStyle(fontSize: 30)),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              ref.read(counterProvider.notifier).increment();
            },
            child: Text('Increment'),
          ),
          ElevatedButton(
            onPressed: () {
              ref.read(counterProvider.notifier).decrement();
            },
            child: Text("Decrement"),
          ),
          ElevatedButton(
            onPressed: () {
              ref.read(counterProvider.notifier).reset();
            },
            child: Text("Reset"),
          ),
        ],
      ),
    );
  }
}
