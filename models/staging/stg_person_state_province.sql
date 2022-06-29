with
    source_data as (
        select 
            stateprovinceid
            , countryregioncode
            , name as state
            , stateprovincecode
            , isonlystateprovinceflag
            , territoryid
            , rowguid
            , modifieddate
        from {{source('adventure_works', 'person_stateprovince')}}
)
select *
from source_data