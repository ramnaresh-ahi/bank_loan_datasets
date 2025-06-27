
WITH Targeted_applicant AS(
    SELECT
        *
    FROM
        {{ ref('stg_prev_application')}}
    WHERE
        application_amt > (SELECT AVG(application_amt) FROM {{ ref('stg_prev_application')}})
        AND
        credit_amt > (SELECT AVG(credit_amt) From {{ ref('stg_prev_application')}})

)

SELECT
    *
FROM
    Targeted_applicant
ORDER BY
    application_amt DESC, credit_amt DESC
