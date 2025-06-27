
WITH Targeted_applicant AS(
    SELECT
        *
    FROM
        {{ ref('int_prev_application')}}
)

SELECT
    *
FROM
    Targeted_applicant
