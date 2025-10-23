import 'package:flutter/material.dart';

class MenuActivity extends StatelessWidget {
  const MenuActivity({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String,dynamic>> Items=[
    {
      "kode_produk":"PRD-001",
      "deskripsi":"Good Day Freeze",
      "harga":15000,
      "stok":5,
      "rating":4.8,
      "gambar":"gambar/001.jpg"
    },
    {
      "kode_produk":"PRD-002",
      "deskripsi":"Kapal Api",
      "harga":20000,
      "stok":6,
      "rating":4.7,
      "gambar":"gambar/002.jpg"
    },
    {
      "kode_produk":"PRD-003",
      "deskripsi":"Torabika Coffee",
      "harga":21000,
      "stok":5,
      "rating":4.8,
      "gambar":"gambar/003.jpg"
    },
    {
      "kode_produk":"PRD-004",
      "deskripsi":"Pikopi ",
      "harga":13000,
      "stok":5,
      "rating":4.4,
      "gambar":"gambar/004.jpg"
    },
  ];


    return Scaffold(
       body: ListView.builder(
        itemCount: Items.length,
        itemBuilder: (context, index){
          Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50,),
            child: Container(
              height: 50,
              width: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(8),
                bottomRight: Radius.circular(8)),
                color: Colors.grey,
                image: DecorationImage(image: AssetImage("gambar/Logo.png")),
              ),
              child: Text("LKS",style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 30, color: const Color.fromARGB(255, 53, 88, 105)
                  ),),
                  
            ),
          )
        ],
      );
        }) 
    );
  }
}