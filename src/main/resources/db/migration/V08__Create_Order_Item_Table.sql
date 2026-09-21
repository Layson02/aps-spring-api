CREATE TABLE tb_order_item (
    order_id BIGINT NOT NULL, -- FK para tb_order
    product_id BIGINT NOT NULL, -- FK para tb_product
    quantity INT,
    price DOUBLE PRECISION,
    PRIMARY KEY (order_id, product_id),
    CONSTRAINT fk_order_item_order FOREIGN KEY (order_id) REFERENCES tb_order(id),
    CONSTRAINT fk_order_item_product FOREIGN KEY (product_id) REFERENCES tb_product(id)
);