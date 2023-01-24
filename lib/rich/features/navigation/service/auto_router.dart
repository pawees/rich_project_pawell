import 'package:auto_route/auto_route.dart';
import 'package:rich_project_pawell/rich/features/news/presentation/news_screen.dart';
import 'package:rich_project_pawell/rich/features/promo/presentation/promo_screen.dart';
part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: NewsScreen, initial: true),
    AutoRoute(page: PromoScreen),
  ],
)
class $AppRouter {}