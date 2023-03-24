import 'package:f2c/onboarding.dart';
import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const SizedBox(height: 100),
          Card(color: Colors.orange.shade200,
            child: ListTile(
              leading: const Icon(Icons.person),
              title: const Text("SKSanjai"),
              subtitle: const Text("sksanjai@gmail.com"),
              onTap: () {},
            ),
          ),
          ListTile(
            leading: const Icon(Icons.bar_chart_rounded),
            title: const Text(
              'My Orders',
              style: TextStyle(fontFamily: 'Poppins'),
            ),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(Icons.location_history_outlined),
            title: const Text('Addresses',
                style: TextStyle(fontFamily: 'Poppins')),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.location_pin),
            title: const Text('Delivery Status',
                style: TextStyle(fontFamily: 'Poppins')),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.shopping_cart_checkout_outlined),
            title: const Text('Regular Orders',
                style: TextStyle(fontFamily: 'Poppins')),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.perm_phone_msg_outlined),
            title: const Text('Contact Us',
                style: TextStyle(fontFamily: 'Poppins')),
            onTap: () => {Navigator.of(context).pop()},
          ),
          const SizedBox(height: 200,),
          TextButton(onPressed: () => {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Boarding()))}, child: const Text("Logout"))
        ],
      ),
    );
  }
}
