import 'package:app_test/pages/level_page.dart';
import 'package:app_test/theme.dart';
import 'package:app_test/widgets/records.dart';
import 'package:app_test/widgets/start_button.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Image.asset('images/host.png', width: 80, height: 125),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: RichText(
                    text: TextSpan(
                        text: 'Round 6 ',
                        style: DefaultTextStyle.of(context).style.copyWith(
                            fontSize: 30, decoration: TextDecoration.none),
                        children: const [
                      TextSpan(
                        text: 'Memory',
                        style: TextStyle(
                          color: Round6Theme.color,
                        ),
                      )
                    ])),
              )
            ],
          ),
          StartButton(
            title: 'Modo Normal', 
            color: Colors.white,
            action: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (BuildContext context) => const LevelPage(modo: Modo.normal)
              ),
              ),
          ),
          StartButton(
              title: 'Modo Chevers', 
              color: Round6Theme.color, 
              action: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (BuildContext context) => const LevelPage(modo: Modo.round6)
              ),
              ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 40.0),
            child: Recordes(),
          )
        ],
      ),
    ));
  }
}
