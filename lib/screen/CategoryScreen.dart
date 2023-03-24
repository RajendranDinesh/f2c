import 'package:f2c/screen/HomeScreen.dart';
import 'package:flutter/material.dart';
import '../widgets/NavDrawer.dart';
import '../models/CategoryModel.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final double width = MediaQuery.of(context).size.width;

    List<Categories> category = Categories.category;
    return Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: Scaffold(
            drawer: SizedBox(
              width: width/1.3,
              child: const NavDrawer(),
            ),
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
            ),
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
                child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Column(
                  children: const [
                    Text(
                      "Choose Categories",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          fontFamily: 'Poppins'),
                    ),
                  ],
                ),
              ),
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: category.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    if (category.length.isOdd) {
                      if (index.isEven && index < category.length - 1) {
                        return Column(
                          children: [
                            GridView.count(
                              physics: const ScrollPhysics(),
                                crossAxisCount: 2,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10,
                                childAspectRatio: (150/150),
                                shrinkWrap: true,
                                children: [
                                  CategoryCard(category: category[index]),
                                  CategoryCard(category: category[index + 1])
                                ]),
                            index == category.length - 3
                                ? SizedBox(
                              height: 180,
                                  width: 180,
                                  child: CategoryCard(
                                      category: category[category.length - 1]),
                                )
                                : Container()
                          ],
                        );
                      }
                    }
                    if (index.isEven && index < category.length - 1) {
                      return GridView.count(
                        physics: const ScrollPhysics(),
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          childAspectRatio: (150/150),
                          shrinkWrap: true,
                          children: [
                            CategoryCard(category: category[index]),
                            CategoryCard(category: category[index + 1])
                          ]);
                    } else {
                      return const Text('');
                    }
                  })
            ]))));
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.category,
  }) : super(key: key);

  final Categories category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () {
      //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
      // },
      child: Container(
        margin: const EdgeInsets.only(bottom: 10, top: 10, left: 10, right: 10),
        child: Material(
          color: Colors.grey.shade200,
          elevation: 2,

          shadowColor: Colors.deepOrange,
          borderRadius: BorderRadius.circular(15),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: ClipRRect(
                        child: Image.asset(
                          category.path,
                          height: 125,
                          width: 125,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Text(category.name),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
