
WITH Curr_application AS(
    SELECT
        sk_id_curr as curr_id,
        name_contract_type as contract_type,
        amt_income_total as income_amt,
        amt_credit as credit_amt,
        amt_annuity as annuity_amt,
        amt_goods_price as goods_price,
        name_type_suite as suite_type,
        name_income_type as income_type,
        occupation_type as occupation,
        organization_type as organization,
        name_education_type as Education,
        code_gender as gender,
        DATE_SUB(CURRENT_DATE(), INTERVAL ABS(days_birth) DAY) AS date_of_birth,
        DATE_DIFF(CURRENT_DATE(), DATE_SUB(CURRENT_DATE(), INTERVAL ABS(days_birth) DAY), YEAR) AS age,
        name_family_status as marital_status,
        cnt_children as children_cnt,
        flag_own_realty as own_house,
        flag_own_car as own_car

    From
        raw-data-bank-loan.raw.application_data
)

SELECT 
    * 
FROM 
    Curr_application
