import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rich_project_pawell/rich/features/splash_screen/presentation/splash_screen.dart';
import '../features/card/presentation/card_screen.dart';
import '../features/map/presentation/MapScreen.dart';
import '../features/navigation/service/go_route/routes.dart';
import '../features/navigation_bar/presentation/navigation_bar_screen.dart';
import '../features/news/domain/entities/news.dart';
import '../features/news/presentation/bloc/news_bloc.dart';
import '../features/news/presentation/news_screen.dart';
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
        create: (context) => AuthBloc()..add(CheckAuth()),
        child: BlocListener<AuthBloc, AuthState>(
          listenWhen: (preState, currState) => currState is CheckAuthState,
          child: SplashScreen(),
          listener: (context, state) {
            //TODO state like enums
            if (state is CheckAuthState) {
              context.go('/news',);
              //Navigator.of(context).pushReplacementNamed(state.nextScreen);
            }
          },
        ),
      ),
    );
  }

//

  Widget makeNews() {
    //return BlocStyleWidged(inside him code below)
    return Scaffold(
        child: BlocBuilder<NewsBloc, NewsScreenState>(
          buildWhen: (preState, currState) => currState is NewsScreenState,
          builder: (context, state) {
            //TODO state like enums
            if (state is NewsScreenState) {
              return NewsScreen(state.newsContainer.news,);
            }
            return Container();
          },
        ),
      ),
    );
  }


  Widget openNews() {
    return Scaffold(
      body: BlocProvider(
        create: (context) => NewsBloc(NewsScreenState.inital()),
        child: BlocBuilder<NewsBloc, NewsScreenState>(
          buildWhen: (preState, currState) => currState is NewsScreenState,
          builder: (context, state) {
            //TODO state like enums
            if (state is NewsScreenState) {
              return NewsScreen(state.newsContainer.news,);
            }
            return Container();
          },
        ),
      ),
    );
  }

  Widget makeNewsDetails(id) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => NewsBloc(NewsScreenState.inital())..add(DetailsNews(id)),
        child: BlocBuilder<NewsBloc, NewsScreenState>(
          buildWhen: (preState, currState) => currState is NewsScreenState,
          builder: (context, state) {
            //TODO state like enums
            if (state is NewsScreenState) {
              //context.go('/news', extra: state.news);
              return MyStatefulWidget(child:NewsDetails(state.oneNew,));
            }
            return Container();
          },
        ),
      ),
    );
  }

  Widget makePromo([build]) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => PromoBloc()..add(InitPromo()),
        child: BlocBuilder<PromoBloc, PromoState>(
          builder: (context, state) {
            if (build && state is PromoScreenState) {
              return PromoScreen();

            }
            return Container();
          },
        ),
      ),
    );
  }

  Widget makeCard([build]) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => PromoBloc()..add(InitPromo()),
        child: BlocBuilder<PromoBloc, PromoState>(
          builder: (context, state) {
            if (build && state is PromoScreenState) {
              return CardScreen();
            }
            return Container();
          },
        ),
      ),
    );
  }

  Widget makeMap() {
    return MyStatefulWidget(child: MapScreen());
  }





}
