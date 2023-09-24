# OpenAPIClient-php

BMLT Admin API Documentation


## Installation & Usage

### Requirements

PHP 7.4 and later.
Should also work with PHP 8.0.

### Composer

To install the bindings via [Composer](https://getcomposer.org/), add the following to `composer.json`:

```json
{
  "repositories": [
    {
      "type": "vcs",
      "url": "https://github.com/bmlt-enabled/bmlt-root-server-php-client.git"
    }
  ],
  "require": {
    "bmlt-enabled/bmlt-root-server-php-client": "*@dev"
  }
}
```

Then run `composer install`

### Manual Installation

Download the files and include `autoload.php`:

```php
<?php
require_once('/path/to/OpenAPIClient-php/vendor/autoload.php');
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

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

## API Endpoints

All URIs are relative to *http://localhost:8000/main_server*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*RootServerApi* | [**authLogout**](docs/Api/RootServerApi.md#authlogout) | **POST** /api/v1/auth/logout | Revokes a token
*RootServerApi* | [**authRefresh**](docs/Api/RootServerApi.md#authrefresh) | **POST** /api/v1/auth/refresh | Revokes and issues a new token
*RootServerApi* | [**authToken**](docs/Api/RootServerApi.md#authtoken) | **POST** /api/v1/auth/token | Creates a token
*RootServerApi* | [**createErrorTest**](docs/Api/RootServerApi.md#createerrortest) | **POST** /api/v1/errortest | Tests some errors
*RootServerApi* | [**createFormat**](docs/Api/RootServerApi.md#createformat) | **POST** /api/v1/formats | Creates a format
*RootServerApi* | [**createMeeting**](docs/Api/RootServerApi.md#createmeeting) | **POST** /api/v1/meetings | Creates a meeting
*RootServerApi* | [**createServiceBody**](docs/Api/RootServerApi.md#createservicebody) | **POST** /api/v1/servicebodies | Creates a service body
*RootServerApi* | [**createUser**](docs/Api/RootServerApi.md#createuser) | **POST** /api/v1/users | Creates a user
*RootServerApi* | [**deleteFormat**](docs/Api/RootServerApi.md#deleteformat) | **DELETE** /api/v1/formats/{formatId} | Deletes a format
*RootServerApi* | [**deleteMeeting**](docs/Api/RootServerApi.md#deletemeeting) | **DELETE** /api/v1/meetings/{meetingId} | Deletes a meeting
*RootServerApi* | [**deleteServiceBody**](docs/Api/RootServerApi.md#deleteservicebody) | **DELETE** /api/v1/servicebodies/{serviceBodyId} | Deletes a service body
*RootServerApi* | [**deleteUser**](docs/Api/RootServerApi.md#deleteuser) | **DELETE** /api/v1/users/{userId} | Deletes a user
*RootServerApi* | [**getFormat**](docs/Api/RootServerApi.md#getformat) | **GET** /api/v1/formats/{formatId} | Retrieves a format
*RootServerApi* | [**getFormats**](docs/Api/RootServerApi.md#getformats) | **GET** /api/v1/formats | Retrieves formats
*RootServerApi* | [**getMeeting**](docs/Api/RootServerApi.md#getmeeting) | **GET** /api/v1/meetings/{meetingId} | Retrieves a meeting
*RootServerApi* | [**getMeetings**](docs/Api/RootServerApi.md#getmeetings) | **GET** /api/v1/meetings | Retrieves meetings
*RootServerApi* | [**getRootServer**](docs/Api/RootServerApi.md#getrootserver) | **GET** /api/v1/rootservers/{rootServerId} | Retrieves a root server
*RootServerApi* | [**getRootServers**](docs/Api/RootServerApi.md#getrootservers) | **GET** /api/v1/rootservers | Retrieves root servers
*RootServerApi* | [**getServiceBodies**](docs/Api/RootServerApi.md#getservicebodies) | **GET** /api/v1/servicebodies | Retrieves service bodies
*RootServerApi* | [**getServiceBody**](docs/Api/RootServerApi.md#getservicebody) | **GET** /api/v1/servicebodies/{serviceBodyId} | Retrieves a service body
*RootServerApi* | [**getUser**](docs/Api/RootServerApi.md#getuser) | **GET** /api/v1/users/{userId} | Retrieves a single user
*RootServerApi* | [**getUsers**](docs/Api/RootServerApi.md#getusers) | **GET** /api/v1/users | Retrieves users
*RootServerApi* | [**partialUpdateUser**](docs/Api/RootServerApi.md#partialupdateuser) | **PATCH** /api/v1/users/{userId} | Patches a user
*RootServerApi* | [**patchFormat**](docs/Api/RootServerApi.md#patchformat) | **PATCH** /api/v1/formats/{formatId} | Patches a format
*RootServerApi* | [**patchMeeting**](docs/Api/RootServerApi.md#patchmeeting) | **PATCH** /api/v1/meetings/{meetingId} | Patches a meeting
*RootServerApi* | [**patchServiceBody**](docs/Api/RootServerApi.md#patchservicebody) | **PATCH** /api/v1/servicebodies/{serviceBodyId} | Patches a service body
*RootServerApi* | [**updateFormat**](docs/Api/RootServerApi.md#updateformat) | **PUT** /api/v1/formats/{formatId} | Updates a format
*RootServerApi* | [**updateMeeting**](docs/Api/RootServerApi.md#updatemeeting) | **PUT** /api/v1/meetings/{meetingId} | Updates a meeting
*RootServerApi* | [**updateServiceBody**](docs/Api/RootServerApi.md#updateservicebody) | **PUT** /api/v1/servicebodies/{serviceBodyId} | Updates a Service Body
*RootServerApi* | [**updateUser**](docs/Api/RootServerApi.md#updateuser) | **PUT** /api/v1/users/{userId} | Update single user

## Models

- [AuthenticationError](docs/Model/AuthenticationError.md)
- [AuthorizationError](docs/Model/AuthorizationError.md)
- [ConflictError](docs/Model/ConflictError.md)
- [ErrorTest](docs/Model/ErrorTest.md)
- [Format](docs/Model/Format.md)
- [FormatBase](docs/Model/FormatBase.md)
- [FormatCreate](docs/Model/FormatCreate.md)
- [FormatPartialUpdate](docs/Model/FormatPartialUpdate.md)
- [FormatTranslation](docs/Model/FormatTranslation.md)
- [FormatUpdate](docs/Model/FormatUpdate.md)
- [Meeting](docs/Model/Meeting.md)
- [MeetingBase](docs/Model/MeetingBase.md)
- [MeetingCreate](docs/Model/MeetingCreate.md)
- [MeetingPartialUpdate](docs/Model/MeetingPartialUpdate.md)
- [MeetingUpdate](docs/Model/MeetingUpdate.md)
- [NotFoundError](docs/Model/NotFoundError.md)
- [RootServer](docs/Model/RootServer.md)
- [RootServerBase](docs/Model/RootServerBase.md)
- [RootServerBaseStatistics](docs/Model/RootServerBaseStatistics.md)
- [RootServerBaseStatisticsMeetings](docs/Model/RootServerBaseStatisticsMeetings.md)
- [RootServerBaseStatisticsServiceBodies](docs/Model/RootServerBaseStatisticsServiceBodies.md)
- [ServerError](docs/Model/ServerError.md)
- [ServiceBody](docs/Model/ServiceBody.md)
- [ServiceBodyBase](docs/Model/ServiceBodyBase.md)
- [ServiceBodyCreate](docs/Model/ServiceBodyCreate.md)
- [ServiceBodyPartialUpdate](docs/Model/ServiceBodyPartialUpdate.md)
- [ServiceBodyUpdate](docs/Model/ServiceBodyUpdate.md)
- [Token](docs/Model/Token.md)
- [TokenCredentials](docs/Model/TokenCredentials.md)
- [User](docs/Model/User.md)
- [UserBase](docs/Model/UserBase.md)
- [UserCreate](docs/Model/UserCreate.md)
- [UserPartialUpdate](docs/Model/UserPartialUpdate.md)
- [UserUpdate](docs/Model/UserUpdate.md)
- [ValidationError](docs/Model/ValidationError.md)

## Authorization

Authentication schemes defined for the API:
### bmltToken

- **Type**: `OAuth`
- **Flow**: `password`
- **Authorization URL**: ``
- **Scopes**: N/A

## Tests

To run the tests, use:

```bash
composer install
vendor/bin/phpunit
```

## Author



## About this package

This PHP package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: `1.0.0`
    - Package version: `1.0.4`
- Build package: `org.openapitools.codegen.languages.PhpClientCodegen`
