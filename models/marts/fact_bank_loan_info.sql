
WITH Fact_bank_loan_info AS (
    SELECT
        p.curr_id,
        t.prev_id,
        SUM(p.credit_amt) AS prime_total_credit,
        SUM(t.credit_amt) AS targeted_total_credit
    FROM
        {{ ref('dim_prime_applicants') }} p
    JOIN
        {{ ref('dim_targeted_applicants') }} t USING(curr_id)
    GROUP BY
        p.curr_id, t.prev_id
)

SELECT
    *
FROM
    Fact_bank_loan_info
