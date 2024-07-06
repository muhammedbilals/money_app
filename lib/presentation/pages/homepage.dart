import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:money_app/core/colors/appcolors.dart';
import 'package:money_app/core/style/appstyles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Money Manager"),
      ),
      body: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                decoration: BoxDecoration(color: Colors.amber[index]),
                child: ListTile(
                  onTap: () {},
                  focusColor: AppColors.black,
                  leading: Icon(
                    Icons.person,
                    color: Colors.accents[index],
                  ),
                  title: Text(
                    'Muhammed Bilal',
                    style: AppStyles.black20medius,
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        DateFormat('hh:mm a').format(DateTime.now()),
                        style: AppStyles.black18regular,
                      ),
                      Text(
                          "Due on ${DateFormat(' dd MMM').format(DateTime.now())}"),
                    ],
                  ),
                  trailing: Text(
                    '-200 AED',
                    style: TextStyle(color: AppColors.red, fontSize: 18),
                  ),
                  isThreeLine: true,
                  hoverColor: AppColors.gray,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
