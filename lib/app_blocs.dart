import 'package:flutter_bloc/flutter_bloc.dart';
import '/app_events.dart';
import '/app_states.dart';

class AppBlocs extends Bloc<AppEvents, AppStates> {
  AppBlocs() : super(InitStates()) {
    on<Increment>(
      (event, emit) {
        emit(
          AppStates(counter: state.counter + 1),
        );
      },
    );

    on<Decrement>(
      (event, emit) => emit(
        AppStates(counter: state.counter - 1),
      ),
    );
  }
}
