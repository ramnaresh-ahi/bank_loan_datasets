
With Prev_application AS(
    SELECT 
        sk_id_prev as prev_id,
        sk_id_curr as curr_id,
        name_contract_type as contract_type,
        amt_annuity as annuity_amt,
        amt_application as application_amt,
        amt_credit as credit_amt,
        amt_down_payment as down_payment,
        amt_goods_price as goods_price,
        name_contract_status as contract_status,
        name_client_type as client_type,
        channel_type,
        name_seller_industry as seller_industry
    FROM
        raw-data-bank-loan.raw.previous_application
        
)

SELECT
    * 
FROM
    Prev_application