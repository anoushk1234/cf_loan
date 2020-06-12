//import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'installments.dart';
import 'package:flutter/services.dart';
import 'dart:math';
import 'package:cfloan/pages/amoritization.dart';


void main() => runApp(MaterialApp(
      home: Loan(),
      //initialRoute:'/ana' ,

      routes: {
        '/ana': (context) => Amortization(),
        '/home': (context) => Loan()
      },

    ));

class Loan extends StatefulWidget {
  @override
  _LoanState createState() => _LoanState();
}

class _LoanState extends State<Loan> {
  int amt = 0;
  //static int a = 0;
  static int term = 0;
  int rate = 0;

  List<Installment> installments = new List(term);
 // print(values);


  void data() {
    int i = 0;
    //double firstrate=a*r/1200;
    double pay = amt * (rate / 1200) / (1 - pow(1 + rate / 1200, -term));
    //double pr=pay-firstrate;
    // installments[0]=Installment(month: 1,)
    double balance = amt - pay;
      double totalrate = balance * rate / 1200;
    while (i < term) {
      var temp = new Installment(
          month: i+1,
          payment: amt * (rate / 1200) / (1 - pow(1 + rate / 1200, -term)),
          balance: balance,
          principal: pay - balance * rate / 1200,
          interest: balance * rate / 1200,
          totalrate: totalrate,
          );
      totalrate = totalrate + (balance * rate / 1200);
      balance = balance - pay;
      installments[i]=temp;
    }
    // return term;
  }

  Map values = {};

  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_statements

    values= ModalRoute.of(context).settings.arguments;
    print(values.toString()+"hello1");

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 100),
        child: Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(color: Colors.black12, spreadRadius: 15, blurRadius: 7)
          ]),
          width: MediaQuery.of(context).size.width,
          height: 100,
          child: Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(27, 202, 155, 1),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.monetization_on, color: Colors.yellow, size: 40),
                  SizedBox(width: 10),
                  Text(
                    "Maverick's Loan Calculator",
                    style: TextStyle(
                        fontSize: 25,
                        color: Color.fromRGBO(25, 0, 64, 2),
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                    // textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Card(
              elevation: 7,
              color: Color.fromRGBO(83, 224, 188, 1),
              margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(45, 15, 45, 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      "Loan Amount",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromRGBO(25, 0, 94, 1),
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                      textAlign: TextAlign.center,
                    ),
                    //SizedBox(width: 20,),
                    Container(
                      padding: EdgeInsets.fromLTRB(15, 0, 15, 5),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          WhitelistingTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(27)),
                          hintText: 'Enter Amount',
                        ),
                        onFieldSubmitted: (String n) {
                          amt = int.parse(n);
                          //print(amt);
                        },
                      ),

                      //SizedBox(width: 20,),
                    ),
                    Text(
                      "Term Period",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromRGBO(25, 0, 94, 1),
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                      textAlign: TextAlign.center,
                    ),
                    //SizedBox(width: 20,),
                    Container(
                      padding: EdgeInsets.fromLTRB(15, 0, 15, 5),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          WhitelistingTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(27)),
                          hintText: 'Enter Term',
                        ),
                        onFieldSubmitted: (String n) {
                          term = int.parse(n);
                          //print(term);
                        },
                      ),

                      //SizedBox(width: 20,),
                    ),
                    Text(
                      "Interest Rate",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromRGBO(25, 0, 94, 1),
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                      textAlign: TextAlign.center,
                    ),
                    //SizedBox(width: 20,),
                    Container(
                      padding: EdgeInsets.fromLTRB(15, 0, 15, 5),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          WhitelistingTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(27)),
                          hintText: 'Enter Interest Rate',
                        ),
                        onFieldSubmitted: (String n) {
                          rate = int.parse(n);
                          //print(rate);
                        },
                      ),

                      //SizedBox(width: 20,),
                    )
                  ],
                ),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  side: BorderSide(color: Colors.transparent)),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: ButtonTheme(
                minWidth: 165.0,
                height: 65.0,
                child: RaisedButton(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(39.0),
                  ),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/ana',arguments: {
                      'term':term,
                      // 'installments':installments
                    });
                    print(term.toString()+'hello');
                    setState(() {
                      data();
                    });


                  },
                  color: Color.fromRGBO(25, 0, 94, 1),
                  textColor: Colors.white,
                  child: Text("Calculate",
                      style: TextStyle(
                          fontSize: 25,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1)),
                ),
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.grey[200],
    );
  }
}
