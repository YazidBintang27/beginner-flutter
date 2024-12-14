import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:submission_beginner_flutter/widgets/card_communities.dart';

class Home extends StatelessWidget {
  final String? email;

  const Home({super.key, this.email});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> communities = List.generate(
      10,
      (index) => {
        'title': 'Community $index',
        'subtitle': 'Join us to make the world better! $index',
        'image': 'assets/images/noimage.jpg',
        'icon': 'assets/icons/login.svg',
      },
    );

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 68,
        centerTitle: true,
        title: Image.asset(
          'assets/images/GreenLeaf.png',
          width: 92,
          height: 64,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: SizedBox(
          width: MediaQuery.of(context).size.width / 1,
          height: MediaQuery.of(context).size.height / 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      'assets/images/unknownperson.jpg',
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      'Hello, $email',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      context.go('/onboarding');
                    },
                    child: SvgPicture.asset(
                      'assets/icons/logout.svg',
                      width: 24,
                      height: 24,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/heroimage.jpg',
                    width: MediaQuery.of(context).size.width / 1,
                    height: 190,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Text(
                'Communities',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: communities.length,
                  itemBuilder: (context, index) {
                    final community = communities[index];
                    return CardCommunities(
                        title: community['title']!,
                        subtitle: community['subtitle']!);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
