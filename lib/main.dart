import 'package:flutter/material.dart';

import 'package:flutter_projem1/student.dart';
import 'package:flutter_projem1/about.dart';
import 'package:flutter_projem1/account.dart';
import 'package:flutter_projem1/class.dart';
import 'package:flutter_projem1/notecalc.dart';
import 'package:flutter_projem1/option.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Center(child: Text("Öğretmen Not Paneli")),
      ),
      body: Column(
        children: const [
          Align(
            alignment: Alignment.center,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Hoşgeldiniz",
              style: TextStyle(
                fontSize: 50,
                fontStyle: FontStyle.italic,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const UserAccountsDrawerHeader(
              accountName: Text(
                'Öğretmen Adı',
                style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              accountEmail: Text(
                'ogretmen@selcuk.edu.tr',
                style: TextStyle(color: Colors.white),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("OGR"),
              ),
              decoration: BoxDecoration(color: Colors.orangeAccent),
            ),
            ListTile(
              trailing: const Icon(Icons.home),
              title: const Text("Ana Sayfa"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
            ),
            ExpansionTile(
              title: const Text('Öğrenci'),
              trailing: const Icon(Icons.arrow_drop_down),
              children: <Widget>[
                ListTile(
                  title: const Text('Ekle'),
                  trailing: const Icon(Icons.person_add_sharp),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PageOGRADD()));
                  },
                ),
                ListTile(
                  title: const Text('Sil'),
                  trailing: const Icon(Icons.delete),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PageOGRDEL()));
                  },
                ),
                ListTile(
                  title: const Text('Öğrenciler'),
                  trailing: const Icon(Icons.class_),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PageOGRLIST()));
                  },
                ),
              ],
            ),
            ExpansionTile(
                title: const Text('Bölüm'),
                trailing: const Icon(Icons.arrow_drop_down),
                children: <Widget>[
                  ListTile(
                    title: const Text('Ekle'),
                    trailing: const Icon(Icons.add),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PageClass()));
                    },
                  ),
                  ListTile(
                    title: const Text('Sil'),
                    trailing: const Icon(Icons.delete),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PageBDEL()));
                    },
                  ),
                  ListTile(
                    title: const Text('Bölümler'),
                    trailing: const Icon(Icons.class_),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PageBLIST()));
                    },
                  ),
                  //Section Line
                ]),
            ListTile(
              title: const Text("Ders Ortalaması Hesaplama"),
              trailing: const Icon(Icons.calculate),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const PageCalc()));
              },
            ),
            const Divider(),
            ListTile(
              title: const Text("Hakkında"),
              trailing: const Icon(Icons.info),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const PageInfo()));
              },
            ),
            ListTile(
              title: const Text("Hesap"),
              trailing: const Icon(Icons.account_box),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const PageAcc()));
              },
            ),
            ListTile(
              title: const Text("Ayarlar"),
              trailing: const Icon(Icons.settings),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PageOption()));
              },
            ),
            const ListTile(
              title: Text("Çıkış"),
              trailing: Icon(Icons.exit_to_app),
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
