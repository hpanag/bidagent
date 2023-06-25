import 'package:bidagnet/common_widgets/app_bar/appBar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Landing'),
      ),
      body: Row(
        children: [
          Text('test'),
          ElevatedButton(
            onPressed: () => context.go('/agentRegister'),
            child: const Text('Agent Register'),
          ),
          ElevatedButton(
            onPressed: () => context.go('/customerRegister'),
            child: const Text('Customer Register'),
          ),
        ],
      ),
    );
  }
}
