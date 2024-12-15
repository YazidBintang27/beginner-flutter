import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardCommunities extends StatelessWidget {
  final String title;
  final String subtitle;

  const CardCommunities({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Card(
        color: Colors.white,
        elevation: 0,
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 0),
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              'assets/images/noimage.jpg',
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
          ),
          title: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
          subtitle: Text(
            subtitle,
            style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 12),
          ),
          trailing: SvgPicture.asset(
            'assets/icons/login.svg',
            width: 24,
            height: 24,
          ),
        ),
      ),
    );
  }
}
