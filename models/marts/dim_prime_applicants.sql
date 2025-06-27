
WITH Prime_applicant AS(
    SELECT  
        *
    FROM
        {{ ref('int_curr_application')}}
)

SELECT 
    *
FROM    
    Prime_applicant

    