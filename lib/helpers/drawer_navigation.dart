import 'package:flutter/material.dart';
import '../Screens/HomeScreeen.dart';
import '../Screens/CategoriesScreen.dart';

class DrawerNavigation extends StatefulWidget {
  const DrawerNavigation({super.key});

  @override
  State<DrawerNavigation> createState() => _DrawerNavigationState();
}

class _DrawerNavigationState extends State<DrawerNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/avatar.jpg'),
              ),
              accountName: Text('Nguyen Duc Thang'),
              accountEmail: Text('Nthang0987@gmail.com'),
              decoration: BoxDecoration(color: Colors.blue),
            ),
            //Home page
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              //navigation về lại trang HomeScreen
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Homescreeen())),
            ),
            // Catergories
            ListTile(
              leading: Icon(Icons.view_list),
              title: Text('Categories'),
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Categoriesscreen())),
            ),
          ],
        ),
      ),
    );
  }
}
