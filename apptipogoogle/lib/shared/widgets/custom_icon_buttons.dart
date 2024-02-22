import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.icon,
    this.onPressed,
    this.color = Colors.white,
    this.iconSize = 24.0, 
  });

  final IconData icon;
  final Function()? onPressed;
  final Color color;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: iconSize,
      onPressed: onPressed,
      icon: Icon(
        icon,
        color: color,
      ),
    );
  }
}

//Cree una clase especial solo para la Imagen
class CustomImageButton extends StatelessWidget {
  const CustomImageButton({
    super.key,
    required this.imagePath,
    required this.iconSize,
    this.onPressed,
  });

  final String imagePath;
  final double iconSize;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Image.asset(
        imagePath,
        width: iconSize,
        height: iconSize,
      ),
      onPressed: onPressed,
    );
  }
}