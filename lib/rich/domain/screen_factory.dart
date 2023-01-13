import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rich_project_pawell/rich/feautures/news/presentation/news_screen.dart';
import 'package:rich_project_pawell/rich/feautures/splash_screen/presentation/splash_screen.dart';
import '../feautures/navigation_bar/presentation/navigation_bar_screen.dart';
import '../feautures/news/presentation/bloc/news_bloc.dart';
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
    return Scaffold(body: BottomNavigation());
  }

  // Widget makeNews() {
  //   return Scaffold(
  //     body: BlocProvider(
  //       create: (context) =>
  //       NewsBloc()..add(InitNews()),
  //       child: BlocListener<NewsBloc, NewsState>(
  //         listenWhen: (preState, currState) => currState is NewsScreenState,
  //         child: Container(),
  //         listener: (context, state) {
  //           //TODO state like enums
  //           if (state is NewsScreenState) {
  //             return Text('');
  //           }
  //         },
  //       ),
  //     ),
  //   );
  // }

  Widget makeNews() {
    return Scaffold(
      body: BlocProvider(
        create: (context) =>
        NewsBloc()..add(InitNews()),
        child: BlocBuilder<NewsBloc, NewsState>(
          buildWhen: (preState, currState) => currState is NewsScreenState,
          //child: Container(),
          builder: (context, state) {
            //TODO state like enums
            if (state is NewsScreenState) {
              return NewsScreen(state.news);
            }
            return Container();
          },
        ),
      ),
    );
  }


  // Widget makeNews() {
  //
  //   return Scaffold(
  //     body: BlocBuilder<NewsBloc, NewsState>(
  //         builder: (context, state) {
  //           return NewsScreen();
  //         }
  //     )
  //   );
  // }



}
