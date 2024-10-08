import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_skeleton_application_improved/providers/supabase_auth_provider.dart';
import 'package:flutter_skeleton_application_improved/views/signup_view.dart';

class LoginView extends ConsumerStatefulWidget {
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginViewState();
  static const routeName = '/login';

  const LoginView({super.key});
}

class _LoginViewState extends ConsumerState<LoginView> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(labelText: 'Email'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(labelText: 'Password'),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  final devAccount = dotenv.get('DEV_ACCOUNT', fallback: "");
                  final devPassword = dotenv.get('DEV_PASSWORD', fallback: "");
                  String email = (_emailController.text != "")
                      ? _emailController.text
                      : devAccount;
                  String password = (_passwordController.text != "")
                      ? _passwordController.text
                      : devPassword;

                  final jsend = await ref
                      .read(supabaseAuthProvider.notifier)
                      .signIn(email: email, password: password);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                          jsend.message ?? 'Logged in! No message available'),
                    ),
                  );
                },
                child: const Text('Login'),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("No registered? "),
                  GestureDetector(
                    onTap: () {
                      Navigator.restorablePushNamed(
                          context, SignupView.routeName);
                    },
                    child: const Text(
                      "Sign up now!",
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
