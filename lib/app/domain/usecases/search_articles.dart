import 'package:dartz/dartz.dart';
import 'package:flutter_blog_app/app/domain/entities/ny_times_search.dart';
import 'package:flutter_blog_app/app/domain/repositories/search_articles_repository.dart';
import 'package:flutter_blog_app/app/domain/usecases/usecase.dart';

class SearchArticleUseCase
    implements UseCase<NYTimesSearch, SearchArticleParams> {
  final SearchArticleRepository _searchArticleRepository;

  SearchArticleUseCase(SearchArticleRepository searchArticleRepository)
      : _searchArticleRepository = searchArticleRepository;

  @override
  Future<Either<Exception, NYTimesSearch>> call(
      SearchArticleParams params) async {
    return await _searchArticleRepository.searchArticles(params);
  }
}

class SearchArticleParams {
  final String subject;

  SearchArticleParams({required this.subject});
}
