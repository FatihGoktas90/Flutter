import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            onPressed: () {},
            style: ButtonStyle(
              // backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
              backgroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.green;
                }
                return Colors.cyan;
              }),
            ),
            child: Text(
              'Save',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
          const ElevatedButton(
            onPressed: null,
            child: Text('data'),
          ),
          const IconButton(
            onPressed: null,
            icon: Icon(Icons.abc_rounded),
          ),
          FloatingActionButton(
            onPressed: () {
              //Servise istek at
              //Sayfanın rengini düzenle
            },
            child: const Icon(Icons.add),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.red,
              padding: const EdgeInsets.all(10),
              /* shape: const RoundedRectangleBorder()*/
            ),
            onPressed: () {},
            child: const SizedBox(
              width: 50,
              child: Text('data'),
            ),
          ),
          OutlinedButton.icon(
            icon: const Icon(Icons.abc),
            label: const Text('data'),
            onPressed: () {},
          ),
          InkWell(
            onTap: () {},
            child: const Text('custom'),
          ),
          Container(
            height: 150,
            color: Colors.white,
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                // ignore: deprecated_member_use
                primary: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 20, bottom: 20, right: 20, left: 20),
              child: Text(
                'Place Bid',
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// CircleBorder() RoundedRectangleBorder() ,
