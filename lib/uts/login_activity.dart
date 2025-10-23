import 'package:flutter/material.dart';

class LoginActivity extends StatelessWidget {
  const LoginActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("gambar/Logo.png"),
              Column(
                // crossAxisAlignment: cro,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("LKS",style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 35, color: const Color.fromARGB(255, 89, 128, 147)
                  ),),
                  Text("MART",style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 35, color: Colors.blueGrey
                  ),)
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}