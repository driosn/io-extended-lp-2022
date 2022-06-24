import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gdg_events_mobile/core/models/speaker.dart';
import 'package:gdg_events_mobile/shared/static_data.dart';
import 'package:gdg_events_mobile/ui/pages/speakers/_widgets/speaker_card.dart';
import 'package:gdg_events_mobile/ui/style/colors/gdg_colors.dart';
import 'package:gdg_events_mobile/ui/widgets/gdg_events_scaffold.dart';

class SpeakersPage extends StatelessWidget {
  SpeakersPage({Key? key}) : super(key: key);

  static String route = '/speakers';

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
      title: 'Speakers',
      body: ListView.builder(
        itemCount: StaticData.speakers.length,
        itemBuilder: (context, index) {
          final speakerJson = StaticData.speakers[index];
          return SpeakerCard(
            accentColor: cardColors[Random().nextInt(cardColors.length)],
            speaker: Speaker.fromJson(speakerJson),
          );
        },
      ),
    );
  }
}
