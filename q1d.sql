select metabolism, count(*) AS CountOf
from annotation
group by metabolism
having count(*)>1;
