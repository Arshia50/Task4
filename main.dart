import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Quote> quotes = [
    Quote(text: 'The greatest glory in living lies not in never falling, but in rising every time we fall.' ,
     author: 'Nelson Mandela'),
    Quote(text: 'The way to get started is to quit talking and begin doing', author: 'Walt Disney'),
   Quote(text: 'The greatest glory in living lies not in never falling, but in rising every time we fall.' ,
     author: 'Nelson Mandela'),
    Quote(text: 'If you set your goals ridiculously high and its a failure, you will fail above everyone elses success.',
    author: 'James Cameron'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
appBar: AppBar(
          title: Text('AppBar'),
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          children: <Widget>[Column(
            children: quotes
                .map((quote) => QuoteCard(
                  quote: quote,
                  delete:((){
                    setState(() {
                                        
                      quotes.remove(quote);
                                      });
                  }),
                  )).toList(),
          ),
          ],
        ),
      ),
        
        );
  }
}

