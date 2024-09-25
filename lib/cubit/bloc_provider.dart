import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/cubit/auth_cubit.dart';

import 'auth_screen.dart';
class BlocProv extends StatelessWidget {
  const BlocProv({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create:(_)=> AuthCubit() ,
        child: const AuthScreen(),
      ),
    );
  }
}
