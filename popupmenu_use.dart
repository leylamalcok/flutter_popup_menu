import 'package:flutter/material.dart';

class PopupmenuKullanimi extends StatefulWidget {
  PopupmenuKullanimi({Key? key}) : super(key: key);

  @override
  _PopupmenuKullanimiState createState() => _PopupmenuKullanimiState();
}

class _PopupmenuKullanimiState extends State<PopupmenuKullanimi> {
  String _secilenSehir = 'Ankara';
  List<String> renkler = ['mavi', 'Sarı', 'kırmızı'];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: PopupMenuButton<String>(
          icon: Icon(Icons.menu),
          itemBuilder: (BuildContext context) {
            /* 
        return <PopupMenuEntry<String>>[
          PopupMenuItem(
            child: Text('ANKARA'),
            value: 'Ankara',
          ),
          PopupMenuItem(
            child: Text('BOLU'),
            value: 'Bolu',
          ),
          PopupMenuItem(
            child: Text('İSTANBUL'),
            value: 'İstanbul',
          ),
        ];
        */
            return renkler
                .map(
                  (String renk) => PopupMenuItem(
                    child: Text(renk),
                    value: renk,
                  ),
                )
                .toList();
          }),
    );
  }
}
