select *
FROM
(SELECT
    ctp.Crop_Name_LV,
    ctp.year,
    NULLIF(ctp.value, 0) / NULLIF(tpa.value, 0) as yield
from {{ ref('cleaned_total_production') }} as ctp
LEFT JOIN {{ ref('cleaned_total_planted_area') }} as tpa
ON ctp.year=tpa.year AND ctp.Crop_Name_LV=tpa.Crop_Name_LV
) sub_query
WHERE sub_query.yield is not Null
ORDER BY sub_query.yield DESC