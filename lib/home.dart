import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:flutter_speed_dial_app/pages.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter SpeedDial"),
        centerTitle: true,
      ),
      floatingActionButton: buildSpeedDial(context),
    );
  }

  SpeedDial buildSpeedDial(BuildContext context) {
    return SpeedDial(
      animatedIcon: AnimatedIcons.menu_close,
      children: [
        SpeedDialChild(
          child: Icon(Icons.contacts, color: Colors.white,),
          backgroundColor: Colors.amber,
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => PagesScreen("Contatos"),
              )
            );
          },
          label: "Contatos",
          labelStyle: TextStyle(color: Colors.white),
          labelBackgroundColor: Colors.amber
        ),
        SpeedDialChild(
            child: Icon(Icons.history, color: Colors.white,),
            backgroundColor: Colors.red,
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => PagesScreen("Histórico"),
                  )
              );
            },
            label: "Histórico",
            labelStyle: TextStyle(color: Colors.white),
            labelBackgroundColor: Colors.red
        ),
        SpeedDialChild(
            child: Icon(Icons.favorite, color: Colors.white,),
            backgroundColor: Colors.blueGrey,
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => PagesScreen("Favoritos"),
                  )
              );
            },
            label: "Favoritos",
            labelStyle: TextStyle(color: Colors.white),
            labelBackgroundColor: Colors.blueGrey
        ),
      ],
    );
  }
}
