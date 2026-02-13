import 'package:bloc/bloc.dart';
import 'package:counter_bloc/bloc/counter_bloc/conuter_state.dart';
import 'package:counter_bloc/bloc/counter_bloc/counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(count: 0)) {
    on<IncrementCount>(_incrementCount);
    on<DecrementCount>(_decrementCount);
  }

  void _incrementCount(IncrementCount event, Emitter<CounterState> emit) {
    emit(state.copyWith(count: state.count + 1));
  }

  void _decrementCount(DecrementCount event, Emitter<CounterState> emit) {
    emit(state.copyWith(count: state.count - 1));
  }
}
