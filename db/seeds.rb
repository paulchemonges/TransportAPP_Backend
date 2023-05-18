# Create sellers
seller1 = Seller.create(name: "John Doe", contact_information: "john@example.com")
seller2 = Seller.create(name: "Jane Smith", contact_information: "jane@example.com")

# Create buyers
buyer1 = Buyer.create(name: "Alice Brown", contact_information: "alice@example.com", shipping_address: "123 Main St")
buyer2 = Buyer.create(name: "Bob Green", contact_information: "bob@example.com", shipping_address: "456 Elm St")

# Create products
product1 = Product.create(name: "Mabati", description: "Roofing sheets", price: 9.99, quantity: 10, seller: seller1)
product2 = Product.create(name: "Cement", description: "Building material", price: 7.99, quantity: 20, seller: seller1)
product3 = Product.create(name: "Bricks", description: "Construction blocks", price: 14.99, quantity: 15, seller: seller2)

# Create some orders
Order.create(buyer_id: 1, product_id: 1, quantity: 2, total_price: 19.98, order_status: 'Pending')
Order.create(buyer_id: 2, product_id: 3, quantity: 1, total_price: 14.99, order_status: 'Completed')

# Create transporters
Transporter.create(name: 'Ian', contact_information: '0702363690', vehicle_details: 'Grey,Fielder KBC 134L')
Transporter.create(name: 'Ken', contact_information: '0727316995', vehicle_details: 'White, Probox KCD 453M')
# Add more transporters as needed
