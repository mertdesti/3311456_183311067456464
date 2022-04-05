// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';

class PageOGRADD extends StatelessWidget {
  const PageOGRADD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return new Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: new AppBar(
          backgroundColor: Colors.orangeAccent,
          title: const Text("Öğrenci Ekle"),
        ),
        body: new Column(
          children: [
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Öğrencinin Adını Giriniz",
                labelText: "Ad",
                labelStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              maxLength: 20,
            ),
            const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Öğrencinin Soyadını Giriniz",
                  labelText: "Soyad",
                  labelStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  )),
              maxLength: 20,
            ),
            const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Öğrencinin Numarasını Giriniz",
                  labelText: "Numara",
                  labelStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  )),
              keyboardType: TextInputType.number,
              maxLength: 9,
            ),
            const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Öğrencinin Sınıf Kodunu Giriniz",
                  labelText: "Sınıf Kodu",
                  labelStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  )),
              keyboardType: TextInputType.number,
              maxLength: 6,
            ),
            const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Öğrencinin Mail Adresini Giriniz",
                  labelText: "E-Mail",
                  labelStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  )),
              keyboardType: TextInputType.emailAddress,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orangeAccent, // background
                onPrimary: Colors.white,
              ), // foreground

              child: const Text('KAYDET'),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text('Kaydedildi.'),
                    backgroundColor: Colors.orangeAccent,
                    duration: const Duration(milliseconds: 1500),
                    width: 280.0,
                    // Width of the SnackBar.
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, // Inner padding for SnackBar content.
                    ),
                    behavior: SnackBarBehavior.floating,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                );
              },
            )
          ],
        ));
  }
}

class PageOGRDEL extends StatelessWidget {
  const PageOGRDEL({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.orangeAccent,
        title: const Text("Öğrenci Sil"),
      ),
      body: const Text(
        "",
        textAlign: TextAlign.center,
      ),
    );
  }
}

class PageOGRLIST extends StatelessWidget {
  const PageOGRLIST({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.orangeAccent,
        title: const Text("Öğrenciler"),
      ),
      body: const Text(
        "",
        textAlign: TextAlign.center,
      ),
    );
  }
}
