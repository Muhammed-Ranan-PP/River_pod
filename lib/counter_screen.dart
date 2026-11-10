import 'package:flutter/material.dart';
import 'package:river_pod/counter_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final count = ref.watch(counterProvider);
    return Scaffold(
       appBar: AppBar(
      title: const Text('Riverpod Counter'),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Count: $count',
            style: const TextStyle(fontSize: 30),
          ),
            const SizedBox(height: 20),
      ElevatedButton(
        onPressed: () {
          ref.read(counterProvider.notifier).state++;
        },
        child: const Text('Increment'),
      ),
        ],
      ),
    ),
    );
  }
}
