import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SAMIK SANVI App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('SAMIK SANVI App'),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              _getCard(),
              _getAvataar()
            ],
          ),
        ),
      ),
    );
  }

  Container _getCard() {
    return Container(
      width: 350,
      height: 200,
      margin: EdgeInsets.all(65.0),
      decoration: BoxDecoration(
        color: Colors.pinkAccent,
        borderRadius: BorderRadius.circular(8.5)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Our Name Samik & Sanvi", style: TextStyle(
            fontSize: 22.5,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),),
          Text("We Study in National School, Virar East", style: TextStyle(
              fontSize: 20.5,
              color: Colors.white
          ),textAlign: TextAlign.center,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.add_ic_call),
              Text(": 9920260085", style: TextStyle(
                  fontSize: 20.5,
                  color: Colors.white
              ),textAlign: TextAlign.center),
              ElevatedButton(
                  onPressed: () => launch("tel:9920260085"),
                  child: Text('Call')),
            ],
          ),


        ],
      ),
    );
  }

  Container _getAvataar() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
        border: Border.all(color: Colors.redAccent, width: 1.2),
        image: DecorationImage(image: NetworkImage("https://santoshkori.com/samiksanvi.jpg"), fit: BoxFit.cover)
      ),
    );
  }
}
