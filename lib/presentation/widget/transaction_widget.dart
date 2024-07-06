import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:money_app/core/colors/appcolors.dart';
import 'package:money_app/core/style/appstyles.dart';
import 'package:money_app/presentation/pages/details_page.dart';
import 'package:money_app/utils/navigation.dart';

class TransactionWidget extends StatelessWidget {
  const TransactionWidget({
    super.key, required this.index,
  });
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.accents[index].withOpacity(0.1),
          borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        onTap: () {
          AppNavigation.pushNavigation(context, const DetailsPage());
        },
        focusColor: AppColors.black,
        leading: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.person,
              color: Colors.accents[index],
            ),
          ],
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
              style: AppStyles.black16regular,
            ),
            Text(
              "Due on ${DateFormat(' dd MMM').format(DateTime.now())}",
              style: AppStyles.black14regular,
            ),
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
  }
}
