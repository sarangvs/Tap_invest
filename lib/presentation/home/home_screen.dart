import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tap_invest/presentation/home/bloc/home_bloc.dart';
import 'package:tap_invest/presentation/home/bloc/home_state.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    context.read<HomeBloc>().add(FetchResults());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state is HomeLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is HomeError) {
            return Center(child: Text(state.message));
          } else if (state is HomeLoaded) {
            return ListView.builder(
              itemCount: state.results.length,
              itemBuilder: (context, index) {
                final result = state.results[index];
                return ListTile(
                  title: Text(result.company_name),
                  onTap: () {
                    log("Button clicked");
                    // Navigator.push(context, MaterialPageRoute(
                    //   builder: (_) => DetailPage(result: result),
                    // ));
                  },
                );
              },
            );
          }
          return Center(child: Text("No data"));
        },
      ),
    );
  }
}
