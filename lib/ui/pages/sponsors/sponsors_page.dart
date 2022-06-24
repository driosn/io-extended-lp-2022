import 'package:flutter/material.dart';
import 'package:gdg_events_mobile/shared/launch_url_helper.dart';
import 'package:gdg_events_mobile/shared/static_data.dart';
import 'package:gdg_events_mobile/ui/widgets/gdg_events_scaffold.dart';

class SponsorsPage extends StatelessWidget {
  const SponsorsPage({Key? key}) : super(key: key);

  static String route = '/sponsors';

  @override
  Widget build(BuildContext context) {
    final sponsors = StaticData.sponsors;
    return GDGEventsScaffold(
      title: 'Sponsors',
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: SingleChildScrollView(
            child: Wrap(
              alignment: WrapAlignment.center,
              runAlignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              runSpacing: 20,
              children: sponsors.map((Map<String, dynamic> sponsor) {
                return _sponsorCard(sponsor);
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }

  Widget _sponsorCard(Map<String, dynamic> data) {
    final name = data['name'];
    final description = data['description'];
    final linkUrl = data['linkUrl'];
    final assetImage = data['imageUrl'];
    return Tooltip(
      message: '\n$name - $description\n',
      child: GestureDetector(
        onTap: () {
          LaunchUrlHelper.launch(linkUrl);
        },
        child: Container(
          width: 180,
          color: Colors.white,
          child: Image.asset(assetImage),
        ),
      ),
    );
  }
}
