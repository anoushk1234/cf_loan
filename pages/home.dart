import 'package:cfloan/pages/amortization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:cfloan/installments.dart';
import 'package:flutter/services.dart';
import 'dart:math';

class Loan extends StatefulWidget {
  @override
  _LoanState createState() => _LoanState();
}

class _LoanState extends State<Loan> {
  int amt = 0;

  //static int a = 0;
  static int term = 0;
  int rate = 0;
  List<Installment> installments = [];


 // var installments = new List.generate(6, (_) => new List(401));

  // Map values = {};

  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_statements
    //Map values = {};
   // Map installment = {};
    //values = ModalRoute.of(context).settings.arguments;
    //print(values);

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
              margin: EdgeInsets.fromLTRB(16, 16, 16, 16),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(50, 45, 45, 50),
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
                    /*Navigator.pushNamed(context, '/ana', arguments: {

                      'term': term,
                      'installment': installment
                      // 'installments':installments
                    });*/
                    //print(term.toString() + 'hello');
                    var route = new MaterialPageRoute(
                      builder: (BuildContext context) =>
                      new Amortization(value: term.toString(),installments: installments,),
                    );
                    Navigator.of(context).push(route);
                    setState(() {
                      int i = 0;
                      double pay = (amt *
                              (rate / 1200) /
                              (1 - pow(1 + rate / 1200, -term)))
                          .roundToDouble();
                      double balance = (amt - pay).roundToDouble();
                      double totalrate =
                          (balance * rate / 1200).roundToDouble();

                      while (i < term) {
                        var temp = new Installment(
                          month: i + 1,
                          payment: (amt *
                              (rate / 1200) /
                              (1 - pow(1 + rate / 1200, -term)))
                              .roundToDouble(),
                          balance: balance,
                          principal:
                          (pay - balance * rate / 1200).roundToDouble(),
                          interest: (balance * rate / 1200).roundToDouble(),
                          totalrate: totalrate,
                        );

                        // print("installment:"+installment.toString());
                        totalrate =
                            totalrate + (balance * rate / 1200).roundToDouble();
                        balance = balance - pay;
                        //installments[i] = installment;
                        installments.insert(i, temp);
                        i++;
                        //print("Installment no "+i.toString()+":"+installments[i].toString());

                      }
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
