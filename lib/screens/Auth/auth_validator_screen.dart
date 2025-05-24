import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/screens/Auth/login/login_screen.dart';

class AuthValidatorScreen extends ConsumerStatefulWidget {
  const AuthValidatorScreen({super.key});

  @override
  ConsumerState<AuthValidatorScreen> createState() => _AuthValidatorScreenState();
}

class _AuthValidatorScreenState extends ConsumerState<AuthValidatorScreen> {
 
  @override
  Widget build(BuildContext context) {
   return LoginScreen();
  }
}