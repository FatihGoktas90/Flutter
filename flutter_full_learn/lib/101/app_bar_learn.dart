import 'package:flutter/material.dart';


class AppBarLearnView extends StatelessWidget {
  const AppBarLearnView({super.key});
  final String _title = 'Welcome Learn';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(_title),
          leading: const Icon(Icons.chevron_left),
          automaticallyImplyLeading:
              false, // sayfada back button otomatik olarak gelmesin
          //  backgroundColor: Colors.transparent,
          // leadingWidth: 23,
          // actionsIconTheme: const IconThemeData(color: Colors.red),
          // toolbarTextStyle: const TextStyle(color: Colors.red),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.mark_as_unread_sharp),
            ),
            const Center(child: CircularProgressIndicator()),
          ],
        ),
        );
  }
}
