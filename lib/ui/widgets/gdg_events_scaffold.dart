import 'package:flutter/material.dart';
import 'package:gdg_events_mobile/ui/style/colors/gdg_colors.dart';

class GDGEventsScaffold extends StatelessWidget {
  const GDGEventsScaffold({
    required this.title,
    required this.body,
    Key? key,
  }) : super(key: key);

  final String title;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: GDGColors.textDark,
        ),
        title: Text(
          title,
          style: const TextStyle(
            color: GDGColors.textDark,
          ),
        ),
      ),
      body: body,
    );
  }
}
