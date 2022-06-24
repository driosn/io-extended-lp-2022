import 'package:flutter/material.dart';
import 'package:gdg_events_mobile/core/models/speaker.dart';
import 'package:gdg_events_mobile/ui/style/colors/gdg_colors.dart';

class SpeakerCard extends StatelessWidget {
  const SpeakerCard({
    Key? key,
    this.padding = const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
    required this.accentColor,
    this.height,
    this.width,
    this.onTap,
    required this.speaker,
  }) : super(key: key);

  final EdgeInsetsGeometry padding;
  final Color accentColor;
  final double? height;
  final double? width;
  final Speaker speaker;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Material(
        color: Colors.white,
        child: InkWell(
          onTap: onTap,
          splashColor: accentColor.withOpacity(0.4),
          child: Container(
            height: height,
            width: width,
            padding: padding,
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: accentColor,
                  width: 4,
                  style: BorderStyle.solid,
                ),
                left: BorderSide(
                  color: accentColor,
                  width: 0.5,
                  style: BorderStyle.solid,
                ),
                right: BorderSide(
                  color: accentColor,
                  width: 0.5,
                  style: BorderStyle.solid,
                ),
                bottom: BorderSide(
                  color: accentColor,
                  width: 0.5,
                  style: BorderStyle.solid,
                ),
              ),
            ),
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8.0,
                      ),
                      child: Container(
                        margin: const EdgeInsets.only(top: 30),
                        height: 120,
                        width: 90,
                        child: Image.asset(
                          speaker.imageUrl,
                          fit: BoxFit.cover,
                        ),
                      )),
                  const SizedBox(
                    width: 14,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '${speaker.names} ${speaker.lastName}',
                          style: const TextStyle(
                            color: GDGColors.textDark,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Container(
                          height: 4,
                          width: 80,
                          color: accentColor,
                        ),
                        const SizedBox(height: 12),
                        Text(
                          speaker.bio,
                          style: const TextStyle(
                            color: GDGColors.textDark,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
