import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rich_project_pawell/rich/feautures/splash_screen/presentation/splash_screen.dart';
import '../feautures/splash_screen/presentation/bloc/auth_bloc.dart';


class ScreenFactory {

  Widget makeLoader() {
    return Text('');
  }


  Widget makeAuth() {
    return Scaffold(
      body: BlocProvider(
        create: (context) =>
        AuthBloc()
          ..add(CheckAuth()),
        child: BlocListener<AuthBloc, AuthState>(
          listenWhen: (preState, currState) => currState is CheckAuthState,
          child: SplashScreen(),
          listener: (context, state) {//TODO state like enums
            if (state is CheckAuthState) {
              Navigator.of(context).pushReplacementNamed(state.nextScreen);
            }
          },
        ),
      ),
    );
  }


  Widget makeHome() {
    return Scaffold(body: Center(child: Text('Hello,world')));
  }


}
