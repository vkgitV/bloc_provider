import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter_event.dart';
import 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {

  CounterBloc() : super(const CounterState()) {
    on<AddEvent>(_mapAddLogic);
    on<RemoveEvent>(_mapRemoveLogic); // Handle decrement
  }
  void _mapAddLogic(AddEvent event, Emitter<CounterState> emit) {
   emit(state.copyWith(counter: state.counter + 1)); // Increment
  }

  void _mapRemoveLogic(RemoveEvent event, Emitter<CounterState> emit) {
    emit(state.copyWith(counter: state.counter - 1)); // Decrement
  }
}
