import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import 'home.dart';
class Transaction extends StatefulWidget{
  final List<CameraDescription> cameras;

  Transaction(this.cameras);

  @override
  _TransactionState createState() => _TransactionState();
}

class _TransactionState extends State<Transaction>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        // 내일 더 열심히 할게요!!
        // 살려주세요... 피곤해요...
        // 코딩 대신해주세요...
        //
      )
    );
  }
}