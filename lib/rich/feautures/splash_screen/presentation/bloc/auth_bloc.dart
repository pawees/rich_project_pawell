import 'dart:async';
import 'package:flutter/material.dart';

import 'package:bloc/bloc.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:meta/meta.dart';
import 'package:rich_project_pawell/rich/feautures/auth/domain/entities/session.dart';
import 'package:rich_project_pawell/rich/feautures/auth/domain/enums/auth_status.dart';
import '../../../auth/service/auth_service_impl.dart';
import '../../../navigation/domain/entity/main_navigation_route_names.dart';

part 'auth_event.dart';
part 'auth_state.dart';


// TODO probably made classic bloc
class AuthBloc extends Bloc<AuthEvent, AuthState> {

  static final _auth_service = Get.find<AuthService>();

  AuthBloc() : super(AuthInitial()) {
    on<AuthEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<CheckAuth>((event, emit) => checkAuth(emit));

  }


  Future<void> checkAuth(Emitter<AuthState> emit) async {

    await Future.delayed(Duration(seconds: 4));

    await _auth_service.checkAuth();

    emit(CheckAuthState(MainNavigationRouteNames.home));


  }

}
