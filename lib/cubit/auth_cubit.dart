import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/cubit/auth_state.dart';

class AuthCubit extends Cubit<AuthState>{
  AuthCubit():super(AuthState(username: '',isLoggedIn: false ));

  void login(String name){
    emit(AuthState(isLoggedIn: true,username: name));
  }

  void logout(){
    emit(AuthState(isLoggedIn: false,username: ''));
  }

}