import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:submission_beginner_flutter/widgets/button_fill.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SizedBox(
          width: MediaQuery.of(context).size.width / 1,
          height: MediaQuery.of(context).size.height / 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Image.asset(
                          'assets/images/eco.png',
                          width: 320,
                          height: 210,
                        ),
                      ),
                      const Text(
                        'Learn. Act. Inspire others to live green.',
                        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                      const SizedBox(height: 14,),
                      const Text(
                        'Let’s become part of a growing global network committed to protecting our planet, one green action at a time.',
                        style: TextStyle(fontWeight: FontWeight.normal, fontSize: 12),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              ButtonFill(text: 'Let\'s go!', onPressed: () => context.push('/register')),
              const SizedBox(height: 32,)
            ],
          ),
        ),
      ),
    );
  }
}