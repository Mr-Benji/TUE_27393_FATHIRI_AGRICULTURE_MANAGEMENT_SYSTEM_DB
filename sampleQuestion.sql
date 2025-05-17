

/*For each farmer, calculate the yield growth percentage of each season compared to their previous season’s actual yield.
 This shows how a farmer’s performance is improving (or declining) over time.
 
 Yield Growth % =

/ last_season_actual_yield\] × 100
Why it matters:
Tracks farmer improvement trends, helping your MIS identify who may need extra support or training.

*/

SELECT
  s.farmer_id,
  s.season_id,
  o.actual_yield,
  LAG(o.actual_yield) 
    OVER (PARTITION BY s.farmer_id ORDER BY o.harvest_date) 
    AS prev_yield,
  ROUND(
    (o.actual_yield
     - LAG(o.actual_yield) 
       OVER (PARTITION BY s.farmer_id ORDER BY o.harvest_date))
    / LAG(o.actual_yield) 
       OVER (PARTITION BY s.farmer_id ORDER BY o.harvest_date)
    * 100,
    2
  ) AS yield_growth_pct
FROM
  Season s
  JOIN Outcome o ON s.season_id = o.season_id
ORDER BY
  s.farmer_id,
  o.harvest_date;



