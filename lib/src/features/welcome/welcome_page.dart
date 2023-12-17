import 'package:auth_page_demo/src/commons/widgets/buttons/action_button.dart';
import 'package:auth_page_demo/src/commons/widgets/buttons/action_text_button.dart';
import 'package:auth_page_demo/src/features/auth/login_page.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 36,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset("assets/welcome_image.png"),
              const SizedBox(height: 24),
              Text(
                "Discover Your Dream Job Here",
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              Text(
                "Explore all the existing job roles based on your interest and study major",
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 36),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ActionButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                      );
                    },
                    text: "Login",
                  ),
                  const SizedBox(width: 24),
                  ActionTextButton(
                    onPressed: () {},
                    text: "Register",
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
