import 'package:flutter/material.dart';
import 'package:tap_invest/core/constants.dart';
import 'package:tap_invest/data/model/result_model.dart';

class OrganizationCardWidget extends StatelessWidget {
  const OrganizationCardWidget({
    super.key,
    required this.result,
  });

  final ResultModel result;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(
        bottom: 10,
      ),
      width: double.infinity,
      height: 72,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Theme.of(context).canvasColor,
            backgroundImage: NetworkImage(result.logo),
          ),
          kwidth10,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(result.isin),
              Text(
                result.companyName,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontWeight: FontWeight.normal,
                    ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
