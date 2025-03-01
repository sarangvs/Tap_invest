import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tap_invest/core/constants.dart';
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
                    preferredSize: Size.fromHeight(60),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        bottom: 20.0,
                        top: 10,
                        left: 20,
                        right: 20,
                      ),
                      child: CustomTextField(
                        controller: searchTextController,
                        hintText: "Search by Issuer Name or ISIN",
                      ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "search results".toUpperCase(),
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                ),
                SliverPadding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  sliver: SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        final result = state.results[index];
                        return Container(
                          padding: const EdgeInsets.all(16),
                          margin: const EdgeInsets.only(
                              bottom: 10), // Adds spacing between items
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
                                backgroundImage:
                                    CachedNetworkImageProvider(result.logo),
                                child:
                                    CachedNetworkImage(imageUrl: result.logo),
                              ),
                              kwidth10,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(result.isin),
                                  Text(
                                    result.companyName,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      },
                      childCount: state.results.length,
                    ),
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
