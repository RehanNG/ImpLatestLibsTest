part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}
//increment event
class IncrementEvent extends CounterEvent {
}
//decrement event
class DecrementEvent extends CounterEvent {
}
