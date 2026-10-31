import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// Opens a link (web, email or phone)
Future<void> openlink(String link) async {
  Uri uri = Uri.parse(link);
  await launchUrl(uri);
}


class contacttile extends StatelessWidget {
  final IconData icon;
  final String label;
  final String link;

  const contacttile({
    super.key,
    required this.icon,
    required this.label,
    required this.link,
  });

  void opentap() {
    openlink(link);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(icon),
        title: Text(label),
        onTap: opentap,
      ),
    );
  }
}

class contactpage extends StatelessWidget {
  const contactpage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16),
      children: [
        Text(
          "Contact Information",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 12),
        contacttile(
          icon: Icons.email,
          label: "spha.b.dlamini@icloud.com",
          link: "mailto:spha.b.dlamini@icloud.com",
        ),
        contacttile(
          icon: Icons.phone,
          label: "+268 78680406",
          link: "tel:+26878680406",
        ),
        contacttile(
          icon: Icons.business_center,
          label: "LinkedIn",
          link: "www.linkedin.com/in/sphamandla-dlamini-4a1514396",
        ),
        contacttile(
          icon: Icons.code,
          label: "GitHub",
          link: "https://github.com/Sphamandla-Blessing",
        ),
      ],
    );
  }
}