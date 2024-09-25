import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/provider/counter_provider.dart';
import 'package:untitled/provider/provider.dart';

import 'bloc/bloc_screen.dart';
import 'cubit/bloc_provider.dart';



void main() {

  // runApp(  const BlocApp());
  // runApp(  const BlocProv());

  runApp(
    ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      child: const ProviderApp(),
    ),
  );
}