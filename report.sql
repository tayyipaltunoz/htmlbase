set pagesize 50000
SET MARKUP HTML ON SPOOL ON PREFORMAT OFF ENTMAP ON -
HEAD "<TITLE>/BL Daily Data</TITLE> -
<STYLE type='text/css' > -
table {font-size:9px; border:1px; border-style:inset; text-align:center; padding:3px 3px } -
th {color:black;padding:8px; border:1px solid black;background:#ABB7FF } -
td {font-weight:bold ; border:1px solid black } -
<!-- BODY {background: #FFFFFF} --> -
</STYLE>" -
BODY "TEXT='#0000'" -
TABLE "WIDTH='100%' "

column c1 heading 'by Tayyip Altunöz' Format 99999999 

spool /home/scriptuser/tayyip/htmlbase/html.html


SELECT * from table_name;

exit
spool off;


