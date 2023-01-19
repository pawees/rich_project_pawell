import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rich_project_pawell/rich/features/news/presentation/news_screen.dart';
import 'package:rich_project_pawell/rich/features/splash_screen/presentation/splash_screen.dart';
import '../features/navigation_bar/presentation/navigation_bar_screen.dart';
import '../features/news/presentation/bloc/news_bloc.dart';
import '../features/promo/presentation/bloc/promo_bloc.dart';
import '../features/promo/presentation/promo_screen.dart';
import '../features/splash_screen/presentation/bloc/auth_bloc.dart';


class ScreenFactory {

  Widget makeLoader() {
    return const Text('');
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


  Widget makeNews() {
    return Scaffold(
      body: BlocProvider(
        create: (context) =>
        NewsBloc()..add(InitNews()),
        child: BlocBuilder<NewsBloc, NewsState>(
          buildWhen: (preState, currState) => currState is NewsScreenState,
          builder: (context, state) {
            //TODO state like enums
            if (state is NewsScreenState) {
              Navigator.of(context).pushReplacementNamed('/news');

              //retu
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (context) =>  NewsScreen(state.news),
              //   ),
              // );

            }
            return Container();
          },
        ),
      ),
    );
  }

  Widget makePromo() {
    return Scaffold(
      body: BlocProvider(
        create: (context) =>
        PromoBloc()
          ..add(InitPromo()),
        child: BlocListener<PromoBloc, PromoState>(
          listenWhen: (preState, currState) => currState is PromoScreenState,
          child: Container(),
          listener: (context, state) {//TODO state like enums
            if (state is PromoScreenState) {

              Navigator.of(context).pushReplacementNamed('/promo_screen');
            }
          },
        ),
      ),
    );
  }
  Widget screenPromo() {
    return PromoScreen();
  }



}
