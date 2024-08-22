import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello BMC Flutter",
      home: Scaffold (
        appBar: AppBar(title: Text("Hello BMC Flutter"),
        backgroundColor: Colors.deepPurpleAccent,
        ),
        body:Builder(builder:(context)=> Center(
            child: Column(children: [
            Text(
                'Hello Flutter',
                style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.green[800]),
            ),
        Text(
          'Discover Flutter',
          style: TextStyle(fontSize: 20, color: Colors.deepPurpleAccent),
      ),
              Image.network('https://th.bing.com/th/id/OIP.4yYBtSM1Uhut_GBKlqSBAQHaE8?rs=1&pid=ImgDetMain',
              height: 350,),
              ElevatedButton(
                child: Text('Contact Vatican'),
                onPressed: () => contactVatican(context),
              )
        ]
        )))));
  }
}

void contactVatican(BuildContext context){
  showDialog(context: context,
      builder: (BuildContext){
      return AlertDialog(
        title: Text('Contact Vatican'),
        content: Text('mail us at vatican@hotmail.com'),
        actions: <Widget> [
          TextButton(
            child: Text('Close'),
            onPressed: () => Navigator.of(context).pop(),
          )
        ],
      );

    }
  );
}