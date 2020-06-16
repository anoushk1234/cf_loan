import 'package:cfloan/installments.dart';
import 'package:flutter/material.dart';

//import 'package:cfloan/main.dart';
class Amortization extends StatefulWidget {
  final String value;
  final List<Installment> installments;

  Amortization({Key key, this.value, this.installments}) : super(key: key);

  @override
  _AmortizationState createState() => _AmortizationState();
}

class _AmortizationState extends State<Amortization> {
  //static const List<Tuple2> insta=[
  //final term;
  //_AmortizationState({Key key, @required this.term}) : super();
  /* var month =<dynamic>[];
   void initialization(){

   }*/



  @override
  Widget build(BuildContext context) {

    //print("Amortization Schedule");
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
        ),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,

            child: DataTable(
              columns: <DataColumn>[
                DataColumn(
                  label: Text("Month"),
                ),
                DataColumn(label: Text("Payment")),
                DataColumn(label: Text("Principal")),
                DataColumn(label: Text("Interest")),
                DataColumn(label: Text("Total I")),
                DataColumn(label: Text("Balance")),
              ],
              rows: <DataRow>[
                ...widget.installments
                    .map((Installment inst) => DataRow(
                  cells: [
                    DataCell(
                      Text(inst.month.toString()),
                    ),
                    DataCell(
                      Text(inst.payment.toString()),
                    ),
                    DataCell(
                      Text(inst.principal.toString()),
                    ),
                    DataCell(
                      Text(inst.interest.toString()),
                    ),
                    DataCell(
                      Text(inst.totalrate.toString()),
                    ),
                    DataCell(
                      Text(inst.balance.toString()),
                    ),
                  ],
                ))
                    .toList()
              ],
            ),
    ),
    );

  }
}

