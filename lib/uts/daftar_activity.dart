import 'package:flutter/material.dart';

class DaftarActivity extends StatefulWidget {
  const DaftarActivity({super.key});

  @override
  State<DaftarActivity> createState() => _DaftarActivityState();
}

class _DaftarActivityState extends State<DaftarActivity> {
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
              ],
            ),
          )
        ],
      ),
    );
  }
}