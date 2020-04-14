import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {
  final Color iconColor;
  final Color textColor;
  final IconData icon;
  final String label;
  final Color bg;
  final EdgeInsets marginSize;

  ReusableButton(
      {this.iconColor,
      this.icon,
      this.label,
      this.textColor,
      this.bg,
      this.marginSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: marginSize,
      alignment: Alignment.bottomRight,
      child: RaisedButton.icon(
        onPressed: () {},
        icon: Icon(icon, color: iconColor),
        label: Text(
          label,
          style: TextStyle(color: textColor),
        ),
        color: bg,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            20,
          ),
        ),
      ),
    );
  }
}
