import 'package:flutter_riverpod/flutter_riverpod.dart';

final futureProvider = FutureProvider<int>(
  (ref) => fetchWeather(),
);

Future<int> fetchWeather() async {
  await Future<void>.delayed(
    Duration(seconds: 2),
  );

  return 20;
}
