import 'package:flutter/material.dart';

import '../constants.dart';
// import 'package:url_launcher/url_launcher.dart';

class SocialsContainer extends StatelessWidget {
  final String socialLogo;
  final String socialName;
  final String socialHandle;
  final String? urlLink;

  const SocialsContainer(
      {super.key,
      required this.socialLogo,
      required this.socialName,
      this.urlLink,
      required this.socialHandle});

  // launchURLBrowser() async {
  //   var url = Uri.parse(urlLink);
  //   if (await canLaunchUrl(url)) {
  //     await launchUrl(url);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // launchURLBrowser();
      },
      child: Container(
        height: 130,
        width: 100,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.white24
                    : Color(0xffD6D6D6),
                offset: const Offset(
                  0,
                  5.0,
                ),
                blurRadius: 0,
                spreadRadius: 6.0,
              ),
            ],
            color: Theme.of(context).brightness == Brightness.dark
                ? KPrimaryColor
                : Colors.white,
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Theme.of(context).brightness == Brightness.dark
                  ? KSecondaryColor
                  : KSecondaryColor,
              child: Image.asset('images/$socialLogo.png'),
            ),
            Text(
              socialName,
              style: TextStyle(
                  color: Theme.of(context).brightness == Brightness.dark
                      ? KSecondaryColor
                      : KPrimaryColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Text(
              socialHandle,
              style: TextStyle(
                  color: Theme.of(context).brightness == Brightness.dark
                      ? KSecondaryColor
                      : KPrimaryColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
