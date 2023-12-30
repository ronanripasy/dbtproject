with calc_employees AS (
    select
    datediff(year, birth_date, current_date) as age,
    datediff(year, hire_date, current_date) as lengthofservice,
    first_name || ' ' || last_name as name,
    *
    from {{ source('sources', 'employees') }}
)
select * from calc_employees