import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:train_time/features/schedule_view/presentation/pages/schedule_view.dart';
import 'package:train_time/features/train_search/presentation/pages/train_search.dart';
import 'package:train_time/shared/params/schedule_params.dart';

enum Routes {
  home('/'),
  scheduleView('/schedule_view');

  final String path;
  const Routes(this.path);
}

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: Routes.home.path,
      builder: (context, state) => TrainSearchPage(),
    ),
    GoRoute(
      path: Routes.scheduleView.path,
      pageBuilder: (context, state) => _slideTransitionPage(
        context: context,
        state: state,
        child: ScheduleViewPage(params: state.extra! as ScheduleParams),
      ),
    ),
  ],
);

Page<T> _slideTransitionPage<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: animation,
        child: SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(1.0, 0.0),
            end: Offset.zero,
          ).animate(CurvedAnimation(
            parent: animation,
            curve: Curves.easeInOut,
          )),
          child: child,
        ),
      );
    },
  );
}
