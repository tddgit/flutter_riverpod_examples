import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_examples/widget/text.dart';

// final stateProvider = StateProvider<int>((ref) => 0);
final stateProvider = StateProvider.autoDispose<int>((ref) => 0);

class StateProviderPage extends ConsumerWidget {
  @override
  Widget build(
    BuildContext context,
    T Function<T>(ProviderBase<Object?, T>) watch,
  ) {
    final provider = watch(stateProvider);
    final counter = provider.state.toString();

    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
      ),
      body: Center(
        child: TextWidget(counter),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          // provider.state++;
          final provider = context.read(stateProvider);
          provider.state++;
        },
      ),
    );
  }
}
