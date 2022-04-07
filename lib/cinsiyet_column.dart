import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyColumn extends StatelessWidget {
  final IconData? icon;
  final String? cinsiyet;
  MyColumn(
      {Key? key, this.icon = FontAwesomeIcons.addressBook, this.cinsiyet = '-'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 50,
          color: Colors.black,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          cinsiyet!,
          style: Theme.of(context).textTheme.headline5?.merge(
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        )
      ],
    );
  }
}
