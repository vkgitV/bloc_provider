import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/bloc/bloc_screen.dart';

import '../provider/provider.dart';
import 'counter_bloc.dart';
class Wrapper extends StatefulWidget {
  const Wrapper({super.key});

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    return
        BlocProvider<CounterBloc>(
          create: (context) => CounterBloc(),
      child: const BlocHomeScreen(title: "bloc",),
    );
  }
}