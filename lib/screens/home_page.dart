import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../routes/route.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () => context.go("/home/home-next"),
            child: child),
      ),
    );
  }
}
