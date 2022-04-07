import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final Color renk;
  final Widget? child;
  final void Function()? onPress;
  const MyContainer(
      {Key? key, this.renk = Colors.white, this.child, this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: child,
        margin: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: renk,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
