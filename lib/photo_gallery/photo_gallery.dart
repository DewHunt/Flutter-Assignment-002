import 'package:assignment_002/photo_details/photo_details.dart';
import 'package:assignment_002/photo_gallery/photos_data.dart';
import 'package:flutter/material.dart';

class PhotoGallery extends StatelessWidget {
  const PhotoGallery({super.key});

  @override
  Widget build(BuildContext context) {
    PhotosData photosData = PhotosData();
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
                print(photosData.allPhotos.length);
              },
            ),
          ),
        ],
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return GridView.builder(
            shrinkWrap: true,
            primary: false,
            itemCount: photosData.allPhotos.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: orientation == Orientation.portrait ? 2 : 4,
              mainAxisSpacing: 0,
              crossAxisSpacing: 0,
            ),
            itemBuilder: (context, index) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        print(photosData.allPhotos[index]['categoryName']);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PhotoDetails(
                              categoryName: photosData.allPhotos[index]['categoryName'],
                              title: photosData.allPhotos[index]['title'],
                              image: photosData.allPhotos[index]['image'],
                              description: photosData.allPhotos[index]['description'],
                            ),
                          ),
                        );
                      },
                      child: Container(
                        width: 200,
                        height: 180,
                        margin: const EdgeInsets.all(15),
                        alignment: Alignment.bottomLeft,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.6),
                              spreadRadius: 5,
                              blurRadius: 8,
                              offset: const Offset(0, 7),
                            ),
                          ],
                          image: DecorationImage(
                            image: AssetImage(photosData.allPhotos[index]['image']),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, bottom: 15),
                          child: Text(
                            photosData.allPhotos[index]['categoryName'],
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // GestureDetector(
                    //   onTap: () {
                    //     Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //         builder: (context) => const PhotoDetails(
                    //           detailsTitle: 'Mood',
                    //         ),
                    //       ),
                    //     );
                    //   },
                    //   child: Container(
                    //     width: 200,
                    //     height: 200,
                    //     margin: const EdgeInsets.all(15),
                    //     alignment: Alignment.bottomLeft,
                    //     decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(30),
                    //       boxShadow: [
                    //         BoxShadow(
                    //           color: Colors.grey.withOpacity(0.6),
                    //           spreadRadius: 5,
                    //           blurRadius: 8,
                    //           offset: const Offset(0, 7),
                    //         ),
                    //       ],
                    //       image: const DecorationImage(
                    //         image: AssetImage("assets/images/img-07.jfif"),
                    //         fit: BoxFit.cover,
                    //       ),
                    //     ),
                    //     child: const Padding(
                    //       padding: EdgeInsets.only(left: 20, bottom: 15),
                    //       child: Text(
                    //         "Mood",
                    //         style: TextStyle(
                    //           fontSize: 20,
                    //           fontWeight: FontWeight.w700,
                    //           color: Colors.white,
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // GestureDetector(
                    //   onTap: () {
                    //     Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //         builder: (context) => const PhotoDetails(
                    //           detailsTitle: 'Mood',
                    //         ),
                    //       ),
                    //     );
                    //   },
                    //   child: Container(
                    //     width: 200,
                    //     height: 200,
                    //     margin: const EdgeInsets.all(15),
                    //     alignment: Alignment.bottomLeft,
                    //     decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(30),
                    //       boxShadow: [
                    //         BoxShadow(
                    //           color: Colors.grey.withOpacity(0.6),
                    //           spreadRadius: 5,
                    //           blurRadius: 8,
                    //           offset: const Offset(0, 7),
                    //         ),
                    //       ],
                    //       image: const DecorationImage(
                    //         image: AssetImage("assets/images/img-07.jfif"),
                    //         fit: BoxFit.cover,
                    //       ),
                    //     ),
                    //     child: const Padding(
                    //       padding: EdgeInsets.only(left: 20, bottom: 15),
                    //       child: Text(
                    //         "Mood",
                    //         style: TextStyle(
                    //           fontSize: 20,
                    //           fontWeight: FontWeight.w700,
                    //           color: Colors.white,
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // GestureDetector(
                    //   onTap: () {
                    //     Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //         builder: (context) => const PhotoDetails(
                    //           detailsTitle: 'Mood',
                    //         ),
                    //       ),
                    //     );
                    //   },
                    //   child: Container(
                    //     width: 200,
                    //     height: 200,
                    //     margin: const EdgeInsets.all(15),
                    //     alignment: Alignment.bottomLeft,
                    //     decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(30),
                    //       boxShadow: [
                    //         BoxShadow(
                    //           color: Colors.grey.withOpacity(0.6),
                    //           spreadRadius: 5,
                    //           blurRadius: 8,
                    //           offset: const Offset(0, 7),
                    //         ),
                    //       ],
                    //       image: const DecorationImage(
                    //         image: AssetImage("assets/images/img-07.jfif"),
                    //         fit: BoxFit.cover,
                    //       ),
                    //     ),
                    //     child: const Padding(
                    //       padding: EdgeInsets.only(left: 20, bottom: 15),
                    //       child: Text(
                    //         "Mood",
                    //         style: TextStyle(
                    //           fontSize: 20,
                    //           fontWeight: FontWeight.w700,
                    //           color: Colors.white,
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
