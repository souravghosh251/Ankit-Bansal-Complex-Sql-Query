
SELECT DISTINCT a.num as ConsecutiveNums
from logs as a
INNER JOIN logs b on a.id=b.id-1 AND a.num=b.num
INNER JOIN logs c on a.id=c.id-2 AND a.num=c.num