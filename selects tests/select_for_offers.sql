SELECT dst_name, name, last_name,promo_code_res, down_payment
FROM RESERVATION_OFFERS r JOIN OFFERS o
on r.promo_code_res= o.promo_code
JOIN DESTINATION D 
on o.dst_id= d.dst_id
WHERE promo_code_res= "ABROAD4"
LIMIT 40;