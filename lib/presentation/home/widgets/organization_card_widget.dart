import 'package:flutter/material.dart';
import 'package:tap_invest/core/constants.dart';
import 'package:tap_invest/data/model/result_model.dart';

class OrganizationCardWidget extends StatelessWidget {
  const OrganizationCardWidget({
    super.key,
    required this.result,
    required this.query,
  });

  final ResultModel result;
  final String query;

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
              _hilightSearchResult(result.isin, query, context),
              _hilightSearchResult(result.companyName, query, context),
            ],
          )
        ],
      ),
    );
  }

  Widget _hilightSearchResult(
    String text,
    String query,
    BuildContext context,
  ) {
    if (query.isEmpty) return Text(text); // No query, show normal text

    final lowerText = text.toLowerCase();
    final lowerQuery = query.toLowerCase();

    final matchIndex = lowerText.indexOf(lowerQuery);
    if (matchIndex == -1) return Text(text); // No match, return normal text

    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: text.substring(0, matchIndex),
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontWeight: FontWeight.normal,
                ), // Normal text
          ),
          TextSpan(
            text: text.substring(matchIndex, matchIndex + query.length),
            style: TextStyle(
              // color: Colors.white, // Highlight color
              backgroundColor: Colors.amber[200], // Highlight background
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: text.substring(matchIndex + query.length),
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontWeight: FontWeight.normal,
                ), // Normal text
          ),
        ],
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontWeight: FontWeight.normal,
            ), // Global style
      ),
    );
  }
}
