import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EBoutikooo'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('EBoutikooo'),
            ),
            ListTile(
              title: const Text('Konekte'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Lis Prodwi'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => LisPwodwi()),
                );
              },
            ),
            ListTile(
              title: const Text('Dekonekte'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          // Premier Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 100,
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      'Premier Row',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20), // Espace entre les deux Row
          // Deuxième Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 100,
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      'Deuxième Row',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20), // Espace entre les deux Row
          // Les carrés qui occupent la moitié de l'écran
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(8.0),
                      width: MediaQuery.of(context).size.width / 2 - 20, // Moitié de la largeur de l'écran avec un espace entre les deux
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 9, 39, 64),
                        border: Border.all(
                          color: Color.fromARGB(255, 9, 39, 64),
                          width: 10.0,
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Savon',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.shopping_cart),
                        SizedBox(width: 8),
                        Icon(Icons.favorite),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(width: 20), // Espace entre les deux carrés
              Expanded(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(8.0),
                      width: MediaQuery.of(context).size.width / 2 - 20, // Moitié de la largeur de l'écran avec un espace entre les deux
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 9, 39, 64),
                        border: Border.all(
                          color: Color.fromARGB(255, 9, 39, 64),
                          width: 10.0,
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Savon',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.shopping_cart),
                        SizedBox(width: 8),
                        Icon(Icons.favorite),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class LisPwodwi extends StatefulWidget {
  @override
  LispwodwiState createState() => LispwodwiState();
}

class LispwodwiState extends State<LisPwodwi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lis PWodwi'),
      ),
      body: Center(
        child: Text('Paje Pwodwi'),
      ),
    );
  }
}
