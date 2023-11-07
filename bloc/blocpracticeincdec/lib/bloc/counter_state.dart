part of 'counter_bloc.dart';
@immutable
class CounterState {
final  int counter;
CounterState({required this.counter});
}
// state to aik he ha
class CounterInitial extends CounterState {
  CounterInitial() : super(counter: 0);
}


