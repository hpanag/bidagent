import 'package:bidagnet/features/agent_register/presentation/agentRegister.dart';
import 'package:bidagnet/features/customer_register/presentation/customerRegister.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'features/landing/presentation/landing.dart';

void main() => runApp(const MyApp());

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const Landing();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'agentRegister',
          builder: (BuildContext context, GoRouterState state) {
            return const AgentRegister();
          },
        ),
        GoRoute(
          path: 'customerRegister',
          builder: (BuildContext context, GoRouterState state) {
            return const CustomerRegister();
          },
        ),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}
