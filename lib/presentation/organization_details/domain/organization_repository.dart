import 'package:tap_invest/data/model/organization_details_model.dart';

abstract class OrganizationRepository {
  Future<List<OrganisationModel>> getOrganizationDetails();
}
