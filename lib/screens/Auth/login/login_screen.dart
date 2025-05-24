import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/screens/Auth/provider/auth_login_validator_provider.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {

  bool _isPasswordVisible = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context ) {
   
  final passwordValidator = ref.read(passwordValidatorProvider);
  final emailValidator = ref.read(emailValidatorProvider);


    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              child: Container(
                padding: const EdgeInsets.all(32.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment:
                        MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const FlutterLogo(size: 120.0),
                      Text(
                        'ingresar Credenciales para continuar',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 40),
                      TextFormField(
                        controller: _emailController,
                        validator:emailValidator,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          hintText: 'Ingrese su correo',
                          hintStyle: TextStyle(
                            color: Colors.grey[600],
                          ),
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        controller: _passwordController,
                        validator: passwordValidator,
                        obscureText: !_isPasswordVisible,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          hintText: 'Ingrese su contraseña',
                          hintStyle: TextStyle(
                            color: Colors.grey[500],
                          ),
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.grey,
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {

                              setState(() {
                                _isPasswordVisible = !_isPasswordVisible;
                              });
                            },
                            
                            icon: Icon(!_isPasswordVisible ? Icons.visibility_off_outlined : Icons.visibility_outlined),
                            ),
                          ),
                        ),
                  
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                            if (_formKey.currentState?.validate() ?? false) {
                              
                            _emailController.text;
                            _passwordController.text;
                            // Implement login logic here
                          }
                        },
                        child: const Text('Iniciar Sesión'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
