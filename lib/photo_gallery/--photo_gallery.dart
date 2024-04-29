import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PhotoGallery extends StatelessWidget {
  const PhotoGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff2CAB00),
        leading: Container(
          margin: const EdgeInsets.all(8.0),
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: const Color(0xff7ACA5E),
            borderRadius: BorderRadius.circular(8),
          ),
          child: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_rounded),
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.white,
          ),
        ),
        title: const Text(
          "Photo Gallery",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          Theme(
            data: Theme.of(context).copyWith(
              iconTheme: IconTheme.of(context).copyWith(color: Colors.white),
            ),
            child: PopupMenuButton(
              itemBuilder: (BuildContext context) {
                return [
                  const PopupMenuItem(
                    value: "1",
                    child: Text("English"),
                  ),
                  const PopupMenuItem(
                    value: "2",
                    child: Text("Bangla"),
                  ),
                ];
              },
              onSelected: (value) {
                print(value);
              },
            ),
          ),
        ],
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 0,
          crossAxisSpacing: 20,
        ),
        children: [
          Container(
            width: 200,
            height: 200,
            margin: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Color(0xffF7F2F9),
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.6),
                  spreadRadius: 5,
                  blurRadius: 8,
                  offset: const Offset(0, 7),
                ),
              ],
              image: const DecorationImage(
                image: AssetImage("assets/images/img-07.jfif"),
                fit: BoxFit.cover
              ),
            ),
            child: GestureDetector(
              onTap: () {
                print("Dew Hunt");
              },
            ),
          ),
          Container(
            width: 200,
            height: 200,
            margin: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Color(0xffF7F2F9),
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.6),
                  spreadRadius: 5,
                  blurRadius: 8,
                  offset: const Offset(0, 7),
                ),
              ],
              image: const DecorationImage(
                image: AssetImage("assets/images/img-07.jfif"),
                fit: BoxFit.cover
              ),
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent
              ),
              onPressed: () {
                print("Dew Hunt");
              },
              // child: Image.asset("assets/images/img-07.jfif"),
              child: Text(""),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(15),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                fixedSize: const Size(200, 200),
                shadowColor: Colors.blue,
              ),
              onPressed: () {
                print("Dew Hunt");
              },
              child: Image.asset("assets/images/img-07.jfif"),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(15),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  fixedSize: Size(200, 200)),
              onPressed: () {
                print("Dew Hunt");
              },
              child: const Text("Image"),
            ),
          ),
        ],
      ),
    );
  }
}
