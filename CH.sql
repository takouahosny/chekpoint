 creating customer
CREATE TABLE CUSTOMER (
    Customer_id VARCHAR2(20) PRIMARY KEY,
    Customer_name VARCHAR2(20) NOT NULL,
    Customer_tel NUMBER
)

-- creating product table 
CREATE TABLE PRODUCT (
    PRODUCT_id VARCHAR2(20) PRIMARY KEY,
    PRODUCT_name VARCHAR2(20) NOT NULL,
    PRICE NUMBER CHECK (PRICE> 0)
)
-- creating orders table
CREATE TABLE ORDERS(
    Customer_id VARCHAR2(20),
    PRODUCT_id VARCHAR2(20),
    Quantity NUMBER,
    Total_amount NUMBER,
    CONSTRAINT fk1 FOREIGN KEY (Customer_id) REFERENCES CUSTOMER(Customer_id),
    CONSTRAINT fk2 FOREIGN KEY (PRODUCT_id) REFERENCES PRODUCT(PRODUCT_id)
) 
-- adding category column to product
ALTER TABLE PRODUCT ADD CATEGORY VARCHAR2(20)
-- adding orderDate to orders
ALTER TABLE ORDERS ADD OrderDate DATE DEFAULT SYSDATE