import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:train_time/features/schedule_view/presentation/pages/schedule_page.dart';
import 'package:train_time/features/schedule_view/presentation/pages/train_details_page.dart';
import 'package:train_time/features/train_search/presentation/pages/train_search_page.dart';
import 'package:train_time/shared/params/schedule_params.dart';
import 'package:train_time/shared/params/train_details_params.dart';

enum Routes {
  home('/'),
  scheduleView('/schedule_view'),
  trainDetailsView('/train_details_view');

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
        child: SchedulePage(params: state.extra! as ScheduleParams),
      ),
    ),
    GoRoute(
      path: Routes.trainDetailsView.path,
      pageBuilder: (context, state) => _slideTransitionPage(
        context: context,
        state: state,
        child: TrainDetailsPage(params: state.extra! as TrainDetailsParams),
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
