import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resume_app/components/socials_box.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import 'package:resume_app/constants.dart';
import 'package:resume_app/theme_provider.dart';

class ResumeScreen extends StatefulWidget {
  const ResumeScreen({Key? key}) : super(key: key);

  @override
  State<ResumeScreen> createState() => _ResumeScreenState();
}

class _ResumeScreenState extends State<ResumeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xffF7F9F9),
      backgroundColor: Theme.of(context).brightness == Brightness.dark
          ? KPrimaryColor
          : KSecondaryColor,
      appBar: AppBar(
        elevation: 0,
        // backgroundColor: Color(0xffF7F9F9),
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? KPrimaryColor
            : KSecondaryColor,
        title: Text(
          AppLocalizations.of(context)!.title,
          style: TextStyle(
              color: Theme.of(context).brightness == Brightness.dark
                  ? KSecondaryColor
                  : KPrimaryColor,
              fontSize: 35,
              fontWeight: FontWeight.w800),
        ),

        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: ListView(
            children: [
              Consumer<ThemeProvider>(builder: (context, provider, child) {
                return DropdownButton<String>(
                  value: provider.currentTheme,
                  items: [
                    DropdownMenuItem<String>(
                        value: 'system',
                        child: Text(
                          'system',
                          style: Theme.of(context).textTheme.headline6,
                        )),
                    DropdownMenuItem<String>(
                        value: 'light',
                        child: Text(
                          'light',
                          style: Theme.of(context).textTheme.headline6,
                        )),
                    DropdownMenuItem<String>(
                        value: 'dark',
                        child: Text(
                          'dark',
                          style: Theme.of(context).textTheme.headline6,
                        )),
                  ],
                  // style: Theme.of(context).textTheme.headline6,
                  onChanged: (String? value) {
                    provider.changeTheme(value ?? 'system');
                  },
                );
              }),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: ListTile(
                  leading: Image.asset('images/profile.jpeg'),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 8),
                      Text(
                        ' Echatah KingDavid',
                        style: TextStyle(
                            color:
                                Theme.of(context).brightness == Brightness.dark
                                    ? KSecondaryColor
                                    : KPrimaryColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                  subtitle: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ' Flutter mobile developer',
                        style: TextStyle(
                            color:
                                Theme.of(context).brightness == Brightness.dark
                                    ? KSecondaryColor
                                    : KPrimaryColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color:
                                Theme.of(context).brightness == Brightness.dark
                                    ? KSecondaryColor
                                    : KPrimaryColor,
                          ),
                          Text(
                            'Abuja, Nigeria',
                            style: TextStyle(
                                color: Theme.of(context).brightness ==
                                        Brightness.dark
                                    ? KSecondaryColor
                                    : KPrimaryColor,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Text(
                AppLocalizations.of(context)!.about,
                style: TextStyle(
                    color: Theme.of(context).brightness == Brightness.dark
                        ? KSecondaryColor
                        : KPrimaryColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 50),
              Text(
                AppLocalizations.of(context)!.social,
                style: TextStyle(
                    color: Theme.of(context).brightness == Brightness.dark
                        ? KSecondaryColor
                        : KPrimaryColor,
                    fontSize: 17,
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    child: SocialsContainer(
                      socialLogo: 'linkedin',
                      socialName: 'Linkedin',
                      urlLink:
                          'https://www.linkedin.com/in/kingdavid-echatah-234345209/',
                      socialHandle: 'Echatah KingDavid',
                    ),
                  ),
                  Flexible(
                    child: SocialsContainer(
                      socialLogo: 'twitter',
                      socialName: 'Twitter',
                      urlLink:
                          'https://www.linkedin.com/in/kingdavid-echatah-234345209/',
                      socialHandle: 'kingdavid_ee',
                    ),
                  ),
                  Flexible(
                    child: SocialsContainer(
                      socialLogo: 'github',
                      socialName: 'Github',
                      urlLink:
                          'https://www.linkedin.com/in/kingdavid-echatah-234345209/',
                      socialHandle: 'KingDavid360',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 55),
              Text(
                AppLocalizations.of(context)!.skill,
                style: TextStyle(
                    color: Theme.of(context).brightness == Brightness.dark
                        ? KSecondaryColor
                        : KPrimaryColor,
                    fontSize: 17,
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    child: SocialsContainer(
                      socialLogo: 'flutter',
                      socialName: 'Flutter',
                      socialHandle: '',
                    ),
                  ),
                  Flexible(
                    child: SocialsContainer(
                      socialLogo: 'android',
                      socialName: 'Native android',
                      socialHandle: '',
                    ),
                  ),
                  Flexible(
                    child: SocialsContainer(
                      socialLogo: 'java**',
                      socialName: 'Java',
                      socialHandle: '',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 55),
              Text(
                AppLocalizations.of(context)!.company,
                style: TextStyle(
                    color: Theme.of(context).brightness == Brightness.dark
                        ? KSecondaryColor
                        : KPrimaryColor,
                    fontSize: 17,
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(height: 25),
              Text(
                AppLocalizations.of(context)!.offer,
                // '     I am a young and developing software engineer, who has the '
                // 'eagerness for problem solving. I also have a very curious'
                // ' mind because of my eagerness to improve and develop myself.'
                // ' And with this qualities of mine I believe I would be able to'
                // ' increase the productivity and development of your company,'
                // ' and that\'s not just from my personal effort but also from'
                // 'my interaction with my colleagues, because I am well known'
                // 'for my people skills which help in self development and development.',
                style: TextStyle(
                    color: Theme.of(context).brightness == Brightness.dark
                        ? KSecondaryColor
                        : KPrimaryColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
