import 'package:f2c/widgets/FarmerCard.dart';
import 'package:f2c/widgets/NavDrawer.dart';
import 'package:flutter/material.dart';
import '../models/FarmerModel.dart';
import '../widgets/SectionHeader.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Farmer> farmers = Farmer.farmers;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: Scaffold(
            drawer: const SizedBox(
              width: 240,
              child: NavDrawer(),
            ),
            appBar: const _CustomAppBar(),
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  const _SearchBar(),
                  const _WelcomeImage(),
                  FarmerListing(
                    farmers: farmers,
                  )
                ],
              ),
            )),
      ),
    );
  }
}

class FarmerListing extends StatelessWidget {
  const FarmerListing({
    Key? key,
    required this.farmers,
  }) : super(key: key);

  //Stream<List<Farmer>> getFarmer() => FirebaseFirestore.

  final List<Farmer> farmers;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const _SectionHeader(),
          ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.only(top: 20),
              itemCount: farmers.length,
              itemBuilder: (context, index) {
                return FarmerCard(farmer: farmers[index]);
              })
        ],
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  const _SectionHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        children: const [
          Padding(
            padding: EdgeInsets.only(left: 20, right: 10),
            child: SectionHeader(
              title: 'Farmers',
            ),
          )
        ],
      ),
    );
  }
}

class _WelcomeImage extends StatelessWidget {
  const _WelcomeImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
      child: Stack(
        children: [
          Image.asset('assets/images/farmer_welcome_pic.png'),
          const Positioned(
              bottom: 15,
              left: 15,
              child: Text(
                "Welcome!!!",
                style: TextStyle(
                    fontSize: 30, color: Colors.white, fontFamily: 'Poppins'),
              ))
        ],
      ),
    );
  }
}

class _SearchBar extends StatelessWidget {
  const _SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            child: Row(
              children: [
                SizedBox(
                  width: 270,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                          isDense: true,
                          filled: true,
                          fillColor: Colors.orange.shade50,
                          prefixIcon: const Icon(Icons.search),
                          hintText: 'Search',
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                ),
                const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Icon(Icons.settings_input_composite)),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  const _CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: SizedBox(
        height: kToolbarHeight,
        width: 300,
        child: Stack(
          children: [
            const Positioned(
                left: 0,
                top: 10,
                child: Text(
                  "Hi SK",
                  style: TextStyle(fontFamily: 'Poppins', fontSize: 18),
                )),
            Positioned(
                left: 0,
                bottom: 5,
                child: GestureDetector(
                  child: const Text(
                    "BITSathy - Erode",
                    style: TextStyle(fontSize: 15),
                  ),
                  onTap: () {},
                )),
            Positioned(
              right: 0,
              child: IconButton(
                  color: Colors.orange,
                  icon: const Icon(Icons.notifications),
                  onPressed: () {}),
            )
          ],
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: false,
      titleSpacing: 5,
    );
  }
}
