import 'package:blocpracticeincdec/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        ElevatedButton(
          onPressed: () {
            BlocProvider.of<CounterBloc>(context).add(IncrementEvent());
          },
          child: const Text("+"),
        ),

        BlocBuilder<CounterBloc,CounterState> (
            builder: (context, state)=>Text("${state.counter}")
        ) ,

        ElevatedButton(onPressed: (){
          BlocProvider.of<CounterBloc>(context).add(DecrementEvent());
        }, child: Text('-'))

     ] ,
    ));
  }
}
