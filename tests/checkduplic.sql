select
count(*) as total,
company_name,
contact_name
from {{ref("customers")}}
group by company_name, contact_name
having total > 1