import 'package:flutter/material.dart';
import 'package:technical_test_flutter/injection.dart';
import 'package:technical_test_flutter/src/features/users/presentation/bloc/user/user_bloc.dart';
import 'package:technical_test_flutter/src/features/users/presentation/pages/user_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => locator<UserBloc>(),
        child: const UserPage(),
      ),
    );
  }
}
