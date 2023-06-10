CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `digital_menu`.`v_historico_pedidos` AS
    SELECT 
        `pedidos`.`id` AS `id_pedido`,
        `pedidos`.`date_hour` AS `date_hour`,
        DATE_FORMAT(`pedidos`.`date_hour`,
                '%d/%m/%Y %H:%i:%s') AS `date_hour_formatted`,
        `pedidos`.`total` AS `total`,
        `clientes`.`customer_name` AS `customer_name`,
        `pedidos`.`obs` AS `obs`,
        `pedidos`.`id_company` AS `id_company`,
        `pedidos`.`table_number` AS `table_number`,
        `pedidos`.`checked` AS `checked`
    FROM
        (`digital_menu`.`clientes`
        JOIN `digital_menu`.`pedidos`)
    WHERE
        (`pedidos`.`id_customer` = `clientes`.`id`)
    ORDER BY `pedidos`.`date_hour` DESC;