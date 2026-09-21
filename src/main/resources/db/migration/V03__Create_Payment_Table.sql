CREATE TABLE tb_payment (
    id BIGINT PRIMARY KEY,
    moment TIMESTAMPTZ NOT NULL,
    order_id BIGINT UNIQUE NOT NULL,
    CONSTRAINT fk_payment_order FOREIGN KEY (order_id) REFERENCES tb_order(id)
);