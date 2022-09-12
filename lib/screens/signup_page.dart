import 'package:flutter/material.dart';
import 'package:flutter_test_go_router/login_state_info.dart';
import 'package:provider/provider.dart';

class SignUpPage extends StatelessWidget {

  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final LoginStateInfo loggedInStateInfo = Provider.of<LoginStateInfo>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('SignUp')),
      body: Center(
        child: ElevatedButton(
          onPressed: loggedInStateInfo.login,
          child: const Text('Sign Up'),
        ),
      ),
    );
  }
}
