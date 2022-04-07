import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'cinsiyet_column.dart';
import 'my_container.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? seciliCinsiyet;
  double _icilenSigara = 5;
  double _sporSayisi = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContainer(),
                ),
                Expanded(
                  child: MyContainer(),
                ),
              ],
            ),
          ),
          Expanded(
            child: MyContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Haftada kac gun spor yapiyorsunuz?",
                    style: Theme.of(context).textTheme.headline6?.merge(
                        const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                  ),
                  Text(
                    _sporSayisi.round().toString(),
                    style: Theme.of(context).textTheme.headline4?.merge(
                        const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                  ),
                  Slider(
                      value: _sporSayisi,
                      max: 7,
                      min: 0,
                      onChanged: (double newValue) {
                        _sporSayisi = newValue;
                        setState(() {});
                      })
                ],
              ),
            ),
          ),
          Expanded(
            child: MyContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Gunde Kac Sigara Iciyorsunuz?",
                    style: Theme.of(context).textTheme.headline6?.merge(
                        const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                  ),
                  Text(
                    _icilenSigara.round().toString(),
                    style: Theme.of(context).textTheme.headline4?.merge(
                        const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                  ),
                  Slider(
                      value: _icilenSigara,
                      max: 30,
                      min: 0,
                      onChanged: (double newValue) {
                        _icilenSigara = newValue;
                        setState(() {});
                      })
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContainer(
                    onPress: () {
                      setState(() {
                        seciliCinsiyet = 'KADIN';
                      });
                    },
                    renk: seciliCinsiyet == 'KADIN'
                        ? Colors.lightBlue
                        : Colors.white,
                    child: MyColumn(
                      icon: FontAwesomeIcons.venus,
                      cinsiyet: 'KADIN',
                    ),
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    onPress: () {
                      setState(() {
                        seciliCinsiyet = 'ERKEK';
                      });
                    },
                    renk: seciliCinsiyet == 'ERKEK'
                        ? Colors.lightBlue
                        : Colors.white,
                    child: MyColumn(
                      icon: FontAwesomeIcons.mars,
                      cinsiyet: 'ERKEK',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
