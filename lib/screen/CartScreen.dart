import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  var paymentMode = ['Gpay', 'COD'];

  var paymentDrop = "COD";

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            bottom: const PreferredSize(
                preferredSize: Size.fromHeight(30), child: _SearchBar()),
          ),
          body: Column(
            children: [
              const CartListing(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 3.7,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(20)),
                    height: double.infinity,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.symmetric(vertical: 30),
                                    child: Text("Total Items"),
                                  ),
                                  Text("Delivery Charges"),
                                ],
                              ),
                            ),
                            Column(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.all(30),
                                  child: Text("Rs. 20"),
                                ),
                                Text("Rs. 2")
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 9,),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Row(
                            children: const [
                              Text("Pay Using"),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Container(
                                  width: 100,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1, color: Colors.orange),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Column(
                                    children: [
                                      DropdownButton(
                                        elevation: 0,
                                          value: paymentDrop,
                                          items: paymentMode
                                              .map((String paymentMode) {
                                            return DropdownMenuItem(
                                                value: paymentMode,
                                                child: Text(paymentMode));
                                          }).toList(),
                                          onChanged: (String? nValue) {
                                            setState(() {
                                              paymentDrop = nValue!;
                                            });
                                          })
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Container(
                                  width: MediaQuery.of(context).size.width / 2,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1, color: Colors.orange),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: TextButton(
                                    child: const Text("Make Payment"),
                                    onPressed: () {},
                                  )),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CartListing extends StatelessWidget {
  const CartListing({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      child: SingleChildScrollView(
        child: Column(
          children: const [
            ProductCard(
              path: "assets/images/vegetables/brinjal.png",
              name: "Brinjal",
              rating: 2,
              price: 30,
            ),
            ProductCard(
              path: "assets/images/vegetables/brinjal.png",
              name: "Brinjal",
              rating: 2,
              price: 30,
            ),
            ProductCard(
              path: "assets/images/vegetables/brinjal.png",
              name: "Brinjal",
              rating: 2,
              price: 30,
            ),
            ProductCard(
              path: "assets/images/vegetables/brinjal.png",
              name: "Brinjal",
              rating: 2,
              price: 30,
            ),
            ProductCard(
              path: "assets/images/vegetables/brinjal.png",
              name: "Brinjal",
              rating: 2,
              price: 30,
            ),
            ProductCard(
              path: "assets/images/vegetables/brinjal.png",
              name: "Brinjal",
              rating: 2,
              price: 30,
            ),
            ProductCard(
              path: "assets/images/vegetables/brinjal.png",
              name: "Brinjal",
              rating: 2,
              price: 30,
            ),
            ProductCard(
              path: "assets/images/vegetables/brinjal.png",
              name: "Brinjal",
              rating: 2,
              price: 30,
            ),
            ProductCard(
              path: "assets/images/vegetables/brinjal.png",
              name: "Brinjal",
              rating: 2,
              price: 30,
            ),
            ProductCard(
              path: "assets/images/vegetables/brinjal.png",
              name: "Brinjal",
              rating: 2,
              price: 30,
            ),
            ProductCard(
              path: "assets/images/vegetables/brinjal.png",
              name: "Brinjal",
              rating: 2,
              price: 30,
            ),
            ProductCard(
              path: "assets/images/vegetables/brinjal.png",
              name: "Brinjal",
              rating: 2,
              price: 30,
            ),
            ProductCard(
              path: "assets/images/vegetables/brinjal.png",
              name: "Brinjal",
              rating: 2,
              price: 30,
            ),
            ProductCard(
              path: "assets/images/vegetables/brinjal.png",
              name: "Brinjal",
              rating: 2,
              price: 30,
            ),
            ProductCard(
              path: "assets/images/vegetables/brinjal.png",
              name: "Brinjal",
              rating: 2,
              price: 30,
            ),
            ProductCard(
              path: "assets/images/vegetables/brinjal.png",
              name: "Brinjal",
              rating: 2,
              price: 30,
            ),
          ],
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.path,
    required this.name,
    required this.rating,
    required this.price,
  }) : super(key: key);

  final String path;
  final String name;
  final double rating;
  final int price;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: const EdgeInsets.all(1),
        height: 130,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Material(
          borderRadius: BorderRadius.circular(15),
          elevation: 10,
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: [
                ClipRRect(
                  child: Image.asset(
                    path,
                    height: 85,
                    width: 85,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10, top: 15),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        children: [
                          Text(
                            name,
                            style: const TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Rs ${price.toString()}/Kg',
                            style: const TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 12.5, right: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(rating.toString()),
                            const Icon(
                              Icons.star_rounded,
                              color: Colors.orange,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0, bottom: 5),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              NumericStepButton(onChanged: (value) {})
                            ]),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
          child: Row(
            children: [
              SizedBox(
                width: 270,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
    );
  }
}

class NumericStepButton extends StatefulWidget {
  final int minValue;
  final int maxValue;

  final ValueChanged<int> onChanged;

  const NumericStepButton(
      {Key? key,
      this.minValue = 0,
      this.maxValue = 10,
      required this.onChanged})
      : super(key: key);

  @override
  State<NumericStepButton> createState() {
    return _NumericStepButtonState();
  }
}

class _NumericStepButtonState extends State<NumericStepButton> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 50,
      // width: 100,
      decoration: BoxDecoration(
          border: Border.all(width: 0, color: Colors.orange),
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: const Icon(
              Icons.remove,
              color: Colors.orange,
              size: 30,
            ),
            padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 9.0),
            iconSize: 32.0,
            color: Theme.of(context).primaryColor,
            onPressed: () {
              setState(() {
                if (counter > widget.minValue) {
                  counter--;
                }
                widget.onChanged(counter);
              });
            },
          ),
          Text(
            '$counter',
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: Colors.black87,
                fontSize: 12.0,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins'),
          ),
          IconButton(
            icon: const Icon(
              Icons.add,
              color: Colors.orange,
              size: 30,
            ),
            padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 9.0),
            iconSize: 32.0,
            color: Theme.of(context).primaryColor,
            onPressed: () {
              setState(() {
                if (counter < widget.maxValue) {
                  counter++;
                }
                widget.onChanged(counter);
              });
            },
          ),
        ],
      ),
    );
  }
}
