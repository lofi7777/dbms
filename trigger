creation

 create trigger t1
  2  before insert on sailors
  3  for each row
  4  declare
  5  v_user varchar(20);
  6  begin
  7  v_user:=user;
  8  dbms_output.put_line('you inserted a line' || v_user);
  9  end;
 10  /

insertion

SQL> create trigger t
  2  before update of sid on sailors
  3  for each row
  4  begin if(:new.sid<80) then
  5  raise_application_error(-20016,'cannot update');
  6  end if;
  7  end;
  8  /

deletion

create trigger t2
  2  after delete on sailors
  3  for each row
  4  begin if(:old.sid=22) then
  5  raise_application_error(-20027,'he is ceo how dare u fire him....');
  6  end if;
  7  end;
  8  /

