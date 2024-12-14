import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:submission_beginner_flutter/widgets/button_fill.dart';
import 'package:submission_beginner_flutter/widgets/button_stroke.dart';
import 'package:submission_beginner_flutter/widgets/text_input.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 120,
                    ),
                    Center(
                      child: Image.asset(
                        'assets/images/GreenLeaf.png',
                        width: 150,
                        height: 100,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Text(
                      'Your name',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    TextInput(
                      hintText: 'John Doe',
                      controller: _nameController,
                    ),
                    const Text(
                      'Your email address',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    TextInput(
                      hintText: 'john.doe@example.com',
                      controller: _emailController,
                    ),
                    const Text(
                      'Your password',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    TextInput(
                      hintText: 'min. 8 characters',
                      controller: _passwordController,
                    ),
                    ButtonFill(
                      text: 'Continue',
                      onPressed: () {
                        context.go('/login');
                      },
                    ),
                    const Spacer(),
                    ButtonStroke(
                        text: 'Login',
                        onPressed: () {
                          context.go('/login');
                        })
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
