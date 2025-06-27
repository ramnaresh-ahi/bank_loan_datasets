
WITH Targeted_applicant AS(
    SELECT 
        *
    FROM 
        {{ ref('stg_curr_application')}}
    WHERE
        income_amt > (SELECT AVG(income_amt) FROM {{ ref('stg_curr_application')}})
        AND 
        credit_amt > (SELECT AVG(credit_amt) FROM {{ ref('stg_curr_application')}})

),

Prime_applicant AS(
    SELECT 
        *
    FROM 
        Targeted_applicant
    WHERE
        marital_status = 'Married'
        AND
        children_cnt > 0
        AND
        own_house = true
        AND
        own_car = true
        AND
        age BETWEEN 25 and 60
)

SELECT
    *
FROM
    Prime_applicant
ORDER BY
    income_amt DESC,
    credit_amt DESC