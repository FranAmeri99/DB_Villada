CALL GetOfficeByCountry('USA');
CALL GetOfficeByCountry('France');


CALL CountOrderByStatus('Shipped',@total);
SELECT @total;

CALL CountOrderByStatus('in process',@total);
SELECT @total AS  total_in_process;

SET @counter = 1;
CALL set_counter(@counter,1);

