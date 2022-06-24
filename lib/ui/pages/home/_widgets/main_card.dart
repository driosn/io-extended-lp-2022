import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    Key? key,
    this.padding = const EdgeInsets.symmetric(horizontal: 72, vertical: 40),
    required this.accentColor,
    required this.child,
    this.height,
    this.width,
    this.onTap,
  }) : super(key: key);

  final EdgeInsetsGeometry padding;
  final Color accentColor;
  final Widget child;
  final double? height;
  final double? width;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          right: 0,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  height: 4,
                  width: 4,
                  color: accentColor,
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  height: 4,
                  width: 4,
                  color: accentColor,
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  height: 4,
                  width: 4,
                  color: accentColor,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                  height: 4,
                  width: 4,
                  color: accentColor,
                ),
              ),
              Container(
                height: height,
                width: width,
                padding: padding,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(color: accentColor, width: 0.9),
                ),
                child: child,
              ),
            ],
          ),
        ),
        Container(
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
                  ),
                ),
                child: child,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
