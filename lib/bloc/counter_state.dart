class CounterState {
  final int counter;
  // final int counter1;

  const CounterState({this.counter = 0});

  CounterState copyWith({int? counter, int? counter1}) {
    return CounterState(
      counter: counter ?? this.counter,
      // counter1: counter1 ?? this.counter1,
    );
  }
}
