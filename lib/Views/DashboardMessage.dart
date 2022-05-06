import 'package:flutter/material.dart';
import 'package:OSF/Components/MenuSection.dart';
import 'package:OSF/Components/FavouriteSection.dart';
import 'package:OSF/Components/MessageSection.dart';

class Dashboard extends StatefulWidget {
  @override
  State<Dashboard> createState() => DashboardState();
}

class DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
              size: 30,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search_rounded,
                color: Colors.white,
                size: 30,
              )),
        ],
      ),
      body: Column(
        children: [
          MenuSection(),
          FavoriteSection(),
          MessageSection(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: const Icon(
          Icons.edit,
          size: 20,
        ),
      ),
    );
  }
}
