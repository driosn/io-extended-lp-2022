import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gdg_events_mobile/core/models/talk.dart';
import 'package:gdg_events_mobile/shared/static_data.dart';
import 'package:gdg_events_mobile/ui/pages/agenda/_widgets/talk_card.dart';
import 'package:gdg_events_mobile/ui/style/colors/gdg_colors.dart';
import 'package:gdg_events_mobile/ui/widgets/gdg_events_scaffold.dart';

class AgendaPage extends StatelessWidget {
  AgendaPage({Key? key}) : super(key: key);

  static String route = '/agenda';

  final cardColors = [
    GDGColors.accentBlue,
    GDGColors.accentGreen,
    GDGColors.accentGrey,
    GDGColors.accentPurple,
    GDGColors.accentYellow,
    GDGColors.accentRed
  ];

  @override
  Widget build(BuildContext context) {
    return GDGEventsScaffold(
      title: 'Agenda',
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            const TabBar(
              labelColor: GDGColors.textDark,
              tabs: [
                Tab(
                  text: 'Charlas',
                ),
                Tab(text: 'Codelabs'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  _talksAgenda(),
                  _codelabsAgenda(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _talksAgenda() {
    final talks =
        StaticData.talks.where((talk) => talk['type'] == 'talk').toList();
    return ListView.builder(
      itemCount: talks.length,
      itemBuilder: (context, index) {
        return TalkCard(
          accentColor: cardColors[Random().nextInt(cardColors.length)],
          talk: Talk.fromJson(talks[index]),
        );
      },
    );
  }

  Widget _codelabsAgenda() {
    final codelabs =
        StaticData.talks.where((talk) => talk['type'] == 'codelab').toList();
    return ListView.builder(
      itemCount: codelabs.length,
      itemBuilder: (context, index) {
        return TalkCard(
          accentColor: cardColors[Random().nextInt(cardColors.length)],
          talk: Talk.fromJson(codelabs[index]),
        );
      },
    );
  }
}
