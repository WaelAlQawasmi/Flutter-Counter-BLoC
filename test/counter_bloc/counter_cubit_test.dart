import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../lib/counter_bloc/counter_cubit.dart';

void main() {
  group('Counter cubit', () {
    late CounterCubit counterCubit;

    setUp(() {
      counterCubit = CounterCubit();
    });

    tearDown(() {
      counterCubit.close();
    });
    test(
        ' initial values  for counterValue should be 0 and valueChanged false ',
        () => {
              expect(counterCubit.state,
                  CounterState(counterValue: 0, valueChanged: false))
            });

    blocTest(
      'test increment methode the value should be 1 ',
      build: () => counterCubit,
      act: (cubit) => cubit.increment(),
      expect: () => [CounterState(counterValue: 1, valueChanged: true)],
    );
    blocTest(
      'test decrement  methode  the value should be -1 ',
      build: () => counterCubit,
      act: (cubit) => cubit.decrement(),
      expect: () => [CounterState(counterValue: -1, valueChanged: true)],
    );
  });
}
