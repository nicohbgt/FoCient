import 'package:flutter/material.dart';

import '../../../../app/shared/widgets/button/button.dart';
import '../../../../app/shared/widgets/checkbox/checkbox.dart';
import '../../../../app/shared/widgets/password field/password_field.dart';
import '../../../../app/shared/widgets/text field/app_text_field.dart';

import '../widgets/auth_footer.dart';
import '../widgets/auth_header.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();

  final _fullNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _rememberMe = false;

  @override
  void dispose() {
    _fullNameController.dispose();
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
                    controller: _fullNameController,
                    hintText: "Full Name",
                  ),
                  const SizedBox(height: 24),
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
                      AppCheckbox(
                        value: _rememberMe,
                        onChanged: (value) {
                          setState(() {
                            _rememberMe = value;
                          });
                        },
                      ),
                      const SizedBox(width: 8),
                      const Text("Remember Me"),
                    ],
                  ),
                  const SizedBox(height: 48),
                  AppButton(
                    text: "Sign Up",
                    onPressed: () {},
                  ),
                  const SizedBox(height: 24),
                  AuthFooter(
                    text: "Already have an account?",
                    actionText: "Sign In",
                    onTap: () {
                      // Navigate to Sign In
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
