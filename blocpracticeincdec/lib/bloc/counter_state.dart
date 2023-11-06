part of 'counter_bloc.dart';
@immutable
class CounterState extends Equatable{
final  int counter;
CounterState({required this.counter});
List<Object> get props =>[counter];
}
// state to aik he ha
class CounterInitial extends CounterState {
  CounterInitial() : super(counter: 0);
}


