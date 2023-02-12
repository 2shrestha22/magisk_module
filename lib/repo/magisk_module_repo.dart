import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github/github.dart';
import 'package:magisk_module/models/module_prop.dart';
import 'package:properties/properties.dart';

import 'api_service.dart';

final moduleRepoProvider = Provider(
  (ref) => ModuleRepo(
    ref.watch(chopperClient).getService<ApiService>(),
    GitHub(),
  ),
);

class ModuleRepo {
  ModuleRepo(this._api, this._gitHub);

  final ApiService _api;
  final GitHub _gitHub;

  Future<List<Repository>> getModuleRepo() async {
    final repos = await _gitHub.repositories
        .listUserRepositories('Magisk-Modules-Repo')
        .toList();
    return repos;
  }

  Future<ModuleProp?> getModuleProp(Repository repo) async {
    final response =
        await _api.getModuleProp(repo.fullName, repo.defaultBranch);

    if (response.isSuccessful) {
      try {
        final prop = Properties.fromString(response.body.toString());
        return ModuleProp(
          id: prop['id'] ?? 'n/a',
          name: prop['name'] ?? 'n/a',
          version: prop['version'] ?? 'n/a',
          versionCode: prop['versionCode'] ?? 'n/a',
          author: prop['author'] ?? 'n/a',
          description: prop['description'] ?? 'n/a',
        );
      } catch (e) {
        log('Unable to parse module.prop file for: ${repo.fullName}');
        return null;
      }
    } else {
      throw response.error!;
    }
  }

  Future<String> getModuleReadMe(Repository repo) async {
    final response =
        await _api.getModuleReadMe(repo.fullName, repo.defaultBranch);

    if (response.isSuccessful) {
      return response.body.toString();
    } else {
      throw response.error!;
    }
  }
}
