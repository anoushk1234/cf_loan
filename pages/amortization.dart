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
        appBar: PreferredSize(
          preferredSize: Size(double.infinity, 100),
          child: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                floating: true,
                expandedHeight: 120.0,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text(
                    'Basic Slivers',
                    style: TextStyle(
                        fontSize: 25,
                        color: Color.fromRGBO(25, 0, 64, 2),
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                ),
              )
            ],
          ),
        ),

      );
    }
  }
