import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tap_invest/core/theme/color_schemes.dart';
import 'package:tap_invest/presentation/home/bloc/home_bloc.dart';
import 'package:tap_invest/presentation/home/bloc/home_state.dart';
import 'package:tap_invest/presentation/home/widgets/organization_card_widget.dart';
import 'package:tap_invest/presentation/organization_details/organization_details.dart';
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
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              slivers: [
                SliverAppBar(
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  titleSpacing: 20,
                  title: Text(
                    "Home",
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  floating: true,
                  pinned: false,
                  foregroundColor: AppColors.background,
                  surfaceTintColor: AppColors.background,
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
                        onChanged: (value) {
                          searchTextController.text = value;
                          context.read<HomeBloc>().add(SearchResults(value));
                          setState(() {});
                        },
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
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  sliver: SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        final result = state.filteredResults[index];

                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => OrganizationDetailsPage(),
                              ),
                            );
                          },
                          child: OrganizationCardWidget(
                            result: result,
                            query: searchTextController.text,
                          ),
                        );
                      },
                      childCount: state.filteredResults.length,
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
