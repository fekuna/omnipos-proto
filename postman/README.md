# OmniPOS Postman Collections

This directory contains the OpenAPI (Swagger) specifications for all OmniPOS microservices.

## Usage

You can import these files directly into Postman to create collections for each service.

1.  Open Postman.
2.  Click **Import**.
3.  Drag and drop the `.swagger.json` files from this directory.
4.  Each file will create a new Collection in Postman.

## Included Services

- `audit`: Audit logging service.
- `customer`: Customer management service.
- `order`: Order processing service.
- `payment`: Payment processing service.
- `product`: Product and Inventory management services.
- `store`: Store management service.
- `user`: User, Merchant, and Role management services.

## Notes

- The files are generated from the Protocol Buffer definitions (`.proto`) using `buf generate`.
- If you update the `.proto` files, run `make generate` in the `omnipos-proto` root to update these Swagger files, and then re-import them into Postman.
