import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tap_invest/core/constants.dart';
import 'package:tap_invest/core/theme/color_schemes.dart';
import 'package:tap_invest/presentation/organization_details/bloc/organization_bloc.dart';
import 'package:tap_invest/presentation/organization_details/widgets/custom_tab_indicator.dart';

class OrganizationDetailsPage extends StatefulWidget {
  const OrganizationDetailsPage({super.key});

  @override
  State<OrganizationDetailsPage> createState() =>
      _OrganizationDetailsPageState();
}

class _OrganizationDetailsPageState extends State<OrganizationDetailsPage>
    with TickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();

    tabController = TabController(
      initialIndex: 0,
      length: 2,
      vsync: this,
    );
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
          return SafeArea(
            child: DefaultTabController(
              length: 2,
              child: NestedScrollView(
                headerSliverBuilder: (context, innerBoxIsScrolled) => [
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Company Logo
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: AppColors.kwhite,
                              image: DecorationImage(
                                image: NetworkImage(
                                    state.organisationDetails.logo),
                                fit: BoxFit.contain,
                              ),
                              border: Border.all(
                                color: AppColors.textSecondary.withOpacity(0.2),
                              ),
                            ),
                          ),
                          kheight15,

                          // Company Name
                          Text(
                            state.organisationDetails.companyName,
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(
                                  color: AppColors.kblack,
                                  fontSize: 16,
                                  letterSpacing: 0.5,
                                ),
                          ),
                          kheight10,

                          // Description
                          Text(
                            state.organisationDetails.description,
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      fontWeight: FontWeight.normal,
                                      color: AppColors.textSubtle,
                                    ),
                          ),
                          kheight10,

                          // ISIN & Status
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
                                  state.organisationDetails.status,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(color: AppColors.activeGreen),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          kheight20,
                        ],
                      ),
                    ),
                  ),
                ],
                body: Column(
                  children: [
                    TabBar(
                      isScrollable: true,
                      labelPadding: EdgeInsets.only(right: 20),
                      tabAlignment: TabAlignment.start,
                      indicatorColor: AppColors.activeBlue,
                      dividerHeight: 0.2,
                      labelStyle: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: AppColors.activeBlue),
                      tabs: [
                        Tab(text: "ISIN Analysis"),
                        Tab(text: "Pros & Cons"),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        physics:
                            NeverScrollableScrollPhysics(), // Prevents swipe conflicts
                        children: [
                          _buildScrollableTabContent(
                              _firstTabBarView(context, state)),
                          _buildScrollableTabContent(
                              _secondTabBarView(context, state)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }
        return Center(child: Text("No data"));
      }),
    );
  }

  Widget _buildScrollableTabContent(Widget child) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(20),
      child: child,
    );
  }

  Column _secondTabBarView(BuildContext context, OrganizationLoaded state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(16),
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.kwhite,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              width: 0.5,
              color: AppColors.textSecondary.withAlpha(1),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withAlpha(1),
                spreadRadius: 0.5,
                offset: Offset(0.5, 0.5),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Pros and Cons",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: AppColors.kblack,
                    ),
              ),
              kheight16,
              Text(
                "Pros",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: AppColors.activeGreen,
                    ),
              ),
              kheight12,
              ListView.separated(
                separatorBuilder: (context, index) => kheight20,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                itemCount: state.organisationDetails.prosAndCons.pros.length,
                itemBuilder: (context, index) {
                  final model =
                      state.organisationDetails.prosAndCons.pros[index];
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 2),
                        width: 18,
                        height: 18,
                        decoration: BoxDecoration(
                          color: AppColors.lightGreen,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.done,
                          size: 10,
                          color: AppColors.activeGreen,
                        ),
                      ),
                      kwidth10,
                      Expanded(
                        child: Text(
                          model,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                    ],
                  );
                },
              ),
              kheight20,
              Text(
                "Cons",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: AppColors.darkOrange,
                    ),
              ),
              kheight20,
              ...List.generate(
                state.organisationDetails.prosAndCons.cons.length,
                (int index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    state.organisationDetails.prosAndCons.cons[index],
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: AppColors.textSubtle),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _firstTabBarView(BuildContext context, OrganizationLoaded state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(left: 16, right: 16, top: 16),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                spreadRadius: 1,
                offset: Offset(0.5, 0.5),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min, // Prevent height issues
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "company financials".toUpperCase(),
                    style: Theme.of(context).textTheme.bodySmall!,
                  ),
                  Container(
                    padding: EdgeInsets.all(3),
                    height: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(99),
                      color: AppColors.inActiveColor,
                    ),
                    child: TabBar(
                      controller: tabController,
                      padding: EdgeInsets.zero,
                      indicatorPadding: EdgeInsets.zero,
                      dividerHeight: 0,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicator:
                          CustomTabIndicator(tabController: tabController),
                      tabAlignment: TabAlignment.center,
                      tabs: [
                        Text(
                          "EBITDA",
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 10,
                                    color: AppColors.kblack,
                                  ),
                        ),
                        Text(
                          "Revenue",
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 10,
                                    color: AppColors.kblack,
                                  ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              kheight30,
              SizedBox(
                height: 250, // Ensures proper layout inside SliverList
                child: TabBarView(
                  controller: tabController,
                  children: [
                    _ebitdaGraphWidget(state, context),
                    _revenueGraphWidget(state, context),
                  ],
                ),
              ),
            ],
          ),
        ),
        kheight20,
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: AppColors.textSecondary.withOpacity(0.2),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kheight16,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/AddressBook.png",
                      height: 18,
                    ),
                    kwidth4,
                    Text(
                      "Issuer Details",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontSize: 15),
                    ),
                  ],
                ),
              ),
              kheight10,
              Divider(color: AppColors.inActiveColor),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _issuerDetailsWidget(
                      context,
                      "Issuer Name",
                      state.organisationDetails.issuerDetails.issuerName,
                    ),
                    _issuerDetailsWidget(
                      context,
                      "Type of Issuer",
                      state.organisationDetails.issuerDetails.typeOfIssuer,
                    ),
                    _issuerDetailsWidget(
                      context,
                      "Sector",
                      state.organisationDetails.issuerDetails.sector,
                    ),
                    _issuerDetailsWidget(
                      context,
                      "Industry",
                      state.organisationDetails.issuerDetails.industry,
                    ),
                    _issuerDetailsWidget(
                      context,
                      "Issuer nature",
                      state.organisationDetails.issuerDetails.issuerNature,
                    ),
                    _issuerDetailsWidget(
                      context,
                      "Corporate Identity Number (CIN)",
                      state.organisationDetails.issuerDetails.cin,
                    ),
                    _issuerDetailsWidget(
                      context,
                      "Name of the Lead Manager",
                      "",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Column _issuerDetailsWidget(
    BuildContext context,
    String title,
    String subtitle,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kheight10,
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: AppColors.activeBlue),
        ),
        kheight2,
        Text(
          subtitle,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: AppColors.kblack,
                fontWeight: FontWeight.w500,
              ),
        ),
        kheight20,
      ],
    );
  }

  SizedBox _revenueGraphWidget(
    OrganizationLoaded state,
    BuildContext context,
  ) {
    return SizedBox(
        height: 170,
        child: BarChart(
          BarChartData(
            barGroups: List.generate(
              state.organisationDetails.financials.ebitda.length,
              (index) {
                final data = state.organisationDetails.financials.ebitda[index];

                return BarChartGroupData(
                  x: index + 1,
                  barRods: [
                    BarChartRodData(
                      toY: (data.value / 100000).clamp(0, 1),
                      color: AppColors.activeBlue,
                      width: 15,
                      borderRadius: BorderRadius.circular(3),
                      backDrawRodData: BackgroundBarChartRodData(
                        show: true,
                        toY: 1.8,
                        color: AppColors.activeBlue,
                      ),
                    ),
                  ],
                );
              },
            ),
            titlesData: FlTitlesData(
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  getTitlesWidget: (double value, TitleMeta meta) {
                    List<String> months = [
                      "J",
                      "F",
                      "M",
                      "A",
                      "M",
                      "J",
                      "J",
                      "A",
                      "S",
                      "O",
                      "N",
                      "D"
                    ];
                    return Text(
                      months[value.toInt() - 1], // map x values to months
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    );
                  },
                  reservedSize: 30,
                ),
              ),
              topTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  getTitlesWidget: (value, meta) => value == 6
                      ? Text(
                          "2024 2025",
                          style: Theme.of(context).textTheme.bodySmall,
                        )
                      : SizedBox(),
                ),
              ),
              rightTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: false,
                ),
              ),
              leftTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  interval: 1,
                  getTitlesWidget: (double value, TitleMeta meta) {
                    return Text(
                      "₹${value.toInt()}L",
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    );
                  },
                  reservedSize: 40,
                ),
              ),
            ),
            borderData: FlBorderData(show: false),
            gridData: FlGridData(
              show: true,
            ),
            minY: 0,
            maxY: 3,
          ),
        ));
  }

  SizedBox _ebitdaGraphWidget(OrganizationLoaded state, BuildContext context) {
    return SizedBox(
      height: 170,
      child: BarChart(
        BarChartData(
          barGroups: List.generate(
            state.organisationDetails.financials.ebitda.length,
            (index) {
              final data = state.organisationDetails.financials.ebitda[index];

              return BarChartGroupData(
                x: index + 1,
                barRods: [
                  BarChartRodData(
                    toY: (data.value / 100000).clamp(0, 1),
                    color: AppColors.kblack,
                    width: 15,
                    borderRadius: BorderRadius.circular(3),
                    backDrawRodData: BackgroundBarChartRodData(
                      show: true,
                      toY: 1.8,
                      color: AppColors.secondary,
                    ),
                  ),
                ],
              );
            },
          ),
          titlesData: FlTitlesData(
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: (double value, TitleMeta meta) {
                  List<String> months = [
                    "J",
                    "F",
                    "M",
                    "A",
                    "M",
                    "J",
                    "J",
                    "A",
                    "S",
                    "O",
                    "N",
                    "D"
                  ];
                  return Text(
                    months[value.toInt() - 1],
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  );
                },
                reservedSize: 30,
              ),
            ),
            topTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: (value, meta) => value == 6
                    ? Text(
                        "2024 2025",
                        style: Theme.of(context).textTheme.bodySmall,
                      )
                    : SizedBox(),
              ),
            ),
            rightTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: false,
              ),
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                interval: 1,
                getTitlesWidget: (double value, TitleMeta meta) {
                  return Text(
                    "₹${value.toInt()}L",
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  );
                },
                reservedSize: 40,
              ),
            ),
          ),
          borderData: FlBorderData(show: false),
          gridData: FlGridData(
            show: true,
          ),
          minY: 0,
          maxY: 3,
        ),
      ),
    );
  }
}
