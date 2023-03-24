import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

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
            title: const Text('Orders'),
            centerTitle: true,
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back_ios_new))
            ],
          ),
          body: Container(
            child: Center(
              child: Container(
                child: Column(
                  children: const [
                    Icon(Icons.calendar_today_outlined),
                    Text("No history of orders"),
                    Text("Hit the button down to make your first order.")
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
