# OpenAPI\Client\RootServerApi

All URIs are relative to http://localhost:8000/main_server, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**authLogout()**](RootServerApi.md#authLogout) | **POST** /api/v1/auth/logout | Revokes a token |
| [**authRefresh()**](RootServerApi.md#authRefresh) | **POST** /api/v1/auth/refresh | Revokes and issues a new token |
| [**authToken()**](RootServerApi.md#authToken) | **POST** /api/v1/auth/token | Creates a token |
| [**createErrorTest()**](RootServerApi.md#createErrorTest) | **POST** /api/v1/errortest | Tests some errors |
| [**createFormat()**](RootServerApi.md#createFormat) | **POST** /api/v1/formats | Creates a format |
| [**createMeeting()**](RootServerApi.md#createMeeting) | **POST** /api/v1/meetings | Creates a meeting |
| [**createServiceBody()**](RootServerApi.md#createServiceBody) | **POST** /api/v1/servicebodies | Creates a service body |
| [**createUser()**](RootServerApi.md#createUser) | **POST** /api/v1/users | Creates a user |
| [**deleteFormat()**](RootServerApi.md#deleteFormat) | **DELETE** /api/v1/formats/{formatId} | Deletes a format |
| [**deleteMeeting()**](RootServerApi.md#deleteMeeting) | **DELETE** /api/v1/meetings/{meetingId} | Deletes a meeting |
| [**deleteServiceBody()**](RootServerApi.md#deleteServiceBody) | **DELETE** /api/v1/servicebodies/{serviceBodyId} | Deletes a service body |
| [**deleteUser()**](RootServerApi.md#deleteUser) | **DELETE** /api/v1/users/{userId} | Deletes a user |
| [**getFormat()**](RootServerApi.md#getFormat) | **GET** /api/v1/formats/{formatId} | Retrieves a format |
| [**getFormats()**](RootServerApi.md#getFormats) | **GET** /api/v1/formats | Retrieves formats |
| [**getMeeting()**](RootServerApi.md#getMeeting) | **GET** /api/v1/meetings/{meetingId} | Retrieves a meeting |
| [**getMeetings()**](RootServerApi.md#getMeetings) | **GET** /api/v1/meetings | Retrieves meetings |
| [**getRootServer()**](RootServerApi.md#getRootServer) | **GET** /api/v1/rootservers/{rootServerId} | Retrieves a root server |
| [**getRootServers()**](RootServerApi.md#getRootServers) | **GET** /api/v1/rootservers | Retrieves root servers |
| [**getServiceBodies()**](RootServerApi.md#getServiceBodies) | **GET** /api/v1/servicebodies | Retrieves service bodies |
| [**getServiceBody()**](RootServerApi.md#getServiceBody) | **GET** /api/v1/servicebodies/{serviceBodyId} | Retrieves a service body |
| [**getUser()**](RootServerApi.md#getUser) | **GET** /api/v1/users/{userId} | Retrieves a single user |
| [**getUsers()**](RootServerApi.md#getUsers) | **GET** /api/v1/users | Retrieves users |
| [**partialUpdateUser()**](RootServerApi.md#partialUpdateUser) | **PATCH** /api/v1/users/{userId} | Patches a user |
| [**patchFormat()**](RootServerApi.md#patchFormat) | **PATCH** /api/v1/formats/{formatId} | Patches a format |
| [**patchMeeting()**](RootServerApi.md#patchMeeting) | **PATCH** /api/v1/meetings/{meetingId} | Patches a meeting |
| [**patchServiceBody()**](RootServerApi.md#patchServiceBody) | **PATCH** /api/v1/servicebodies/{serviceBodyId} | Patches a service body |
| [**updateFormat()**](RootServerApi.md#updateFormat) | **PUT** /api/v1/formats/{formatId} | Updates a format |
| [**updateMeeting()**](RootServerApi.md#updateMeeting) | **PUT** /api/v1/meetings/{meetingId} | Updates a meeting |
| [**updateServiceBody()**](RootServerApi.md#updateServiceBody) | **PUT** /api/v1/servicebodies/{serviceBodyId} | Updates a Service Body |
| [**updateUser()**](RootServerApi.md#updateUser) | **PUT** /api/v1/users/{userId} | Update single user |


## `authLogout()`

```php
authLogout()
```

Revokes a token

Revoke token and logout.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: bmltToken
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\RootServerApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $apiInstance->authLogout();
} catch (Exception $e) {
    echo 'Exception when calling RootServerApi->authLogout: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[bmltToken](../../README.md#bmltToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `authRefresh()`

```php
authRefresh(): \OpenAPI\Client\Model\Token
```

Revokes and issues a new token

Refresh token.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: bmltToken
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\RootServerApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->authRefresh();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RootServerApi->authRefresh: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\Token**](../Model/Token.md)

### Authorization

[bmltToken](../../README.md#bmltToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `authToken()`

```php
authToken($token_credentials): \OpenAPI\Client\Model\Token
```

Creates a token

Exchange credentials for a new token

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\RootServerApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$token_credentials = new \OpenAPI\Client\Model\TokenCredentials(); // \OpenAPI\Client\Model\TokenCredentials | User credentials

try {
    $result = $apiInstance->authToken($token_credentials);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RootServerApi->authToken: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **token_credentials** | [**\OpenAPI\Client\Model\TokenCredentials**](../Model/TokenCredentials.md)| User credentials | |

### Return type

[**\OpenAPI\Client\Model\Token**](../Model/Token.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `createErrorTest()`

```php
createErrorTest($error_test): \OpenAPI\Client\Model\ErrorTest
```

Tests some errors

Tests some errors.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: bmltToken
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\RootServerApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$error_test = new \OpenAPI\Client\Model\ErrorTest(); // \OpenAPI\Client\Model\ErrorTest | Pass in error test object.

try {
    $result = $apiInstance->createErrorTest($error_test);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RootServerApi->createErrorTest: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **error_test** | [**\OpenAPI\Client\Model\ErrorTest**](../Model/ErrorTest.md)| Pass in error test object. | |

### Return type

[**\OpenAPI\Client\Model\ErrorTest**](../Model/ErrorTest.md)

### Authorization

[bmltToken](../../README.md#bmltToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `createFormat()`

```php
createFormat($format_create): \OpenAPI\Client\Model\Format
```

Creates a format

Creates a format.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: bmltToken
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\RootServerApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$format_create = new \OpenAPI\Client\Model\FormatCreate(); // \OpenAPI\Client\Model\FormatCreate | Pass in format object

try {
    $result = $apiInstance->createFormat($format_create);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RootServerApi->createFormat: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **format_create** | [**\OpenAPI\Client\Model\FormatCreate**](../Model/FormatCreate.md)| Pass in format object | |

### Return type

[**\OpenAPI\Client\Model\Format**](../Model/Format.md)

### Authorization

[bmltToken](../../README.md#bmltToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `createMeeting()`

```php
createMeeting($meeting_create): \OpenAPI\Client\Model\Meeting
```

Creates a meeting

Creates a meeting.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: bmltToken
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\RootServerApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$meeting_create = new \OpenAPI\Client\Model\MeetingCreate(); // \OpenAPI\Client\Model\MeetingCreate | Pass in meeting object

try {
    $result = $apiInstance->createMeeting($meeting_create);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RootServerApi->createMeeting: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **meeting_create** | [**\OpenAPI\Client\Model\MeetingCreate**](../Model/MeetingCreate.md)| Pass in meeting object | |

### Return type

[**\OpenAPI\Client\Model\Meeting**](../Model/Meeting.md)

### Authorization

[bmltToken](../../README.md#bmltToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `createServiceBody()`

```php
createServiceBody($service_body_create): \OpenAPI\Client\Model\ServiceBody
```

Creates a service body

Creates a service body.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: bmltToken
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\RootServerApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$service_body_create = new \OpenAPI\Client\Model\ServiceBodyCreate(); // \OpenAPI\Client\Model\ServiceBodyCreate | Pass in service body object

try {
    $result = $apiInstance->createServiceBody($service_body_create);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RootServerApi->createServiceBody: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **service_body_create** | [**\OpenAPI\Client\Model\ServiceBodyCreate**](../Model/ServiceBodyCreate.md)| Pass in service body object | |

### Return type

[**\OpenAPI\Client\Model\ServiceBody**](../Model/ServiceBody.md)

### Authorization

[bmltToken](../../README.md#bmltToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `createUser()`

```php
createUser($user_create): \OpenAPI\Client\Model\User
```

Creates a user

Creates a user.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: bmltToken
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\RootServerApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$user_create = new \OpenAPI\Client\Model\UserCreate(); // \OpenAPI\Client\Model\UserCreate | Pass in user object

try {
    $result = $apiInstance->createUser($user_create);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RootServerApi->createUser: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **user_create** | [**\OpenAPI\Client\Model\UserCreate**](../Model/UserCreate.md)| Pass in user object | |

### Return type

[**\OpenAPI\Client\Model\User**](../Model/User.md)

### Authorization

[bmltToken](../../README.md#bmltToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `deleteFormat()`

```php
deleteFormat($format_id)
```

Deletes a format

Deletes a format by id.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: bmltToken
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\RootServerApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$format_id = 1; // int | ID of format

try {
    $apiInstance->deleteFormat($format_id);
} catch (Exception $e) {
    echo 'Exception when calling RootServerApi->deleteFormat: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **format_id** | **int**| ID of format | |

### Return type

void (empty response body)

### Authorization

[bmltToken](../../README.md#bmltToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `deleteMeeting()`

```php
deleteMeeting($meeting_id)
```

Deletes a meeting

Deletes a meeting by id.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: bmltToken
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\RootServerApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$meeting_id = 1; // int | ID of meeting

try {
    $apiInstance->deleteMeeting($meeting_id);
} catch (Exception $e) {
    echo 'Exception when calling RootServerApi->deleteMeeting: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **meeting_id** | **int**| ID of meeting | |

### Return type

void (empty response body)

### Authorization

[bmltToken](../../README.md#bmltToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `deleteServiceBody()`

```php
deleteServiceBody($service_body_id)
```

Deletes a service body

Deletes a service body by id.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: bmltToken
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\RootServerApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$service_body_id = 1; // int | ID of service body

try {
    $apiInstance->deleteServiceBody($service_body_id);
} catch (Exception $e) {
    echo 'Exception when calling RootServerApi->deleteServiceBody: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **service_body_id** | **int**| ID of service body | |

### Return type

void (empty response body)

### Authorization

[bmltToken](../../README.md#bmltToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `deleteUser()`

```php
deleteUser($user_id)
```

Deletes a user

Deletes a user by id

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: bmltToken
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\RootServerApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$user_id = 1; // int | ID of user

try {
    $apiInstance->deleteUser($user_id);
} catch (Exception $e) {
    echo 'Exception when calling RootServerApi->deleteUser: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **user_id** | **int**| ID of user | |

### Return type

void (empty response body)

### Authorization

[bmltToken](../../README.md#bmltToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getFormat()`

```php
getFormat($format_id): \OpenAPI\Client\Model\Format
```

Retrieves a format

Retrieve a format

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: bmltToken
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\RootServerApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$format_id = 1; // int | ID of format

try {
    $result = $apiInstance->getFormat($format_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RootServerApi->getFormat: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **format_id** | **int**| ID of format | |

### Return type

[**\OpenAPI\Client\Model\Format**](../Model/Format.md)

### Authorization

[bmltToken](../../README.md#bmltToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getFormats()`

```php
getFormats(): \OpenAPI\Client\Model\Format[]
```

Retrieves formats

Retrieve formats

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: bmltToken
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\RootServerApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->getFormats();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RootServerApi->getFormats: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\Format[]**](../Model/Format.md)

### Authorization

[bmltToken](../../README.md#bmltToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getMeeting()`

```php
getMeeting($meeting_id): \OpenAPI\Client\Model\Meeting
```

Retrieves a meeting

Retrieve a meeting.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: bmltToken
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\RootServerApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$meeting_id = 1; // int | ID of meeting

try {
    $result = $apiInstance->getMeeting($meeting_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RootServerApi->getMeeting: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **meeting_id** | **int**| ID of meeting | |

### Return type

[**\OpenAPI\Client\Model\Meeting**](../Model/Meeting.md)

### Authorization

[bmltToken](../../README.md#bmltToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getMeetings()`

```php
getMeetings($meeting_ids, $days, $service_body_ids, $search_string): \OpenAPI\Client\Model\Meeting[]
```

Retrieves meetings

Retrieve meetings for authenticated user.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: bmltToken
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\RootServerApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$meeting_ids = 1,2; // string | comma delimited meeting ids
$days = 0,1; // string | comma delimited day ids between 0-6
$service_body_ids = 3,4; // string | comma delimited service body ids
$search_string = Just for Today; // string | string

try {
    $result = $apiInstance->getMeetings($meeting_ids, $days, $service_body_ids, $search_string);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RootServerApi->getMeetings: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **meeting_ids** | **string**| comma delimited meeting ids | [optional] |
| **days** | **string**| comma delimited day ids between 0-6 | [optional] |
| **service_body_ids** | **string**| comma delimited service body ids | [optional] |
| **search_string** | **string**| string | [optional] |

### Return type

[**\OpenAPI\Client\Model\Meeting[]**](../Model/Meeting.md)

### Authorization

[bmltToken](../../README.md#bmltToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getRootServer()`

```php
getRootServer($root_server_id): \OpenAPI\Client\Model\RootServer
```

Retrieves a root server

Retrieve a single root server id.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\RootServerApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$root_server_id = 1; // int | ID of root server

try {
    $result = $apiInstance->getRootServer($root_server_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RootServerApi->getRootServer: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **root_server_id** | **int**| ID of root server | |

### Return type

[**\OpenAPI\Client\Model\RootServer**](../Model/RootServer.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getRootServers()`

```php
getRootServers(): \OpenAPI\Client\Model\RootServer[]
```

Retrieves root servers

Retrieve root servers.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: bmltToken
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\RootServerApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->getRootServers();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RootServerApi->getRootServers: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\RootServer[]**](../Model/RootServer.md)

### Authorization

[bmltToken](../../README.md#bmltToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getServiceBodies()`

```php
getServiceBodies(): \OpenAPI\Client\Model\ServiceBody[]
```

Retrieves service bodies

Retrieve service bodies for authenticated user.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: bmltToken
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\RootServerApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->getServiceBodies();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RootServerApi->getServiceBodies: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\ServiceBody[]**](../Model/ServiceBody.md)

### Authorization

[bmltToken](../../README.md#bmltToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getServiceBody()`

```php
getServiceBody($service_body_id): \OpenAPI\Client\Model\ServiceBody
```

Retrieves a service body

Retrieve a single service body by id.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: bmltToken
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\RootServerApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$service_body_id = 1; // int | ID of service body

try {
    $result = $apiInstance->getServiceBody($service_body_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RootServerApi->getServiceBody: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **service_body_id** | **int**| ID of service body | |

### Return type

[**\OpenAPI\Client\Model\ServiceBody**](../Model/ServiceBody.md)

### Authorization

[bmltToken](../../README.md#bmltToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getUser()`

```php
getUser($user_id): \OpenAPI\Client\Model\User
```

Retrieves a single user

Retrieve single user.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: bmltToken
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\RootServerApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$user_id = 1; // int | ID of user

try {
    $result = $apiInstance->getUser($user_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RootServerApi->getUser: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **user_id** | **int**| ID of user | |

### Return type

[**\OpenAPI\Client\Model\User**](../Model/User.md)

### Authorization

[bmltToken](../../README.md#bmltToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getUsers()`

```php
getUsers(): \OpenAPI\Client\Model\User[]
```

Retrieves users

Retrieve users for authenticated user.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: bmltToken
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\RootServerApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->getUsers();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RootServerApi->getUsers: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\User[]**](../Model/User.md)

### Authorization

[bmltToken](../../README.md#bmltToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `partialUpdateUser()`

```php
partialUpdateUser($user_id, $user_partial_update)
```

Patches a user

Patches a user by id.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: bmltToken
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\RootServerApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$user_id = 1; // int | ID of user
$user_partial_update = new \OpenAPI\Client\Model\UserPartialUpdate(); // \OpenAPI\Client\Model\UserPartialUpdate | Pass in fields you want to update.

try {
    $apiInstance->partialUpdateUser($user_id, $user_partial_update);
} catch (Exception $e) {
    echo 'Exception when calling RootServerApi->partialUpdateUser: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **user_id** | **int**| ID of user | |
| **user_partial_update** | [**\OpenAPI\Client\Model\UserPartialUpdate**](../Model/UserPartialUpdate.md)| Pass in fields you want to update. | |

### Return type

void (empty response body)

### Authorization

[bmltToken](../../README.md#bmltToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `patchFormat()`

```php
patchFormat($format_id, $format_partial_update)
```

Patches a format

Patches a single format by id.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: bmltToken
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\RootServerApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$format_id = 1; // int | ID of format
$format_partial_update = new \OpenAPI\Client\Model\FormatPartialUpdate(); // \OpenAPI\Client\Model\FormatPartialUpdate | Pass in fields you want to update.

try {
    $apiInstance->patchFormat($format_id, $format_partial_update);
} catch (Exception $e) {
    echo 'Exception when calling RootServerApi->patchFormat: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **format_id** | **int**| ID of format | |
| **format_partial_update** | [**\OpenAPI\Client\Model\FormatPartialUpdate**](../Model/FormatPartialUpdate.md)| Pass in fields you want to update. | |

### Return type

void (empty response body)

### Authorization

[bmltToken](../../README.md#bmltToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `patchMeeting()`

```php
patchMeeting($meeting_id, $meeting_partial_update)
```

Patches a meeting

Patches a meeting by id

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: bmltToken
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\RootServerApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$meeting_id = 1; // int | ID of meeting
$meeting_partial_update = new \OpenAPI\Client\Model\MeetingPartialUpdate(); // \OpenAPI\Client\Model\MeetingPartialUpdate | Pass in fields you want to update.

try {
    $apiInstance->patchMeeting($meeting_id, $meeting_partial_update);
} catch (Exception $e) {
    echo 'Exception when calling RootServerApi->patchMeeting: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **meeting_id** | **int**| ID of meeting | |
| **meeting_partial_update** | [**\OpenAPI\Client\Model\MeetingPartialUpdate**](../Model/MeetingPartialUpdate.md)| Pass in fields you want to update. | |

### Return type

void (empty response body)

### Authorization

[bmltToken](../../README.md#bmltToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `patchServiceBody()`

```php
patchServiceBody($service_body_id, $service_body_partial_update)
```

Patches a service body

Patches a single service body by id.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: bmltToken
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\RootServerApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$service_body_id = 1; // int | ID of service body
$service_body_partial_update = new \OpenAPI\Client\Model\ServiceBodyPartialUpdate(); // \OpenAPI\Client\Model\ServiceBodyPartialUpdate | Pass in fields you want to update.

try {
    $apiInstance->patchServiceBody($service_body_id, $service_body_partial_update);
} catch (Exception $e) {
    echo 'Exception when calling RootServerApi->patchServiceBody: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **service_body_id** | **int**| ID of service body | |
| **service_body_partial_update** | [**\OpenAPI\Client\Model\ServiceBodyPartialUpdate**](../Model/ServiceBodyPartialUpdate.md)| Pass in fields you want to update. | |

### Return type

void (empty response body)

### Authorization

[bmltToken](../../README.md#bmltToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `updateFormat()`

```php
updateFormat($format_id, $format_update)
```

Updates a format

Updates a format.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: bmltToken
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\RootServerApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$format_id = 1; // int | ID of format
$format_update = new \OpenAPI\Client\Model\FormatUpdate(); // \OpenAPI\Client\Model\FormatUpdate | Pass in format object

try {
    $apiInstance->updateFormat($format_id, $format_update);
} catch (Exception $e) {
    echo 'Exception when calling RootServerApi->updateFormat: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **format_id** | **int**| ID of format | |
| **format_update** | [**\OpenAPI\Client\Model\FormatUpdate**](../Model/FormatUpdate.md)| Pass in format object | |

### Return type

void (empty response body)

### Authorization

[bmltToken](../../README.md#bmltToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `updateMeeting()`

```php
updateMeeting($meeting_id, $meeting_update)
```

Updates a meeting

Updates a meeting.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: bmltToken
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\RootServerApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$meeting_id = 1; // int | ID of meeting
$meeting_update = new \OpenAPI\Client\Model\MeetingUpdate(); // \OpenAPI\Client\Model\MeetingUpdate | Pass in meeting object

try {
    $apiInstance->updateMeeting($meeting_id, $meeting_update);
} catch (Exception $e) {
    echo 'Exception when calling RootServerApi->updateMeeting: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **meeting_id** | **int**| ID of meeting | |
| **meeting_update** | [**\OpenAPI\Client\Model\MeetingUpdate**](../Model/MeetingUpdate.md)| Pass in meeting object | |

### Return type

void (empty response body)

### Authorization

[bmltToken](../../README.md#bmltToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `updateServiceBody()`

```php
updateServiceBody($service_body_id, $service_body_update)
```

Updates a Service Body

Updates a single service body.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: bmltToken
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\RootServerApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$service_body_id = 1; // int | ID of service body
$service_body_update = new \OpenAPI\Client\Model\ServiceBodyUpdate(); // \OpenAPI\Client\Model\ServiceBodyUpdate | Pass in service body object

try {
    $apiInstance->updateServiceBody($service_body_id, $service_body_update);
} catch (Exception $e) {
    echo 'Exception when calling RootServerApi->updateServiceBody: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **service_body_id** | **int**| ID of service body | |
| **service_body_update** | [**\OpenAPI\Client\Model\ServiceBodyUpdate**](../Model/ServiceBodyUpdate.md)| Pass in service body object | |

### Return type

void (empty response body)

### Authorization

[bmltToken](../../README.md#bmltToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `updateUser()`

```php
updateUser($user_id, $user_update)
```

Update single user

Updates a user.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure OAuth2 access token for authorization: bmltToken
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new OpenAPI\Client\Api\RootServerApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$user_id = 1; // int | ID of user
$user_update = new \OpenAPI\Client\Model\UserUpdate(); // \OpenAPI\Client\Model\UserUpdate | Pass in user object

try {
    $apiInstance->updateUser($user_id, $user_update);
} catch (Exception $e) {
    echo 'Exception when calling RootServerApi->updateUser: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **user_id** | **int**| ID of user | |
| **user_update** | [**\OpenAPI\Client\Model\UserUpdate**](../Model/UserUpdate.md)| Pass in user object | |

### Return type

void (empty response body)

### Authorization

[bmltToken](../../README.md#bmltToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
