import 'package:flutter/material.dart';

import '../constants.dart';

class RoundedIconButton extends StatelessWidget {
  const RoundedIconButton({super.key, required this.icon, this.onPress});
  final IconData icon;
  final Function? onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {
        onPress!();
      },
      constraints: const BoxConstraints(minWidth: 54.0, minHeight: 54.0),
      shape: const CircleBorder(),
      fillColor: kRoundedIconButtonColor,
      child: Icon(icon),
    );
  }
}
