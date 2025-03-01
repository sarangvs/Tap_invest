import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
          return Center(
            child:
                Text("Page is hereeee${state.organisationDetails.companyName}"),
          );
        }
        return Center(child: Text("No data"));
      }),
    );
  }
}
