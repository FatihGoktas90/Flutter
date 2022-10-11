import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';


class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  const TransactionList(this.transactions, {super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 300,
      child: transactions.isEmpty ? Column(children: <Widget> [
        Text('No Transaction added yet !!' , style: Theme.of(context).textTheme.headline6,),
        Image.asset('/assets/image/waiting.png'),
      ],) : ListView.builder(
        itemBuilder: (ctx, index) {
          
          return Card(
            child: Row(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).primaryColor,
                      width: 2,
                    ),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    '\$${transactions[index].amount.toStringAsFixed(2)}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      transactions[index].title,
                      style: TextStyle(
                        fontSize: 18,
                        //  fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'Open Sans',
                      ),
                    ),
                    Text(
                      DateFormat.yMMMd().format(transactions[index].date),
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
        itemCount: transactions.length,
      ),
    );
  }
}
