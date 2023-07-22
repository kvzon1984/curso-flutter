import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: HomeScreens.name,
      path: '/',
      builder: (context, state) => const HomeScreens(),
    ),
    GoRoute(
      name: ButtonsScreen.name,
      path: '/buttons',
      builder: (context, state) => const ButtonsScreen(),
    ),
    GoRoute(
      name: CardsScreen.name,
      path: '/cards',
      builder: (context, state) => const CardsScreen(),
    ),
    GoRoute(
      name: AnimatedScreen.name,
      path: '/animated',
      builder: (context, state) => const AnimatedScreen(),
    ),
    GoRoute(
      name: AppTutorialScreen.name,
      path: '/tutorial',
      builder: (context, state) => const AppTutorialScreen(),
    ),
    GoRoute(
      name: InfiniteScreen.name,
      path: '/infinite',
      builder: (context, state) => const InfiniteScreen(),
    ),
    GoRoute(
      name: ProgressScreen.name,
      path: '/progress',
      builder: (context, state) => const ProgressScreen(),
    ),
    GoRoute(
      name: SnackbarScreen.name,
      path: '/snackbars',
      builder: (context, state) => const SnackbarScreen(),
    ),
    GoRoute(
      name: UiControlsScreen.name,
      path: '/ui-controls',
      builder: (context, state) => const UiControlsScreen(),
    ),
    GoRoute(
      name: CounterScreen.name,
      path: '/counter-river',
      builder: (context, state) => const CounterScreen(),
    ),
    GoRoute(
      name: ThemeChangerScreen.name,
      path: '/theme_changer',
      builder: (context, state) => const ThemeChangerScreen(),
    ),
  ],
);