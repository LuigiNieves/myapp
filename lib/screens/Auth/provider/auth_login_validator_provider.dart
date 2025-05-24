import 'package:flutter_riverpod/flutter_riverpod.dart';

final passwordValidatorProvider = Provider<String? Function(String?)?>((ref) {
  return (value) {
    if (value == null || value.isEmpty) {
      return 'Password cannot be empty';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters long';
    }
    return null;
  };
});
final emailValidatorProvider = Provider<String? Function(String?)?>((ref) {
  return (value) {
    if (value == null || value.isEmpty) {
      return 'Ingresa un correo';
    }
 
    return null;
  };
});