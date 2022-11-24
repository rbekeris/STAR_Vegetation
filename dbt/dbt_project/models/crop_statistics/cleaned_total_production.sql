
SELECT
   index,
   "Kultūraugi" as Crop_Name_LV,
   CAST(year AS INTEGER),
   CASE 
      WHEN value = '…' THEN Null
      WHEN value = 'X' THEN Null
      WHEN value = '.' THEN Null
      ELSE CAST(value AS DOUBLE PRECISION) * 1000
   END AS value
from {{ source('latvian_statistics_office', 'total_production') }}
