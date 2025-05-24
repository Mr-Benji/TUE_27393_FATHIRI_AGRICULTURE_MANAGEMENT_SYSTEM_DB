CREATE OR REPLACE PACKAGE farm_pkg IS
  PROCEDURE get_farm_activities(p_farmer_id IN NUMBER);
  FUNCTION  get_total_yield(p_farmer_id IN NUMBER) RETURN NUMBER;
END farm_pkg;
/
CREATE OR REPLACE PACKAGE BODY farm_pkg IS

  PROCEDURE get_farm_activities(p_farmer_id IN NUMBER) IS
  BEGIN
    get_farm_activities(p_farmer_id); 
  END;

  FUNCTION get_total_yield(p_farmer_id IN NUMBER) RETURN NUMBER IS
    v_total NUMBER;
  BEGIN
    SELECT SUM(o.actual_yield)
      INTO v_total
      FROM Outcome o
      JOIN Season  s ON o.season_id = s.season_id
     WHERE s.asset_id IN (
       SELECT asset_id FROM Asset WHERE farmer_id = p_farmer_id
     );
    RETURN NVL(v_total, 0);
  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      RETURN 0;
    WHEN OTHERS THEN
      RETURN -1;
  END get_total_yield;

END farm_pkg;
/
