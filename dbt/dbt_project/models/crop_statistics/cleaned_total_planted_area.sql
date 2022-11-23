
SELECT
   index,
   "Kultūraugi" as Crop_Name_LV,
   year,
   CASE 
      WHEN value = '…' THEN Null
      WHEN value = 'X' THEN Null
      ELSE value
   END AS value
from {{ source('latvian_statistics_office', 'total_planted_area') }}
