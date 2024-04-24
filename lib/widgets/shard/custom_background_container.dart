import 'package:flutter/material.dart';

class CustomBackGoundContainer extends StatelessWidget {
  final Widget child;
  final double? padding;
  const CustomBackGoundContainer({
    Key? key,
    required this.child,
     this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding:  EdgeInsets.all(padding ??   20),
        decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
                side: const BorderSide(
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(12))),
        child: child);
  }
}