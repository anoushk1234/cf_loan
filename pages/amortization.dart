import 'package:flutter/material.dart';
import 'package:cfloan/main.dart';

class Amortization extends StatefulWidget {
  @override
  _AmortizationState createState() => _AmortizationState();
}

class _AmortizationState extends State<Amortization> {
  //static const List<Tuple2> insta=[
  //final term;
  //_AmortizationState({Key key, @required this.term}) : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Color.fromRGBO(27, 202, 155, 2),
      title: Expanded(
        child: Text(
          "Amortization Schedule",
          style: TextStyle(
              color: Color.fromRGBO(25, 0, 64, 2),
              fontSize: 25,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic),
        ),
      ),
    ));
  }
}
