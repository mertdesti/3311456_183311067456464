import 'package:flutter/material.dart';

class PageClass extends StatelessWidget {
  const PageClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.orangeAccent,
              title: const Text("Bölüm Ekle"),
            ),
            body: Column(
              children: [
                const SizedBox(height: 20),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Bölüm Adını Giriniz",
                    labelText: "Bölüm Adı",
                    labelStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  maxLength: 40,
                ),
                const TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Kaçıncı Sınıf Olduğunu Giriniz",
                      labelText: "Sınıf",
                      labelStyle: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      )),
                  keyboardType: TextInputType.number,
                  maxLength: 1,
                ),
                const TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Sınıf Kodunu Giriniz",
                      labelText: "Sınıf Kodu",
                      labelStyle: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      )),
                  keyboardType: TextInputType.number,
                  maxLength: 6,
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
                          horizontal:
                              8.0, // Inner padding for SnackBar content.
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
            )));
  }
}

class PageBDEL extends StatelessWidget {
  const PageBDEL({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: const Text("Bölüm Sil"),
      ),
      body: const Text(
        "",
        textAlign: TextAlign.center,
      ),
    );
  }
}

class PageBLIST extends StatelessWidget {
  const PageBLIST({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: const Text("Bölümler"),
      ),
      body: const Text(
        "",
        textAlign: TextAlign.center,
      ),
    );
  }
}
