create or replace function ST_IntersectionArray(geometries geometry[]) returns geometry as $$
declare
   i integer;
   new_one geometry;
begin
    new_one := geoms[1];
    FOR i IN 1..array_length(geometries,1) LOOP
      new_one:= ST_Intersection(new_one, geometriess[i]);
    END LOOP;
    return new_one;
end;
$$
LANGUAGE plpgsql;
