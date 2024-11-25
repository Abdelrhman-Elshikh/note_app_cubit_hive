import 'package:go_router/go_router.dart';
import 'package:note_app_cubit_hive/core/utils/routers/routes.dart';
import 'package:note_app_cubit_hive/feature/home/view/home_view.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: KHomeView,
    builder: (context, state) => const HomeView(),
  ),
]);