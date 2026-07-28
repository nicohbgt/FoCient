import 'package:flutter/material.dart';

import '../../../../app/shared/widgets/button/button.dart';
import '../../../../app/shared/widgets/checkbox/checkbox.dart';
import '../../../../app/shared/widgets/password field/password_field.dart';
import '../../../../app/shared/widgets/text field/text_field.dart';

import '../widgets/auth_footer.dart';
import '../widgets/auth_header.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _rememberMe = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 32,
            ),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const AuthHeader(
                    title: "Let's start your journey",
                    subtitle: "Create your account to start your journey",
                  ),
                  const SizedBox(height: 64),
                  AppTextField(
                    controller: _emailController,
                    hintText: "Email Address",
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 24),
                  AppPasswordField(
                    controller: _passwordController,
                    hintText: "Password",
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            AppCheckbox(
                              value: _rememberMe,
                              onChanged: (value) {
                                setState(() {
                                  _rememberMe = value ?? false;
                                });
                              },
                            ),
                            const SizedBox(width: 8),
                            const Text("Remember Me"),
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          // TODO: Forgot Password
                        },
                        child: const Text("Forgot Password?"),
                      ),
                    ],
                  ),
                  const SizedBox(height: 48),
                  AppButton(
                    text: "Sign In",
                    onPressed: () {},
                  ),
                  const SizedBox(height: 24),
                  AuthFooter(
                    text: "Don't have an account?",
                    actionText: "Sign Up",
                    onTap: () {
                      // Navigate to Sign Up
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
