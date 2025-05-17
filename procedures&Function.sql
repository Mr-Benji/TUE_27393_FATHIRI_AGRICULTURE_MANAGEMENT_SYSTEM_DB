CREATE OR REPLACE PROCEDURE get_farm_activities (
  p_farmer_id IN NUMBER
) IS
  CURSOR c_acts IS
    SELECT a.activity_type,
           a.amount,
           a.activity_date
      FROM Activity a
      JOIN Season  s ON a.season_id = s.season_id
     WHERE s.asset_id IN (
       SELECT asset_id FROM Asset WHERE farmer_id = p_farmer_id
     );
BEGIN
  FOR rec IN c_acts LOOP
    DBMS_OUTPUT.PUT_LINE(
      rec.activity_type || ': ' ||
      rec.amount        || ' on ' ||
      TO_CHAR(rec.activity_date, 'YYYY-MM-DD')
    );
  END LOOP;
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('No activities for farmer ' || p_farmer_id);
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END get_farm_activities;
/
