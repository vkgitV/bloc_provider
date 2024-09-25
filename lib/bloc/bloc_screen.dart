import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Wrapper.dart';
import 'counter_bloc.dart';
import 'counter_event.dart';
import 'counter_state.dart';



class BlocApp extends StatelessWidget {
  const BlocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Wrapper(),

    );
  }
}

class BlocHomeScreen extends StatefulWidget {
  const BlocHomeScreen({super.key, required this.title});

  final String title;

  @override
  State<BlocHomeScreen> createState() => _BlocHomeScreenState();
}

class _BlocHomeScreenState extends State<BlocHomeScreen> {

  void _incrementCounter() {
  BlocProvider.of<CounterBloc>(context).add(AddEvent());
  }

  void _decrementCounter(){
    BlocProvider.of<CounterBloc>(context).add(RemoveEvent());
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body:
      BlocBuilder<CounterBloc,CounterState>(
        builder: (context, state) {
          return Center(

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'You have pushed the button this many times:',
                  ),
                  Text('${ state.counter}',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ],
              ),
            );

        },
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(

            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 10,),
          FloatingActionButton(

            onPressed: _decrementCounter,
            tooltip: 'decrement',
            child: const Icon(Icons.remove),
          ),
        ],
      ),

    );
  }
}
