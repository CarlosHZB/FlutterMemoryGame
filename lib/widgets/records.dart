import 'package:app_test/constants.dart';
import 'package:app_test/pages/recordes_page.dart';
import 'package:flutter/material.dart';
import 'package:app_test/theme.dart';

class Recordes extends StatefulWidget {
  const Recordes({Key? key}) : super(key: key);

  @override
  State<Recordes> createState() => _RecordesState();
}

class _RecordesState extends State<Recordes> {
  showRecored(Modo modo) async {
    await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => RecordesPage(modo: modo),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[900],
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(12),
              child: Text(
                'Recordes',
                style: TextStyle(
                  color: Round6Theme.color,
                  fontSize: 22,
                ),
              ),
            ),
            ListTile(
              title: const Text('Modo Normal'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => showRecored(Modo.normal),
            ),
            ListTile(
              title: const Text('Modo Chevers'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => showRecored(Modo.round6),
            )
          ],
        ),
      ),
    );
  }
}
