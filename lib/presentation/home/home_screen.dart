import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tap_invest/presentation/home/bloc/home_bloc.dart';
import 'package:tap_invest/presentation/home/bloc/home_state.dart';
import 'package:tap_invest/presentation/widgets/text_field_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final searchTextController = TextEditingController();
  @override
  void initState() {
    super.initState();
    context.read<HomeBloc>().add(FetchResults());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state is HomeLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is HomeError) {
            return Center(child: Text(state.message));
          } else if (state is HomeLoaded) {
            return CustomScrollView(
              slivers: [
                SliverAppBar(
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  titleSpacing: 20,
                  title: Text(
                    "Home",
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  floating: true,
                  pinned: false,
                  expandedHeight: 150.0,
                  bottom: PreferredSize(
                    preferredSize: Size.fromHeight(60), // Adjust height
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 15),
                      child: CustomTextField(
                        controller: searchTextController,
                        hintText: "Search by Issuer Name or ISIN",
                      ),
                    ),
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      final result = state.results[index];
                      return ListTile(
                        title: Text(result.companyName),
                        onTap: () {
                          log("Button clicked");
                        },
                      );
                    },
                    childCount: state.results.length,
                  ),
                ),
              ],
            );
          }
          return Center(child: Text("No data"));
        },
      ),
    );
  }
}
