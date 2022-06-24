import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

import 'package:catch2/transaction.dart';

List<CameraDescription> cameras = [];

class home extends StatefulWidget {
  const home(List<CameraDescription> cameras, {Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            children: [
              SizedBox(height:60),
              TextButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Transaction(cameras),)
                    );
                  },
                  child: Text('haeun')
              ),
              TextButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Transaction(cameras),)
                    );
                  },
                  child: Text('yuri')
              ),
              TextButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Transaction(cameras))
                    );
                  },
                  child: Text('gyugung')
              ),
              TextButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Transaction(cameras),)
                    );
                  },
                  child: Text('eunjin')
              ),
            ],
          )
      ),
    );
  }

}
