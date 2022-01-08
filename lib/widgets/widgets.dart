import 'package:backdrop/backdrop.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

class Backdrop extends StatelessWidget {
  const Backdrop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackdropScaffold(
      backLayerBackgroundColor: Colors.red[900],
      appBar: BackdropAppBar(
        backgroundColor:  Colors.red[900],
        title: const Text('PROFILE'),
        centerTitle: true,
      ),
      headerHeight: 270,
      frontLayer:  Scaffold(
        body: const Center(
          child: Text('Welcome Back'),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red[900],
          onPressed: (){},
          child: const Icon(Icons.power_settings_new),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          color: Colors.blueGrey,
          notchMargin: 5.0,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_none,color: Colors.transparent,),label: ''
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_a_photo,color: Colors.transparent,),label: ''
            ),
          ],
          backgroundColor: Colors.red[900],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
      backLayer: const Center(
      ),

    );
  }
}

