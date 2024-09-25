
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/cubit/auth_cubit.dart';

import 'auth_state.dart';
class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authCubit= context.read<AuthCubit>();
    return Scaffold(
      appBar: AppBar(title: const Text("Auth Cubit Screen")),
      body: BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (state.isLoggedIn)
                  Text('Logged in as: ${state.username}', style: const TextStyle(fontSize: 24)),
                if (!state.isLoggedIn)
                  const Text('Not logged in', style: TextStyle(fontSize: 24)),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (state.isLoggedIn) {
                      authCubit.logout();
                    } else {
                      authCubit.login('Vinay Kumar');
                    }
                  },
                  child: Text(state.isLoggedIn ? 'Logout' : 'Login'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
