import 'package:flutter/material.dart';

class LoginActivity extends StatelessWidget {
  const LoginActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("gambar/Logo.png"),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("LKS",style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 40, color: const Color.fromARGB(255, 53, 88, 105)
                  ),),
                  Text("MART",style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 40, color: const Color.fromARGB(255, 53, 88, 105)
                  ),)
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Sign In",style: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 5,),
                Text("Enter your ID and password to sign in!",style: TextStyle(
                  fontSize: 10, color: Colors.grey
                ),),
                SizedBox(height: 25,),
                Text("Email"),
                SizedBox(height: 5,),
                TextField(
                  decoration: InputDecoration(
                    hintText: "email",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}