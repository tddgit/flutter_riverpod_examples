import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_examples/widget/text.dart';

final numberProvider = Provider<int>((ref) => 42);

class ProviderPage extends ConsumerWidget {
  const ProviderPage({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    T Function<T>(ProviderBase<Object?, T>) watch,
  ) {
    final number = watch(numberProvider).toString();

    return Scaffold(
      appBar: AppBar(
        title: Text('Provider'),
      ),
      body: Center(
        child: TextWidget(number),
      ),
    );
  }
}
