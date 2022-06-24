import 'package:flutter/material.dart';
import 'package:gdg_events_mobile/shared/static_data.dart';
import 'package:gdg_events_mobile/ui/widgets/gdg_events_scaffold.dart';

class TeamPage extends StatelessWidget {
  const TeamPage({Key? key}) : super(key: key);

  static String route = '/team';

  @override
  Widget build(BuildContext context) {
    final teamMembers = StaticData.team;
    return GDGEventsScaffold(
      title: 'Equipo',
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: SingleChildScrollView(
            child: Wrap(
              alignment: WrapAlignment.center,
              runAlignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              runSpacing: 20,
              children: teamMembers.map((Map<String, dynamic> member) {
                return _teamMemberCard(member);
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }

  Widget _teamMemberCard(Map<String, dynamic> data) {
    final name = data['name'];
    final assetImage = data['imageUrl'];
    return SizedBox(
      height: 150,
      width: 180,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(assetImage),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.grey.shade700,
            ),
          )
        ],
      ),
    );
  }
}
