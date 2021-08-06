import 'package:auto_route/auto_route.dart';
import 'package:auto_route/annotations.dart';
import 'package:hello_world/features/Dashboard.dart';
import 'package:hello_world/features/Home.dart';
import 'package:hello_world/features/Login.dart';
import 'package:hello_world/features/SignUp.dart';
import 'package:hello_world/features/Wallet.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  AutoRoute(page: Login, path: "/login", initial: true),
  AutoRoute(page: SignUp, path: "/sign-up"),
  AutoRoute(
    page: Home,
  ),
  AutoRoute(
    page: Dashboard,
  ),
  AutoRoute(page: Wallet)
])
class $AppRouter {}
