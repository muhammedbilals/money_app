import 'package:flutter/material.dart';
import 'package:money_app/presentation/widget/transaction_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Money Manager"),
        ),
        body: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return TransactionWidget(
                  index: index,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
