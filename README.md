# DB-Assignment-
# 1. Explain the relationship between the "Product" and "Product_Category" entities from the above diagram.

-> Product Table: This is like a big list of all the products available. Each product has its own entry, showing things like its name, description, price, and a special number to identify it (let's call it a product ID). Additionally, each product is linked to a category, like "Clothing" or "Electronics." We keep track of this connection by including a number that represents the category it belongs to (this number is called a category ID).

-> Product_Category Table: This table is like a list of all the different categories we have, such as "Clothing," "Electronics," "Home Goods," etc. Each category has its own entry with a unique number to identify it (category ID), along with a name and description.

# Relationship :

-> One Product: Every product belongs to just one category. For example, a specific pair of shoes is only listed under "Footwear," not "Footwear" and "Kitchen Appliances" at the same time.
Many Products: On the other hand, each category can have many products listed under it. So, the "Electronics" category might include TVs, phones, laptops, and more.

# How It Works:

-> In the Product table, we include a category ID number to show which category each product falls under. This number acts as a reference to the corresponding entry in the Product_Category table.
By doing this, we make sure that each product is always associated with a valid category. We can't add a product without assigning it to a category that already exists.

# 2. How could you ensure that each product in the "Product" table has a valid category assigned to it?

There are two main methods to ensure each product in the "Product" table has a valid category assigned to it:

-> Foreign Key Constraint (Preferred):

This method leverages the power of database relationships to enforce data integrity. Here's how it works:

Define the Relationship: When creating the database schema, define a foreign key constraint on the category_id column in the "Product" table.
Foreign Key Points To: This foreign key will reference the primary key (usually an id column) of the "Product_Category" table.
Enforcing Validity: The database enforces this constraint. When inserting a new product, it checks if the provided category_id exists in the "Product_Category" table

-> NOT NULL Constraint (Less Recommended):

While not as strong as a foreign key constraint, you can also add a NOT NULL constraint on the category_id column in the "Product" table. This approach ensures that every product record has a category ID assigned, but it doesn't guarantee the validity of that ID.


