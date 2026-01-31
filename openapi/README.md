# OpenAPI Specifications

This directory contains OpenAPI (Swagger) specifications auto-generated from proto files.

## Structure

```
openapi/
└── user/
    └── v1/
        └── user.swagger.json     ← Auto-generated
```

## Generation

Swagger specs are automatically generated when you run:

```bash
buf generate
```

## Important

✅ **These files should be committed to git**

- They're used by gateway services for API documentation
- They're versioned with the proto definitions
- Frontend/client teams can use them to generate SDKs

## Usage

Gateway services reference these specs for Swagger UI:

- Development: Served directly from this directory
- Production: Embedded in gateway binary during build

## Adding New Services

When adding new services (product, order, etc.):

1. Add proto files in respective directories
2. Run `buf generate`
3. New swagger specs will appear here automatically
4. Commit them to git

## Client SDK Generation

Use these specs to generate client SDKs:

```bash
# TypeScript
npx @openapitools/openapi-generator-cli generate \
  -i openapi/user/v1/user.swagger.json \
  -g typescript-fetch \
  -o clients/typescript

# Python
openapi-generator-cli generate \
  -i openapi/user/v1/user.swagger.json \
  -g python \
  -o clients/python
```
