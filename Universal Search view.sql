CREATE OR REPLACE VIEW v_universal_search_app500 AS
SELECT 'Page: '||entry_text AS entry_text, entry_target 
FROM apex_application_list_entries 
WHERE 
    list_name='Desktop Navigation Menu' 
    AND application_id=500

UNION ALL

SELECT 
    'Country: '||country_name,
    'f?p=&'||'APP_ID.:9:&'||'SESSION.::&'||'DEBUG.:RP,9:P9_COUNTRY_ID:'||country_id
FROM countries

UNION ALL

SELECT 
    'Departments: '||department_name,
    'f?p=&'||'APP_ID.:8:&'||'SESSION.::&'||'DEBUG.:RP,8:P8_DEPARTMENT_ID:'||department_id
FROM departments

UNION ALL

SELECT 
    'Employee: '||first_name||' '||last_name,
    'f?p=&'||'APP_ID.:10:&'||'SESSION.::&'||'DEBUG.:RP,10:P10_EMPLOYEE_ID:'||employee_id
FROM employees

UNION ALL

SELECT 
    'Job: '||job_title,
    'f?p=&'||'APP_ID.:11:&'||'SESSION.::&'||'DEBUG.:RP,11:P11_JOB_ID:'||job_id
FROM jobs

UNION ALL

SELECT 
    'Location: '||street_address||' '||postal_code,
    'f?p=&'||'APP_ID.:12:&'||'SESSION.::&'||'DEBUG.:RP,12:P12_LOCATION_ID:'||location_id
FROM locations

UNION ALL

SELECT 
    'Region: '||region_name,
    'f?p=&'||'APP_ID.:13:&'||'SESSION.::&'||'DEBUG.:RP,13:P13_REGION_ID:'||region_id
FROM regions
;
