{{ config(
  materialized = 'view'
) }}

SELECT
  host_id,
  NVL(
    host_name,
    'anonymous'
  ) host_name,
  is_superhost,
  created_at,
  updated_at
FROM
  {{ ref('src_hosts') }}
