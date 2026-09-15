CREATE TABLE tb_order (
    id BIGSERIAL PRIMARY KEY,
    moment TIMESTAMPTZ NOT NULL,
    status INT NOT NULL,
    client_id BIGINT NOT NULL,
    CONSTRAINT fk_order_client FOREIGN KEY (client_id) REFERENCES tb_user(id)
);