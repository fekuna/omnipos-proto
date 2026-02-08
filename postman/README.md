# OmniPOS API - Postman Collection

This directory contains a unified Postman Collection for all OmniPOS microservices.

## Quick Start

1. Open Postman
2. Click **Import**
3. Drag and drop `omnipos-api.postman_collection.json`
4. The collection will be imported with all services organized in folders

## Collection Structure

The collection is organized with the following service folders:

- **Audit V1 Audit** - Audit logging endpoints
- **Customer V1 Customer** - Customer management endpoints
- **Inventory Service** - Inventory management endpoints
- **Merchant Service** - Merchant authentication and management
- **Order V1 Order** - Order processing endpoints
- **Payment V1 Payment** - Payment processing endpoints
- **Product Service** - Product catalog endpoints
- **Role Service** - Role and permission management
- **Store V1 Store** - Store management endpoints
- **User Service** - User management endpoints

## Environment Setup

The collection uses a `{{baseUrl}}` variable. Create a Postman Environment with:

```
baseUrl: http://localhost:8080
```

Or use your API Gateway URL in production.

## Authentication

Most endpoints require authentication. After logging in via:

- `Merchant Service > Merchant Login` or
- `User Service > User Login`

Copy the `access_token` from the response and set it in your environment or use Postman's Authorization tab.
