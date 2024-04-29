import 'package:flutter/material.dart';

class PhotoDetails extends StatelessWidget {
  const PhotoDetails({
    super.key,
    required this.categoryName,
    required this.title,
    required this.image,
    required this.description,
  });

  final String categoryName;
  final String title;
  final String image;
  final String description;

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
        title: Text(
          categoryName,
          style: const TextStyle(
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
      body: OrientationBuilder(
        builder: (context, orientation) {
          return GridView(
            shrinkWrap: true,
            primary: false,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: orientation == Orientation.portrait ? 1 : 2,
              mainAxisSpacing: 1,
              crossAxisSpacing: 20,
            ),
            children: [
              Container(
                width: 300,
                height: 300,
                margin: const EdgeInsets.all(15),
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
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: 10, bottom: 10, left: 25, right: 25),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        description,
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff2CAB00),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            textStyle: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                            ),
                            minimumSize: const Size(500, 50),
                          ),
                          onPressed: () {
                            print("See More");
                          },
                          child: const Text("See More"),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          top: 8,
                          left: 15,
                          right: 15,
                        ),
                        child: Text(
                          "Suggestions",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff2CAB00),
                          ),
                        ),
                      ),
                      GridView(
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 0,
                          crossAxisSpacing: 0,
                        ),
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const PhotoDetails(
                                    categoryName: 'Dawn',
                                    title: "The dawn",
                                    image: "assets/images/img-09.jfif",
                                    description:
                                        "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore",
                                  ),
                                ),
                              );
                            },
                            child: Container(
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
                                image: const DecorationImage(
                                  image:
                                      AssetImage("assets/images/img-09.jfif"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(left: 20, bottom: 15),
                                child: Text(
                                  "Dawn",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const PhotoDetails(
                                    categoryName: 'Leaves',
                                    title: "The leaves and nature",
                                    image: "assets/images/img-02.jfif",
                                    description:
                                        "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore",
                                  ),
                                ),
                              );
                            },
                            child: Container(
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
                                image: const DecorationImage(
                                  image:
                                      AssetImage("assets/images/img-02.jfif"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(left: 20, bottom: 15),
                                child: Text(
                                  "Leaves",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
