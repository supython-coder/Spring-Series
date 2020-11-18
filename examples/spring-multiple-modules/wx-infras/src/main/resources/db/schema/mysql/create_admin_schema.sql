CREATE TABLE admin_permission_setting
(
    id                 BIGINT AUTO_INCREMENT,
    tenant_id          BIGINT                                                          NOT NULL,
    deleted_at         TIMESTAMP DEFAULT NULL,
    created_at         TIMESTAMP DEFAULT CURRENT_TIMESTAMP                             NOT NULL,
    updated_at         TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL,

    permission_name    VARCHAR(128)                                                    NOT NULL,
    wx_application_id BIGINT                                                          NOT NULL,
    directory          VARCHAR(512)                                                    NOT NULL,

    PRIMARY KEY (id),
    CONSTRAINT uniq_admin_permission_setting_permission_name UNIQUE (tenant_id, permission_name)
);
CREATE TABLE admin_wx_application
(
    id         BIGINT AUTO_INCREMENT,
    tenant_id  BIGINT                                                          NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP                             NOT NULL,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL,

    name       VARCHAR(128)                                                    NOT NULL,

    PRIMARY KEY (id),
    CONSTRAINT uniq_admin_wx_application_name UNIQUE (tenant_id, name)
);

