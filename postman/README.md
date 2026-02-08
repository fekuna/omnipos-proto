# OmniPOS Postman Collections

This directory contains Postman Collection v2 files for all OmniPOS microservices.

## Usage

1.  Open Postman.
2.  Click **Import**.
3.  Drag and drop the `.postman_collection.json` files from this directory.
4.  Each file will create a new collection in Postman with pre-configured requests.

## Included Collections

- `audit-v1-audit`
- `customer-v1-customer`
- `order-v1-order`
- `payment-v1-payment`
- `product-v1-inventory`
- `product-v1-product`
- `store-v1-store`
- `user-v1-merchant`
- `user-v1-role`
- `user-v1-user`

## Environment Variables

The collections are configured to use a `{{baseUrl}}` variable. Make sure to create an Environment in Postman and set `baseUrl` to your API gateway URL (e.g., `http://localhost:8080`).
