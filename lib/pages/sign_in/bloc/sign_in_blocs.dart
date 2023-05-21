import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:selling_online/pages/sign_in/bloc/sign_in_events.dart';
import 'package:selling_online/pages/sign_in/bloc/sign_in_states.dart';

class SignInBlocs extends Bloc<SignInEvent, SignInStates> {
  SignInBlocs() : super(SignInStates()) {
    on<EmailEvent>(_emailEvent
        // (event, emit) {
        //   emit(
        //     state.copyWithValues(email: state.email),
        //   );
        // },
        );

    on<PasswordEvent>(_passwordEvent
        // (event, emit) {
        //   emit(
        //     state.copyWithValues(password: state.password),
        //   );
        // },
        );
  }

  void _emailEvent(EmailEvent event, Emitter<SignInStates> emit) {
    emit(
      state.copyWithValues(email: state.email),
    );
  }

  void _passwordEvent(PasswordEvent event, Emitter<SignInStates> emit) {
    emit(
      state.copyWithValues(password: state.password),
    );
  }
}
