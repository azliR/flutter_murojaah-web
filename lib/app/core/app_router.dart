import 'package:auto_route/auto_route.dart';
import 'package:murojaah_web/about/view/about_page.dart';
import 'package:murojaah_web/auth/view/sign_in_page.dart';
import 'package:murojaah_web/home_wrapper/view/home_wrapper_page.dart';
import 'package:murojaah_web/listen/view/listen_page.dart';
import 'package:murojaah_web/recite/view/recite_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      path: '/',
      page: HomeWrapperRoute.page,
      children: [
        AutoRoute(
          path: 'recite',
          page: ReciteRoute.page,
        ),
        AutoRoute(
          path: 'listen',
          page: ListenRoute.page,
        ),
        AutoRoute(
          path: 'about',
          page: AboutRoute.page,
        ),
      ],
    ),
    AutoRoute(
      path: '/in',
      page: SignInRoute.page,
    ),
  ];
}
