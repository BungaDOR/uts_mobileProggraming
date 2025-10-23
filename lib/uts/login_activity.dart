import 'package:flutter/material.dart';

class LoginActivity extends StatefulWidget {
  const LoginActivity({super.key});

  @override
  State<LoginActivity> createState() => _LoginActivityState();
}

class _LoginActivityState extends State<LoginActivity> {
  bool _obscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("gambar/Logo.png",height: 70,),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("LKS",style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 30, color: const Color.fromARGB(255, 53, 88, 105)
                  ),),
                  Text("MART",style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 30, color: const Color.fromARGB(255, 53, 88, 105)
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
                Text("Enter your ID and password to sign in!",style: TextStyle(
                  fontSize: 15, color: Colors.grey
                ),),
                SizedBox(height: 20,),
                Text("Email"),
                SizedBox(height: 5,),
                TextField(
                  decoration: InputDecoration(
                    hintText: "email",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))
                  ),
                ),
                SizedBox(height: 10,),
                Text("Password*"),
                SizedBox(height: 5,),
                TextField(
                  obscureText: _obscure,
                  decoration: InputDecoration(
                    hintText: "Min. 8 characters",
                    suffixIcon: Icon(Icons.remove_red_eye_outlined),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Icon(Icons.check_box_outline_blank,size: 15,color: Colors.grey,),
                    Text(" Keep me logged in"),
                      ],
                ),
                SizedBox(height: 15,),
                Center(
                  child: Column(
                        children: [
                          SizedBox( width: double.infinity,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(255, 53, 88, 105),
                                foregroundColor: Colors.white
                              ),
                              onPressed: () {
                                Navigator.pushReplacementNamed(context, "/menu");
                              },
                               child: Text("Login",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            ),
                          ),
                        ]
                        ),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Belum punya akun? ",style: TextStyle(fontWeight: FontWeight.bold),),
                    ElevatedButton(onPressed: () {
                      Navigator.pushReplacementNamed(context, "/daftar");
                    }, child: Text("Daftar di sini", style: TextStyle(color: Colors.blue),),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}