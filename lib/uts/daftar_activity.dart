import 'package:flutter/material.dart';

class DaftarActivity extends StatefulWidget {
  const DaftarActivity({super.key});

  @override
  State<DaftarActivity> createState() => _DaftarActivityState();
}

class _DaftarActivityState extends State<DaftarActivity> {
  bool _obscure1 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("gambar/Logo.png",height: 70,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("LKS ",style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 30, color: const Color.fromARGB(255, 53, 88, 105)),
                    ),
                  Text("MART",style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 30, color: const Color.fromARGB(255, 53, 88, 105)),
                    ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Daftar",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                SizedBox(height: 5,),
                Text("Silahkan isi Data Pribadi Anda",style: TextStyle(color: Colors.grey),),
                SizedBox(height: 10,),
                Text("Nama Lengkap"),
                SizedBox(height: 5,),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Nama Lengkap",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))
                  ),
                ),
                SizedBox(height: 5,),
                Text("Alamat"),
                SizedBox(height: 5,),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Alamat",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))
                  ),
                ),
                SizedBox(height: 5,),
                Text("Password*"),
                SizedBox(height: 5,),
                TextField(
                  obscureText: _obscure1,
                  decoration: InputDecoration(
                    hintText: "Min. 8 characters",
                    suffixIcon: Icon(Icons.remove_red_eye_outlined),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))
                  ),
                ),
                SizedBox(height: 5,),
                Text("Konfirmasi Password*"),
                SizedBox(height: 5,),
                TextField(
                  obscureText: _obscure1,
                  decoration: InputDecoration(
                    hintText: "Min. 8 characters",
                    suffixIcon: Icon(Icons.remove_red_eye_outlined),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
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
                               child: Text("Daftar",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                    Text("Sudah punya akun? ",style: TextStyle(fontWeight: FontWeight.bold),),
                    ElevatedButton(onPressed: () {
                      Navigator.pushReplacementNamed(context, "/");
                    }, child: Text("Login di sini", style: TextStyle(color: Colors.blue),),
                    ),
                  ],
                )
        ],
      ),
    );
  }
}