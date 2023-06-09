import 'package:flutter/material.dart';
import 'package:powershre/screens/setting_screen.dart';

class listview extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {
      "name": "Level Up Coding",
      "description":
          "Software Development Best Preactices, Tech & IT Career Path, Learning to Code",
      "image": "https://via.placeholder.com/150"
    },
    {
      "name": "Merakit Komputer",
      "description":
          "Membahas seputar ilmu hobi, dan komponen-komponen dalam merakit sebuah PC dan Laptop",
      "image": "https://via.placeholder.com/150"
    },
    {
      "name": "Psikologi Cinta",
      "description":
          "Ruang ini dibuat untuk belajar tentang cinta, pasangan hidup serta tips hubungan kasmaran",
      "image": "https://via.placeholder.com/150"
    },
    {
      "name": "Ilmu Filsafat",
      "description":
          "Kumpulan teori filsafat yang dapat menjadi acuan dalam berfilsafat juga penerapannya",
      "image": "https://via.placeholder.com/150"
    },
    {
      "name": "Bahas Buku",
      "description": "Semua hal menarik tentang buku di seluruh dunia",
      "image": "https://via.placeholder.com/150"
    }
  ];

  String parseTitle(String title) {
    var titleSplit = title.split(' ');
    var rtrn = [];
    for (var ttl in titleSplit) {
      rtrn.add(ttl.split("")[0]);
    }
    return rtrn.join('');
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: 150,
            margin: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(15),
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SettingScreen()));
              },
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 5, right: 5, top: 10, bottom: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: NetworkImage(items[index]['image']),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            parseTitle(items[index]['name']),
                            textAlign: TextAlign.center,
                            style: const TextStyle(),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      items[index]["name"],
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      items[index]["description"],
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
