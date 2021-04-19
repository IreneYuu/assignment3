select LastName, FirstName
from Member m inner join
(select distinct e1.MemberID
from Entry e1, Entry e2, Entry e3
where e1.MemberID=e2.MemberID
and e1.Year=2013 and e2.Year=2014 and e3.Year=2015) newtable
on m.MemberID = newtable.MemberID;
