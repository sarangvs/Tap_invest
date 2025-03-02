import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tap_invest/core/constants.dart';
import 'package:tap_invest/core/theme/color_schemes.dart';
import 'package:tap_invest/presentation/organization_details/bloc/organization_bloc.dart';

class OrganizationDetailsPage extends StatefulWidget {
  const OrganizationDetailsPage({super.key});

  @override
  State<OrganizationDetailsPage> createState() =>
      _OrganizationDetailsPageState();
}

class _OrganizationDetailsPageState extends State<OrganizationDetailsPage> {
  @override
  void initState() {
    super.initState();
    context.read<OrganizationBloc>().add(OrganizationDetails());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<OrganizationBloc, OrganizationState>(
          builder: (context, state) {
        if (state is OrganizationLoading) {
          return Center(child: CircularProgressIndicator());
        } else if (state is OrganizationError) {
          return Center(child: Text(state.message));
        } else if (state is OrganizationLoaded) {
          return CustomScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            slivers: [
              SliverAppBar(
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                floating: true,
                pinned: false,
                leading: Container(
                  margin: EdgeInsets.only(left: 18),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.kwhite,
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/ArrowLeft.png",
                      ),
                      scale: 1.6,
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      kheight15,
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: AppColors.kwhite,
                          image: DecorationImage(
                            image: NetworkImage(state.organisationDetails.logo),
                            fit: BoxFit.contain,
                          ),
                          border: Border.all(
                            color:
                                AppColors.textSecondary.withValues(alpha: 0.2),
                          ),
                        ),
                      ),
                      kheight15,
                      Text(
                        state.organisationDetails.companyName,
                        style:
                            Theme.of(context).textTheme.displayLarge!.copyWith(
                                  color: AppColors.kblack,
                                  fontSize: 16,
                                  letterSpacing: 0.5,
                                ),
                      ),
                      kheight10,
                      Text(
                        state.organisationDetails.description,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontWeight: FontWeight.normal,
                              color: AppColors.textSubtle,
                            ),
                      ),
                      kheight10,
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 30,
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              color: AppColors.secondary,
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: Text(
                              "ISIN: ${state.organisationDetails.isin}",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(color: AppColors.primary),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          kwidth10,
                          Container(
                            height: 30,
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              color: AppColors.lightGreen,
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: Text(
                              "ISIN: ${state.organisationDetails.isin}",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(color: AppColors.activeGreen),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          );
        }
        return Center(child: Text("No data"));
      }),
    );
  }
}
