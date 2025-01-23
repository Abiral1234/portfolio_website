import 'package:go_router/go_router.dart';
import 'package:portfolio_webiste/main.dart';

import '../../sections/my_products/my_products.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => PortfolioWebsite(),
    ),
    GoRoute(
      path: '/products',
      builder: (context, state) => MyProducts(),
    ),
  ],
);
