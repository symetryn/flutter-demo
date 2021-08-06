// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../../features/Dashboard.dart' as _i6;
import '../../features/Home.dart' as _i5;
import '../../features/Login.dart' as _i3;
import '../../features/SignUp.dart' as _i4;
import '../../features/Wallet.dart' as _i7;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args =
              data.argsAs<LoginRouteArgs>(orElse: () => const LoginRouteArgs());
          return _i3.Login(key: args.key);
        }),
    SignUpRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<SignUpRouteArgs>(
              orElse: () => const SignUpRouteArgs());
          return _i4.SignUp(key: args.key);
        }),
    HomeRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args =
              data.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
          return _i5.Home(key: args.key);
        }),
    DashboardRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i6.Dashboard();
        }),
    WalletRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<WalletRouteArgs>(
              orElse: () => const WalletRouteArgs());
          return _i7.Wallet(key: args.key);
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig('/#redirect',
            path: '/', redirectTo: '/login', fullMatch: true),
        _i1.RouteConfig(LoginRoute.name, path: '/login'),
        _i1.RouteConfig(SignUpRoute.name, path: '/sign-up'),
        _i1.RouteConfig(HomeRoute.name, path: '/Home'),
        _i1.RouteConfig(DashboardRoute.name, path: '/Dashboard'),
        _i1.RouteConfig(WalletRoute.name, path: '/Wallet')
      ];
}

class LoginRoute extends _i1.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({_i2.Key? key})
      : super(name, path: '/login', args: LoginRouteArgs(key: key));

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final _i2.Key? key;
}

class SignUpRoute extends _i1.PageRouteInfo<SignUpRouteArgs> {
  SignUpRoute({_i2.Key? key})
      : super(name, path: '/sign-up', args: SignUpRouteArgs(key: key));

  static const String name = 'SignUpRoute';
}

class SignUpRouteArgs {
  const SignUpRouteArgs({this.key});

  final _i2.Key? key;
}

class HomeRoute extends _i1.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({_i2.Key? key})
      : super(name, path: '/Home', args: HomeRouteArgs(key: key));

  static const String name = 'HomeRoute';
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final _i2.Key? key;
}

class DashboardRoute extends _i1.PageRouteInfo {
  const DashboardRoute() : super(name, path: '/Dashboard');

  static const String name = 'DashboardRoute';
}

class WalletRoute extends _i1.PageRouteInfo<WalletRouteArgs> {
  WalletRoute({_i2.Key? key})
      : super(name, path: '/Wallet', args: WalletRouteArgs(key: key));

  static const String name = 'WalletRoute';
}

class WalletRouteArgs {
  const WalletRouteArgs({this.key});

  final _i2.Key? key;
}
