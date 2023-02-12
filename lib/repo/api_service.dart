import 'package:chopper/chopper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'api_service.chopper.dart';

const baseUrl = 'https://raw.githubusercontent.com';

@ChopperApi()
abstract class ApiService extends ChopperService {
  @Get(path: "/{fullRepoName}/{defaultBranch}/module.prop")
  Future<Response> getModuleProp(
    @Path() String fullRepoName,
    @Path() String defaultBranch,
  );

  @Get(path: "/{fullRepoName}/{defaultBranch}/README.md")
  Future<Response> getModuleReadMe(
    @Path() String fullRepoName,
    @Path() String defaultBranch,
  );
}

final chopperClient = Provider((ref) => ChopperClient(
      baseUrl: Uri.parse(baseUrl),
      services: [
        _$ApiService(),
      ],
    ));
