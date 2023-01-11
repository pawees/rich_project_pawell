import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'autentification_event.dart';
part 'autentification_state.dart';

class AutentificationBloc extends Bloc<AutentificationEvent, AutentificationState> {
  AutentificationBloc() : super(AutentificationInitial()) {
    on<AutentificationEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
