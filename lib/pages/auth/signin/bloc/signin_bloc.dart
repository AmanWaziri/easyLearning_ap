import 'package:easylearn/pages/auth/signin/bloc/signin_event.dart';
import 'package:easylearn/pages/auth/signin/bloc/signin_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInBloc extends Bloc<SigninEvent, SignInState>{
  SignInBloc(): super(SignInState()){
    on<EmailEvent>(_emailEvent);
    on<PasswordEvent>(_passwordEvent);
  }

  void _emailEvent(EmailEvent event, Emitter<SignInState> emit){
      emit(state.copyWith(email: event.email));
  }

  void _passwordEvent(PasswordEvent event, Emitter<SignInState> emit){
    emit(state.copyWith(email: event.password));
  }
}