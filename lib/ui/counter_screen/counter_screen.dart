import 'package:counter_bloc/bloc/counter_bloc/conuter_state.dart';
import 'package:counter_bloc/bloc/counter_bloc/counter_bloc.dart';
import 'package:counter_bloc/bloc/counter_bloc/counter_event.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "package:flutter_bloc/flutter_bloc.dart";

class Counter extends StatefulWidget{
  @override
  State<Counter> createState() {
    return _CounterState();
  }

}

class _CounterState extends State<Counter>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter Example"),),
      body: Column(
        children: [
          BlocBuilder<CounterBloc,CounterState>(
            builder: (context,state){
              return Text(state.count.toString());
            },
          ),

          const SizedBox(height: 40,),
          Row(
            children: [
              ElevatedButton(onPressed: (){
                context.read<CounterBloc>().add(DecrementCount());
              }, child: Text("decrement")),
              const SizedBox(width: 30,),
              ElevatedButton(onPressed: (){
                context.read<CounterBloc>().add(IncrementCount());
              }, child: Text("increment")),
            ],
          )
        ],
      ),
    );
  }

}