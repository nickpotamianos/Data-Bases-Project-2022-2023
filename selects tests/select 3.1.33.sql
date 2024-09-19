/* test or 3.1.33 */

SELECT *
    FROM worker w join admin a 
    on w.wrk_AT=a.adm_AT
    order by wrk_br_code;
