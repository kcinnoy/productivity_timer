import 'package:flutter/material.dart';

typedef CallbackSetting = void Function(String, int);

class ProductivityButton extends StatelessWidget {
  late final Color color;
  late final String text;
  late final double? size;
  late final VoidCallback onPressed;

  ProductivityButton({
    required this.color,
    required this.text,
    required this.onPressed,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child: Text(
        this.text,
        style: TextStyle(color: Colors.white),
      ),
      onPressed: onPressed,
      color: this.color,
      minWidth: this.size,
    );
  }
}

class SettingsButton extends StatelessWidget {
  final Color color;
  final String text;
  final int value;
  final String setting;
  final CallbackSetting callback;
  SettingsButton(
      this.color, this.text, this.value, this.setting, this.callback);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        child: Text(
          this.text,
          style: TextStyle(color: Colors.white),
        ),
        color: this.color,
        onPressed: () => this.callback(this.setting, this.value));
  }
}
