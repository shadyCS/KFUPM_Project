import 'package:flutter/material.dart';
import 'package:kfupm_project/components/text_filed_container.dart';
import 'package:kfupm_project/constants.dart';

class RoundedinputField extends StatelessWidget {
  final String hinttext;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedinputField(
      {this.hinttext, this.icon = Icons.person, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hinttext,
          border: InputBorder.none,
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
        ),
      ),
    );
  }
}
