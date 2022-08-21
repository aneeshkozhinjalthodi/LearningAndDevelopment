CREATE OR REPLACE FUNCTION public.get_horizontal_bar(p_char character varying, p_size integer)
 RETURNS text
 LANGUAGE plpgsql
AS $function$
DECLARE
v_text text;
v_sql text;
BEGIN
v_sql:='select array_to_string(array_agg(h),'''') from (select $1 as h,generate_series(1,$2))t';
EXECUTE v_sql into v_text using p_char,p_size;
RETURN v_text;
END;
$function$;

CREATE OR REPLACE FUNCTION draw_happy_new_year(v_char_length integer)
RETURNS text
Language plpgsql
AS 
$$
DECLARE 
c integer:=1;
c2 integer:=1;
v_text text:='';
v_start integer;
v_end integer;
v_mid integer;
BEGIN

if v_char_length >=6 and v_char_length %2=0 then

    v_start:=1;
    v_mid=v_char_length/2;
    v_end=v_char_length-1;

    LOOP
        EXIT WHEN c=v_char_length;
        c2:=v_start;
        LOOP
            EXIT WHEN c2=v_char_length or c=v_mid;
            v_text:=case when c2 in(v_start,v_end) then v_text||'H' else v_text||' ' end;
            c2:=c2+1;
        END LOOP;
        v_text:=case when c=v_mid then v_text||get_horizontal_bar('H',v_end)||E'\n' else v_text||E'\n' end;
        c:=c+1;
    END LOOP;
    c:=v_start;
    c2:=v_start;

    v_text:=v_text||E'\n';
    LOOP
        EXIT WHEN c=v_char_length;
        c2:=v_start;
        LOOP
            EXIT WHEN c2=v_char_length or c in (v_start,v_mid);
            v_text:=case when c2 in (v_start,v_end) then v_text||'A' else v_text||' ' end;
            c2:=c2+1;
        END LOOP;
        v_text:=case when c in(v_mid,v_start) then v_text||get_horizontal_bar('A',v_end)||E'\n' else v_text||E'\n' end;
        c:=c+1;
    END LOOP;

    c:=v_start;
    c2:=v_start;

    v_text:=v_text||E'\n';

    LOOP
        EXIT WHEN c=v_char_length;
        c2:=v_start;
        LOOP
            EXIT WHEN c2=v_char_length or c in (v_start,v_mid);
            v_text:=case when (c2 in (v_start,v_end)) and c <=v_mid then v_text||'P' when (c2=v_start) and c >v_mid then v_text||'P' else v_text||' ' end;
            c2:=c2+1;
        END LOOP;
        v_text:=case when c in (v_mid,v_start) then v_text||get_horizontal_bar('P',v_end)||E'\n' else v_text||E'\n' end;
        c:=c+1;
    END LOOP;

    c:=v_start;
    c2:=v_start;

    v_text:=v_text||E'\n';

    LOOP
        EXIT WHEN c=v_char_length;
        c2:=v_start;
        LOOP
            EXIT WHEN c2=v_char_length or c in (v_start,v_mid);
            v_text:=case when (c2 in (v_start,v_end)) and c <=v_mid then v_text||'P' when (c2=v_start) and c >v_mid then v_text||'P' else v_text||' ' end;
            c2:=c2+1;
        END LOOP;
        v_text:=case when c in (v_mid,v_start) then v_text||get_horizontal_bar('P',v_end)||E'\n' else v_text||E'\n' end;
        c:=c+1;
    END LOOP;

    c:=v_start;
    c2:=v_start;

    v_text:=v_text||E'\n';

    LOOP
        EXIT WHEN c=v_char_length;
        c2:=v_start;
        LOOP
            EXIT WHEN c2=v_char_length or c=v_mid or c=v_end;
            v_text:=case when (c2 in (v_start,v_end)) and c <=v_mid then v_text||'Y' when (c2=v_end) and c >v_mid then v_text||'Y' else v_text||' ' end;
            c2:=c2+1;
        END LOOP;
        v_text:=case when c=v_mid  or c=v_end then v_text||get_horizontal_bar('Y',v_end)||E'\n' else v_text||E'\n' end;
        c:=c+1;
    END LOOP;

    c:=v_start;
    c2:=v_start;

    v_text:=v_text||E'\n\n\n\n\n';

    LOOP
        EXIT WHEN c=v_char_length;
        c2:=v_start;
        LOOP
            EXIT WHEN c2=v_char_length;
            v_text:=case when c=c2 or c2=v_end or c2=v_start then v_text||'N' else v_text||' ' end;
            c2:=c2+1;
        END LOOP;
        v_text:=v_text||E'\n';
        c:=c+1;
    END LOOP;

    c:=v_start;
    c2:=v_start;

    v_text:=v_text||E'\n';

    LOOP
        EXIT WHEN c=v_char_length;
        c2:=v_start;
        LOOP
            EXIT WHEN c2=v_char_length or c in (v_start,v_mid,v_end);
            v_text:=case when c not in (v_start,v_mid,v_end) and c2=v_start then v_text||'E' else v_text||' ' end;
            c2:=c2+1;
        END LOOP;
        v_text:=case when c in (v_mid,v_start,v_end) then v_text||get_horizontal_bar('E',v_end)||E'\n' else v_text||E'\n' end;
        c:=c+1;
    END LOOP;


    c:=v_start;
    c2:=v_start;

    v_text:=v_text||E'\n';

    LOOP
        EXIT WHEN c=v_char_length;
        c2:=v_start;
        LOOP
            EXIT WHEN c2=v_char_length;
            v_text:=case when c2=c then v_text||'W' else v_text||' ' end;
            c2:=c2+1;
        END LOOP;
        c2:=v_char_length;
        LOOP
            EXIT WHEN c2=0;
            v_text:=case when c2=c then v_text||'W' else v_text||' ' end;
            c2:=c2-1;
        END LOOP;
        c2:=v_start;
        LOOP
            EXIT WHEN c2=v_char_length;
            v_text:=case when c2=c then v_text||'W' else v_text||' ' end;
            c2:=c2+1;
        END LOOP;
        c2:=v_char_length;
        LOOP
            EXIT WHEN c2=0;
            v_text:=case when c2=c then v_text||'W' else v_text||' ' end;
            c2:=c2-1;
        END LOOP;
        

        v_text:=v_text||E'\n';
        c:=c+1;
        
    END LOOP;


    c:=v_start;
    c2:=v_start;

    v_text:=v_text||E'\n\n\n\n\n';

    LOOP
        EXIT WHEN c=v_char_length;
        c2:=v_start;
        LOOP
            EXIT WHEN c2=v_char_length or c in (v_mid,v_end);
            v_text:=case when (c2 in (v_start,v_end)) and c <=v_mid then v_text||'Y' when (c2=v_end) and c >v_mid then v_text||'Y' else v_text||' ' end;
            c2:=c2+1;
        END LOOP;
        v_text:=case when c in (v_mid,v_end) then v_text||get_horizontal_bar('Y',v_end)||E'\n' else v_text||E'\n' end;
        c:=c+1;
    END LOOP;


    c:=v_start;
    c2:=v_start;

    v_text:=v_text||E'\n';

    LOOP
        EXIT WHEN c=v_char_length;
        c2:=v_start;
        LOOP
            EXIT WHEN c2=v_char_length or c in (v_start,v_mid,v_end);
            v_text:=case when c not in (v_start,v_mid,v_end) and c2=v_start then v_text||'E' else v_text||' ' end;
            c2:=c2+1;
        END LOOP;
        v_text:=case when c in (v_mid,v_start) or c=v_end then v_text||get_horizontal_bar('E',v_end)||E'\n' else v_text||E'\n' end;
        c:=c+1;
    END LOOP;

    c:=v_start;
    c2:=v_start;

    v_text:=v_text||E'\n';
    LOOP
        EXIT WHEN c=v_char_length;
        c2:=v_start;
        LOOP
            EXIT WHEN c2=v_char_length or c in (v_start,v_mid);
            v_text:=case when c2 in (v_start,v_end) then v_text||'A' else v_text||' ' end;
            c2:=c2+1;
        END LOOP;
        v_text:=case when c in (v_mid,v_start) then v_text||get_horizontal_bar('A',v_end)||E'\n' else v_text||E'\n' end;
        c:=c+1;
    END LOOP;


    c:=v_start;
    c2:=v_start;

    v_text:=v_text||E'\n';
    LOOP
        EXIT WHEN c=v_char_length;
        c2:=v_start;
        LOOP
            EXIT WHEN c2=v_char_length or c in (v_start,v_mid);
            v_text:=case when c2=v_start or (c2=v_end and c <v_mid) or ((c-c2)=0 and c > v_mid)then v_text||'A' else v_text||' ' end;
            c2:=c2+1;
        END LOOP;
        v_text:=case when c in (v_mid,v_start) then v_text||get_horizontal_bar('A',v_end)||E'\n' else v_text||E'\n' end;
        c:=c+1;
    END LOOP;


    RETURN v_text;
else 
raise notice E'length should be an even number and greater than or equal to 6\n eg :  select* from draw_happy_new_year(6)';
RETURN NULL::text;
end if;
END;

$$;




