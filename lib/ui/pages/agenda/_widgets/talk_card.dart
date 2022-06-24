import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gdg_events_mobile/core/models/talk.dart';
import 'package:gdg_events_mobile/ui/style/colors/gdg_colors.dart';

class TalkCard extends StatelessWidget {
  const TalkCard({
    Key? key,
    this.padding = const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
    required this.accentColor,
    this.height,
    this.width,
    this.onTap,
    required this.talk,
  }) : super(key: key);

  final EdgeInsetsGeometry padding;
  final Color accentColor;
  final double? height;
  final double? width;
  final VoidCallback? onTap;
  final Talk talk;

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
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.grey,
                      backgroundImage: AssetImage(
                        talk.imageUrl,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          talk.title,
                          style: TextStyle(
                            color: GDGColors.textDark,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          talk.speaker.completeName,
                          style: TextStyle(
                            color: accentColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          talk.description,
                          style: TextStyle(
                            color: GDGColors.textHint,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: Text(
                      talk.hour,
                      style: TextStyle(
                        color: GDGColors.textDark,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
