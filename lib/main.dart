import 'package:flutter/material.dart';
import 'package:flutter_test_go_router/login_state_info.dart';
import 'package:flutter_test_go_router/routes/route.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const RealApp());
}

class RealApp extends StatefulWidget {
  const RealApp({Key? key}) : super(key: key);

  @override
  State<RealApp> createState() => _RealAppState();
}

class _RealAppState extends State<RealApp> {

  final _loggedInStateInfo = LoginStateInfo();
  late final _router = routerGenerator(_loggedInStateInfo);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => _loggedInStateInfo),
        ],
      child: MaterialApp.router(
          routeInformationProvider: _router.routeInformationProvider,
          routeInformationParser: _router.routeInformationParser,
          routerDelegate: _router.routerDelegate)
    );
  }
}
