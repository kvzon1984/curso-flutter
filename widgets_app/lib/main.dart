import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';
import 'config/theme/app_theme.dart';
import 'package:widgets_app/config/router/app_router.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MainApp()
    ));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    // final selectedColor = ref.watch(selectedIndexColorProvider);
    // final isDarkMode = ref.watch(isDarkModeProvider);

    final AppTheme appTheme = ref.watch( themeNotifierProvider );

    return MaterialApp.router(
      title: 'Flutter Widgets',
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: appTheme.getTheme(),
    );

    // SIN OCUOPAR EL themeNotifierProvider
    // return MaterialApp.router(
    //   title: 'Flutter Widgets',
    //   routerConfig: appRouter,
    //   debugShowCheckedModeBanner: false,
    //   theme: AppTheme(
    //     selectedColor: appTheme.selectedColor,
    //     isDarkMode: appTheme.isDarkMode
    //     ).getTheme(),
    // );
  }
}
