import 'package:flutter/material.dart';
import 'package:gdg_events_mobile/ui/pages/agenda/agenda_page.dart';
import 'package:gdg_events_mobile/ui/pages/allied_communities/allied_communities_page.dart';
import 'package:gdg_events_mobile/ui/pages/home/home_page.dart';
import 'package:gdg_events_mobile/ui/pages/speakers/speakers_page.dart';
import 'package:gdg_events_mobile/ui/pages/sponsors/sponsors_page.dart';
import 'package:gdg_events_mobile/ui/pages/team/team_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'I/O Extended La Paz 2022',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (_) => HomePage(),
        AgendaPage.route: (_) => AgendaPage(),
        SpeakersPage.route: (_) => SpeakersPage(),
        TeamPage.route: (_) => TeamPage(),
        SponsorsPage.route: (_) => SponsorsPage(),
        AlliedCommunities.route: (_) => AlliedCommunities(),
      },
    );
  }
}
