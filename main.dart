//import 'dart:js';

import 'file:///C:/Users/Anoushk/AndroidStudioProjects/cfloan/lib/pages/loading.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cfloan/pages/home.dart';
import 'package:cfloan/pages/amortization.dart';

void main() => runApp(MaterialApp(
      //home: Loan(),
      // initialRoute:'/loading' ,

      routes: {
        '/': (context) => Loading(),
        '/ana': (context) => Amortization(),
        '/home': (context) => Loan(),
      },
    ));
