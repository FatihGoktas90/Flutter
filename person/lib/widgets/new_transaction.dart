

import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;

  NewTransaction(this.addTx);

  final titleController = TextEditingController();
  final amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          TextField(
            decoration: InputDecoration(labelText: 'Title'),
            controller: titleController,
            // onChanged: (val) {
            //titleInput = val;
            //  },
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Amount'),
            // onChanged: (val) => amountInput = val,
            controller: amountController,
          ),
          TextButton(
            onPressed: () {
              //   print(titleInput);
              //   print(amountInput);
              addTx(
                titleController.text,
                double.parse(amountController.text),
              );
            },
            child: Text('Add Transaction'),
            style: TextButton.styleFrom(primary: Colors.purple),
          ),
        ]),
      ),
    );
  }
}
