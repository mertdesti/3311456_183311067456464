// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';

class PageInfo extends StatelessWidget {
  const PageInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.orangeAccent,
          title: const Text("Hakkında"),
        ),
        body: new Column(children: [
          const SizedBox(height: 20),
          new RichText(
            text: const TextSpan(
                text:
                    '  Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen 3311456 kodlu MOBİL PROGRAMLAMA dersi kapsamında 183311067 numaralı Öğrenci tarafından 1 Nisan 2022 günü yapılmıştır.',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
                    fontSize: 20)),
          )
        ]));
  }
}
