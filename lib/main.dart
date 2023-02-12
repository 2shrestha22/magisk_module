import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:magisk_module/models/repo_info.dart';
import 'package:magisk_module/ui/detail_page.dart';
import 'package:magisk_module/ui/home_page.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

// GoRouter configuration
final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
      routes: [
        GoRoute(
          path: 'detailsPage',
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              child: DetailsPage(repoInfo: state.extra as RepoInfo),
              fullscreenDialog: true,
              transitionsBuilder: (
                context,
                animation,
                secondaryAnimation,
                child,
              ) {
                return FadeScaleTransition(
                  animation: animation,
                  child: child,
                );
              },
            );
          },
        ),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      title: 'Magisk Module',
      routerConfig: _router,
    );
  }
}
