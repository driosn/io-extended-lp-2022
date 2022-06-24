import 'package:flutter/material.dart';
import 'package:gdg_events_mobile/ui/pages/agenda/agenda_page.dart';
import 'package:gdg_events_mobile/ui/pages/allied_communities/allied_communities_page.dart';
import 'package:gdg_events_mobile/ui/pages/home/_widgets/main_card.dart';
import 'package:gdg_events_mobile/ui/pages/speakers/speakers_page.dart';
import 'package:gdg_events_mobile/ui/pages/sponsors/sponsors_page.dart';
import 'package:gdg_events_mobile/ui/pages/team/team_page.dart';
import 'package:gdg_events_mobile/ui/style/colors/gdg_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'I/O Extended La Paz 2022',
          style: TextStyle(
            color: GDGColors.textDark,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 3,
            width: double.infinity,
            color: GDGColors.accentBlue,
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    GDGColors.primaryDarkColor,
                    GDGColors.primaryColor,
                    GDGColors.primaryLightColor
                  ],
                  stops: [
                    0.4,
                    0.7,
                    0.8,
                  ],
                ),
              ),
              child: _Body(),
            ),
          ),
        ],
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  final optionPadding =
      const EdgeInsets.symmetric(horizontal: 40, vertical: 20);

  final double optionHeight = 100;
  final double optionWidth = 150;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 32,
          ),
          child: Column(
            children: [
              MainCard(
                  accentColor: GDGColors.accentYellow,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 70,
                        width: 70,
                        child: Image.asset('assets/images/IOLogo.jpg'),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        'I/O Extended\nLa Paz 2022',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.deepPurpleAccent.shade700),
                      ),
                    ],
                  )),
              const SizedBox(
                height: 24,
              ),
              Text(
                'Bienvenid@ a I/O Extended\nLa Paz 2022',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: GDGColors.textLight,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                'Es un evento donde se intentará replicar el Google I/O a nivel local, la magia que se percibe y genera en esta celebración tan esperada del año, por los desarrolladores, diseñadores y distribuidores que utilizan tecnologías Google.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: GDGColors.textLight,
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                'Con el Google I/O Extended, el GDG La Paz se une a más de 400 ciudades que replicarán localmente la experiencia de innovación libre, por segundo año consecutivo que promueve Google.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: GDGColors.textLight,
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 20),
              Wrap(
                alignment: WrapAlignment.center,
                children: [
                  MainCard(
                    height: optionHeight,
                    width: optionWidth,
                    padding: optionPadding,
                    accentColor: GDGColors.accentRed,
                    child: _optionContent(
                      iconData: Icons.schedule,
                      title: 'Agenda',
                      iconColor: GDGColors.accentRed,
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, AgendaPage.route);
                    },
                  ),
                  MainCard(
                    height: optionHeight,
                    width: optionWidth,
                    padding: optionPadding,
                    accentColor: GDGColors.accentGreen,
                    child: _optionContent(
                      iconData: Icons.person,
                      title: 'Speakers',
                      iconColor: GDGColors.accentGreen,
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, SpeakersPage.route);
                    },
                  ),
                  MainCard(
                    height: optionHeight,
                    width: optionWidth,
                    padding: optionPadding,
                    accentColor: GDGColors.accentYellow,
                    child: _optionContent(
                      iconData: Icons.people,
                      title: 'Equipo',
                      iconColor: GDGColors.accentYellow,
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, TeamPage.route);
                    },
                  ),
                  MainCard(
                    height: optionHeight,
                    width: optionWidth,
                    padding: optionPadding,
                    accentColor: GDGColors.accentPurple,
                    child: _optionContent(
                      iconData: Icons.schedule,
                      title: 'Sponsors',
                      iconColor: GDGColors.accentPurple,
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, SponsorsPage.route);
                    },
                  ),
                  MainCard(
                    height: optionHeight,
                    width: optionWidth * 2 + 20,
                    padding: optionPadding,
                    accentColor: GDGColors.accentBlue,
                    child: _optionContent(
                      iconData: Icons.flag,
                      title: 'Comunidades Aliadas',
                      iconColor: GDGColors.accentBlue,
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, AlliedCommunities.route);
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _optionContent(
      {required IconData iconData,
      required String title,
      required Color iconColor}) {
    return Column(
      children: [
        Icon(
          iconData,
          color: iconColor,
        ),
        const SizedBox(height: 12),
        Text(
          title,
          style: const TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
