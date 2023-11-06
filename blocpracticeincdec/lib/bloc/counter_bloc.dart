import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
part 'counter_event.dart';
part 'counter_state.dart';
class CounterBloc extends Bloc<CounterEvent, CounterState> {

  CounterBloc() : super(CounterInitial()) {
      // TODO: implement event handler
    /*
    > on replaced MapEventTo State
    > Never create like This

     on<EventName>((event, emit) {
           on<IncrementEvent>((event, emit) => emit(CounterState(counter: state.counter + 1)));
    });

    because it will throw error that event is used multiple times
    * */
      on<IncrementEvent>((event, emit) => emit(CounterState(counter: state.counter + 1)));
      on<DecrementEvent>((event,emit) => emit(CounterState(counter: state.counter - 1)));
  }
}
