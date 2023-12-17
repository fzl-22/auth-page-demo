import 'package:auth_page_demo/src/commons/widgets/buttons/action_button.dart';
import 'package:auth_page_demo/src/commons/widgets/fields/text_input_field.dart';
import 'package:auth_page_demo/src/features/auth/validator.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 36,
            ),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    "Login Here",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    "Welcome back you've been missed!",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 24),
                  TextInputField(
                    controller: emailController,
                    hintText: "Email",
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Harap isikan email";
                      }

                      if (!Validator.emailIsValid(value)) {
                        return "Email Tidak Valid";
                      }

                      return null;
                    },
                  ),
                  const SizedBox(height: 12),
                  TextInputField.password(
                    controller: passwordController,
                    hintText: "Password",
                    keyboardType: TextInputType.visiblePassword,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Harap isikan password";
                      }

                      return null;
                    },
                  ),
                  const SizedBox(height: 36),
                  ActionButton(
                    text: "Login",
                    onPressed: () {
                      formKey.currentState!.save();

                      if (!formKey.currentState!.validate()) {
                        return;
                      }

                      // kasih regex

                      // print("LOGIN");
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
