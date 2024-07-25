import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List quotes = [
    Quote(author: 'Danish Khan', text: 'God will forgive you. Will you?'),
    Quote(author: 'Tyler Durden', text: 'When you love what you own, they own you'),
    Quote(author: 'Muhammed Ali', text: 'Float like a butterfly sting like a bee'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],

      appBar: AppBar(
        title: const Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),

      body: Column(
        children: quotes.map( (quote) => QuoteCard(
          quote: quote,
          delete: (){
            setState(() {
              quotes.remove(quote);
            });
          }

        )).toList(),
      ),

    );
  }
}

