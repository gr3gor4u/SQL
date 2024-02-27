use ace_of_base_grachev
go 
create trigger trig_delete_dept_no_grach1 on project_grach after delete as
update works_on_grach
set works_on_grach.project_no_GRACH=null
from deleted 
where works_on_grach.project_no_GRACH=deleted.project_no_GRACH
go 
create trigger trig_update_dept_no_grach1 on project_grach after update as 
if update (project_no_GRACH)
 begin 
  if (select works_on_grach.project_no_GRACH from works_on_grach,inserted
   where works_on_grach.project_no_GRACH=inserted.project_no_GRACH)is null 
   begin
    rollback transaction 
	raiserror ('error,trigger :trig_update_dept_no_grach1, table:project_grach',16,1)
   end
else print 'update done'
end