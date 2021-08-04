import 'package:auto_route/auto_route.dart';
import 'package:auto_route/annotations.dart';
import 'package:hello_world/features/Login.dart';
import 'package:hello_world/features/SignUp.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  CustomRoute(page: Login, initial: true),
  CustomRoute(page: SignUp, initial: true)
])
class $AppRouter {}
