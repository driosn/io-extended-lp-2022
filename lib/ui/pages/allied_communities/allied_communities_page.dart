import 'package:flutter/material.dart';
import 'package:gdg_events_mobile/shared/launch_url_helper.dart';
import 'package:gdg_events_mobile/shared/static_data.dart';
import 'package:gdg_events_mobile/ui/widgets/gdg_events_scaffold.dart';

class AlliedCommunities extends StatelessWidget {
  const AlliedCommunities({Key? key}) : super(key: key);

  static String route = '/allied_communities';

  @override
  Widget build(BuildContext context) {
    final alliedCommunities = StaticData.alliedCommunities;
    return GDGEventsScaffold(
      title: 'Comunidades Aliadas',
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: SingleChildScrollView(
            child: Wrap(
              alignment: WrapAlignment.center,
              runAlignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              runSpacing: 20,
              children: alliedCommunities.map((Map<String, dynamic> community) {
                return _alliedCommunityCard(community);
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }

  Widget _alliedCommunityCard(Map<String, dynamic> data) {
    final name = data['name'];
    final linkUrl = data['linkUrl'];
    final assetImage = data['imageUrl'];
    return Tooltip(
      message: '$name',
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
