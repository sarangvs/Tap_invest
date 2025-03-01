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
              SearchHighlight(
                text: result.isin,
                query: query,
              ),
              SearchHighlight(text: result.companyName, query: query),
            ],
          )
        ],
      ),
    );
  }
}

class SearchHighlight extends StatefulWidget {
  final String text;
  final String query;

  const SearchHighlight({super.key, required this.text, required this.query});

  @override
  _SearchHighlightState createState() => _SearchHighlightState();
}

class _SearchHighlightState extends State<SearchHighlight> {
  @override
  Widget build(BuildContext context) {
    return _highlightSearchResult(widget.text, widget.query, context);
  }

  Widget _highlightSearchResult(
      String text, String query, BuildContext context) {
    if (query.trim().isEmpty)
      return Text(text); // Ensure query is not just spaces

    final lowerText = text.toLowerCase();
    final lowerQuery = query.trim().toLowerCase();
    final matchIndex = lowerText.indexOf(lowerQuery);

    if (matchIndex == -1) return Text(text); // No match found

    final endIndex = matchIndex + lowerQuery.length;

    return RichText(
      text: TextSpan(
        children: [
          if (matchIndex > 0)
            TextSpan(
              text: text.substring(0, matchIndex),
              style: Theme.of(context).textTheme.bodySmall,
            ),
          TextSpan(
            text: text.substring(matchIndex, endIndex),
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(backgroundColor: Colors.amber[50]),
          ),
          if (endIndex < text.length)
            TextSpan(
              text: text.substring(endIndex),
              style: Theme.of(context).textTheme.bodySmall,
            ),
        ],
      ),
    );
  }
}
