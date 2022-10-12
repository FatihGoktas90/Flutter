import 'package:flutter/material.dart';
//import './container_sized_box_learn.dart';

class ScaffoldLearn extends StatelessWidget {
  const ScaffoldLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Scaffold Samples')),
      ),
      backgroundColor: Colors.red,
      extendBody: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => (
                    Container(
                      height: 200,
                    )
          ));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: const Drawer(),
      // bottomSheet: BottomSheet(
      //   onClosing: () {

      //   },
      //   builder: (context) {
      //     return const Text('data');
      //   },
      // ),
      body: const Text('Merhaba'),
      bottomNavigationBar: SizedBox(
        height: 100,
       // decoration:ProjectContainerDecoration(),
        child: BottomNavigationBar(items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.abc_outlined),
            label: 'Start',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.abc_outlined),
            label: 'Exit',
          ),
        ]),
      ),
    );
  }
}
