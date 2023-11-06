part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}
//increment event
class IncrementEvent extends CounterEvent {
  // @override
  // TODO: implement props
  // List<Object?> get props => throw UnimplementedError();
}
//decrement event
 class DecrementEvent extends CounterEvent {
  // @override
  // TODO: implement props
  // List<Object?> get props => throw UnimplementedError();
}
