select DISTINCT m.LastName, m.FirstName, m.MemberID 
from Member m
inner join Entry e
on m.MemberID = e.MemberID
where e.MemberID NOT in (select distinct MemberID from Entry where year = 2013);

