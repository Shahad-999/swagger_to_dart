library;

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../models/models.dart';
part 'generic_client.g.dart';

@RestApi()
abstract class GenericClient {
  factory GenericClient(
    Dio dio, {
    ParseErrorLogger? errorLogger,
    String? baseUrl,
  }) = _GenericClient;

  /// get
  /// {
  ///     "tags": [
  ///         "generic"
  ///     ],
  ///     "summary": "Get Items",
  ///     "operationId": "generic-get_items",
  ///     "parameters": [
  ///         {
  ///             "name": "page",
  ///             "in": "query",
  ///             "required": false,
  ///             "schema": {
  ///                 "type": "integer",
  ///                 "default": 1,
  ///                 "title": "Page"
  ///             }
  ///         },
  ///         {
  ///             "name": "per_page",
  ///             "in": "query",
  ///             "required": false,
  ///             "schema": {
  ///                 "type": "integer",
  ///                 "default": 10,
  ///                 "title": "Per Page"
  ///             }
  ///         }
  ///     ],
  ///     "responses": {
  ///         "200": {
  ///             "description": "Successful Response",
  ///             "content": {
  ///                 "application/json": {
  ///                     "schema": {
  ///                         "$ref": "#/components/schemas/PaginationResponse_ItemResponse_"
  ///                     }
  ///                 }
  ///             }
  ///         },
  ///         "422": {
  ///             "description": "Validation Error",
  ///             "content": {
  ///                 "application/json": {
  ///                     "schema": {
  ///                         "$ref": "#/components/schemas/HTTPValidationError"
  ///                     }
  ///                 }
  ///             }
  ///         }
  ///     }
  /// }
  @GET('/generic/items')
  Future<HttpResponse<PaginationResponse<ItemResponse>>> genericGetItems({
    @Queries() required GenericGetItemsQueryParameters queries,
    @Extras() Map<String, dynamic>? extras,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
  });

  /// get
  /// {
  ///     "tags": [
  ///         "generic"
  ///     ],
  ///     "summary": "Get Categories",
  ///     "operationId": "generic-get_categories",
  ///     "parameters": [
  ///         {
  ///             "name": "page",
  ///             "in": "query",
  ///             "required": false,
  ///             "schema": {
  ///                 "type": "integer",
  ///                 "default": 1,
  ///                 "title": "Page"
  ///             }
  ///         },
  ///         {
  ///             "name": "per_page",
  ///             "in": "query",
  ///             "required": false,
  ///             "schema": {
  ///                 "type": "integer",
  ///                 "default": 10,
  ///                 "title": "Per Page"
  ///             }
  ///         }
  ///     ],
  ///     "responses": {
  ///         "200": {
  ///             "description": "Successful Response",
  ///             "content": {
  ///                 "application/json": {
  ///                     "schema": {
  ///                         "$ref": "#/components/schemas/PaginationResponse_CategoryResponse_"
  ///                     }
  ///                 }
  ///             }
  ///         },
  ///         "422": {
  ///             "description": "Validation Error",
  ///             "content": {
  ///                 "application/json": {
  ///                     "schema": {
  ///                         "$ref": "#/components/schemas/HTTPValidationError"
  ///                     }
  ///                 }
  ///             }
  ///         }
  ///     }
  /// }
  @GET('/generic/categories')
  Future<HttpResponse<PaginationResponse<CategoryResponse>>>
      genericGetCategories({
    @Queries() required GenericGetCategoriesQueryParameters queries,
    @Extras() Map<String, dynamic>? extras,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
  });

  /// get
  /// {
  ///     "tags": [
  ///         "generic"
  ///     ],
  ///     "summary": "Get Base Response Item",
  ///     "operationId": "generic-get_base_response_item",
  ///     "requestBody": {
  ///         "required": true,
  ///         "content": {
  ///             "application/json": {
  ///                 "schema": {
  ///                     "$ref": "#/components/schemas/ItemResponse-Input"
  ///                 }
  ///             }
  ///         }
  ///     },
  ///     "responses": {
  ///         "200": {
  ///             "description": "Successful Response",
  ///             "content": {
  ///                 "application/json": {
  ///                     "schema": {
  ///                         "$ref": "#/components/schemas/BaseResponse_ItemResponse_"
  ///                     }
  ///                 }
  ///             }
  ///         },
  ///         "422": {
  ///             "description": "Validation Error",
  ///             "content": {
  ///                 "application/json": {
  ///                     "schema": {
  ///                         "$ref": "#/components/schemas/HTTPValidationError"
  ///                     }
  ///                 }
  ///             }
  ///         }
  ///     }
  /// }
  @GET('/generic/base-response-item')
  Future<HttpResponse<BaseResponse<ItemResponse>>> genericGetBaseResponseItem({
    @Body() required ItemResponse requestBody,
    @Extras() Map<String, dynamic>? extras,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
  });

  /// get
  /// {
  ///     "tags": [
  ///         "generic"
  ///     ],
  ///     "summary": "Get Base Response Category",
  ///     "operationId": "generic-get_base_response_category",
  ///     "requestBody": {
  ///         "required": true,
  ///         "content": {
  ///             "application/json": {
  ///                 "schema": {
  ///                     "$ref": "#/components/schemas/CategoryResponse"
  ///                 }
  ///             }
  ///         }
  ///     },
  ///     "responses": {
  ///         "200": {
  ///             "description": "Successful Response",
  ///             "content": {
  ///                 "application/json": {
  ///                     "schema": {
  ///                         "$ref": "#/components/schemas/BaseResponse_CategoryResponse_"
  ///                     }
  ///                 }
  ///             }
  ///         },
  ///         "422": {
  ///             "description": "Validation Error",
  ///             "content": {
  ///                 "application/json": {
  ///                     "schema": {
  ///                         "$ref": "#/components/schemas/HTTPValidationError"
  ///                     }
  ///                 }
  ///             }
  ///         }
  ///     }
  /// }
  @GET('/generic/base-response-category')
  Future<HttpResponse<BaseResponse<CategoryResponse>>>
      genericGetBaseResponseCategory({
    @Body() required CategoryResponse requestBody,
    @Extras() Map<String, dynamic>? extras,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
  });

  /// get
  /// {
  ///     "tags": [
  ///         "generic"
  ///     ],
  ///     "summary": "Get Base Response List",
  ///     "operationId": "generic-get_base_response_list",
  ///     "responses": {
  ///         "200": {
  ///             "description": "Successful Response",
  ///             "content": {
  ///                 "application/json": {
  ///                     "schema": {
  ///                         "$ref": "#/components/schemas/BaseResponse_list_ItemResponse__"
  ///                     }
  ///                 }
  ///             }
  ///         }
  ///     }
  /// }
  @GET('/generic/base-response-list')
  Future<HttpResponse<BaseResponse<List<ItemResponse>>>>
      genericGetBaseResponseList({
    @Extras() Map<String, dynamic>? extras,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
  });

  /// get
  /// {
  ///     "tags": [
  ///         "generic"
  ///     ],
  ///     "summary": "Get Nested Base And Pagination",
  ///     "operationId": "generic-get_nested_base_and_pagination",
  ///     "parameters": [
  ///         {
  ///             "name": "page",
  ///             "in": "query",
  ///             "required": false,
  ///             "schema": {
  ///                 "type": "integer",
  ///                 "default": 1,
  ///                 "title": "Page"
  ///             }
  ///         },
  ///         {
  ///             "name": "per_page",
  ///             "in": "query",
  ///             "required": false,
  ///             "schema": {
  ///                 "type": "integer",
  ///                 "default": 10,
  ///                 "title": "Per Page"
  ///             }
  ///         }
  ///     ],
  ///     "responses": {
  ///         "200": {
  ///             "description": "Successful Response",
  ///             "content": {
  ///                 "application/json": {
  ///                     "schema": {
  ///                         "$ref": "#/components/schemas/BaseResponse_PaginationResponse_ItemResponse__"
  ///                     }
  ///                 }
  ///             }
  ///         },
  ///         "422": {
  ///             "description": "Validation Error",
  ///             "content": {
  ///                 "application/json": {
  ///                     "schema": {
  ///                         "$ref": "#/components/schemas/HTTPValidationError"
  ///                     }
  ///                 }
  ///             }
  ///         }
  ///     }
  /// }
  @GET('/generic/nested-base-and-pagination')
  Future<HttpResponse<BaseResponse<PaginationResponse<ItemResponse>>>>
      genericGetNestedBaseAndPagination({
    @Queries()
    required GenericGetNestedBaseAndPaginationQueryParameters queries,
    @Extras() Map<String, dynamic>? extras,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
  });
}
