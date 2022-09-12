import 'package:flutter/material.dart';
import 'package:flutter_test_go_router/login_state_info.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../routes/route.dart';

class LoginPage extends StatelessWidget {

  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final LoginStateInfo loggedInStateInfo = Provider.of<LoginStateInfo>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('LogIn')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: loggedInStateInfo.login,
              child: const Text('Log In'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => GoRouter.of(context).go(Routes.signup),
              child: const Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
