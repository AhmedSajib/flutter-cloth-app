import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/product_card_widget.dart';

class HomePage extends StatelessWidget {
  List catList = [
    "All",
    "Best selling",
    "jackets",
    "Shirts",
    "Pants",
    "Bags",
  ];
  List imgList = [
    'Warm Jacket',
    'Black T-shirt',
    'Black pant',
    'Ladies Bag',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 15).r,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 25).w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 1.5,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF7F8F4),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            label: Text("Find your product"),
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search,
                              size: 30.sp,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF7F8FA),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(
                          Icons.notifications_none,
                          size: 30,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 30, top: 20),
                  alignment: Alignment.center,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      "assets/cover.jpg",
                      width: MediaQuery.of(context).size.width / 1.2,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: EdgeInsets.only(top: 25),
                    child: Row(
                      children: [
                        for (int i = 0; i < catList.length; i++)
                          Container(
                            margin: EdgeInsets.all(8),
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 18),
                            decoration: BoxDecoration(
                              color: catList[i] == "All"
                                  ? Color(0xFFFD725A)
                                  : Color(0xFFF7F8FA),
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Text(
                              catList[i],
                              style: TextStyle(
                                fontSize: 16,
                                color: catList[i] == "All"
                                    ? Color(0xFFF7F8FA)
                                    : Colors.grey,
                              ),
                            ),
                          )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 15, bottom: 40),
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio:
                          (MediaQuery.of(context).size.width - 30 - 15) /
                              (2 * 290),
                      mainAxisSpacing: 45,
                      crossAxisSpacing: 15,
                    ),
                    itemCount: imgList.length,
                    itemBuilder: (_, i) {
                      if (i % 2 == 0) {
                        return ProductCard(imgList[i]);
                      }
                      return OverflowBox(
                        maxHeight: 290 + 70,
                        child: Container(
                          margin: const EdgeInsets.only(top: 70),
                          child: ProductCard(imgList[i]),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        iconSize: 30,
        selectedItemColor: const Color(0xFFFD725A),
        unselectedItemColor: Colors.grey,
        currentIndex: 0,
        onTap: (index) {},
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.cart), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFFFD725A),
        child: Icon(
          Icons.camera,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}
