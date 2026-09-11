import 'package:dio/dio.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/create_document_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/delete_document_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/download_document_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/update_document_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/upload_document_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_responses/api_response.dart';
import 'package:enterprise_management/infrastructure/data/dtos/documents/document_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'document_remote_data_source.g.dart';
@RestApi()
abstract class DocumentRemoteDataSource {
  factory DocumentRemoteDataSource(Dio dio, {String? baseUrl}) = _DocumentRemoteDataSource;

  @GET('GetAll')
  Future<ApiResponse<List<DocumentDto>>> getDocuments();

  @POST('Create')
  Future<ApiResponse<DocumentDto>> createDocument(@Body() CreateDocumentDto body);

  @PUT('Update')
  Future<ApiResponse<bool>> updateDocument(@Body() UpdateDocumentDto body);

  @DELETE('Delete/{id}')
  Future<ApiResponse<bool>> deleteDocument(@Body() DeleteDocumentDto body);
  
  @GET('Download')
  Future<ApiResponse<String>> downloadDocument(@Body() DownloadDocumentDto body);

  @GET('Upload')
  Future<ApiResponse<String>> uploadDocument(@Body() UploadDocumentDto body);
}