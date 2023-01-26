import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rich_project_pawell/rich/features/splash_screen/presentation/splash_screen.dart';
import '../features/card/presentation/card_screen.dart';
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
              context.go('/news',extra: <News>[News(title: 'title', text: 'text', id: 1,
                  imageUrl: 'https://images.unsplash.com/photo-1542676032-6e468ada2953?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332&q=80'
              )]);
              //Navigator.of(context).pushReplacementNamed(state.nextScreen);
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
        create: (context) => NewsBloc()..add(InitNews()),
        child: BlocBuilder<NewsBloc, NewsState>(
          buildWhen: (preState, currState) => currState is NewsScreenState,
          builder: (context, state) {
            //TODO state like enums
            if (state is NewsScreenState) {
              //context.go('/news', extra: state.news);
              return NewsScreen(state.news,);
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

///              context.go('/promo',);
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

}
class makeCard extends StatelessWidget {
const makeCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: BlocProvider(
        create: (context) => PromoBloc()..add(InitPromo()),
        child: BlocBuilder<PromoBloc, PromoState>(
          builder: (context, state) {
            if ( state is PromoScreenState) {
              context.go('/card',);
            }
            return Container();
          },
        ),
      ),
    );
  }
}
