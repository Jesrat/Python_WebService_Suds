
select  decode(l.estado_wf,null,'1'),
'HGSUE:MSISDN=503'||a.cod_num||';'||chr(13)||
'HGSUI:MSISDN=503'||a.cod_num||',IMSI='||a.imsi||',PROFILE='||decode(g.tipo_prepago||decode(l.estado_wf,null,'1'),/*prepgo*/'11','311'/**/,'21','312',/**/'2Provisionado','312'/**/,'1','301'/**/,'Provisionado','303')||';'
from te_numeros a left join te_numeros_prepago g on a.cod_num=g.cod_num left join  tcg_usuarios_rpv l on  l.numero_publico =to_char(a.cod_num) and (l.estado_wf !='Baja' and l.fecha_baja is null)
where a.cod_num in( 77077841);


/* [03:59:07 p.m.] Nancy Navarro: porlo q se coloca en estado preactivo para q generen la factura y q nos confirmen para regresarlo a estado asignado facturable
[03:59:17 p.m.] Nancy Navarro: eso les podes poner  y  lo q haces en colocarla en estado 51 en la te_numeros nada mas ...ese id va a regresar confirmandote q ya realizaron la fatura
[03:59:52 p.m.] Nancy Navarro: entonces la regersas a estado 7  */

select * from tcg_usuarios_rpv where numero_publico= 25348300;

61726373

phone([36350992,36351008,36351009,36356787,36356788,36356789,36356790,36356792,36356813,36356836])


Select sysdate||' Hola usted esta conectado a: '||Global_Name||' Recuerde hacer commit si hace alguna transaccion.'||chr(10)||' Saludos.'||chr(10)||'Att. Yo :-)'msg From Global_Name;

 SELECT llama_tuxedo('|PP_GA_FICHPP13|71011106||00|vcDesPrePago|VCESTAPREP|vcSbEstaPrep|')/*INTO v_estaltam*/ FROM DUAL;


select paqdes.des_paquete,a.cod_num,cmf.account_no,cmf.bill_period as ciclo,actper.tip_actper,rec.monto,inst.tenumscontrid,inst.cod_paquete,inst.fecha_alta alta_paquete,vant.tip_prepago,aa.cod_tipprepa,aa.cod_estaprep||aa.cod_sbestaprep estado,a.cod_numeroid
from te_numeros a join external_id_equip_map b on b.external_id=to_char(a.cod_num) and sysdate between b.active_date and nvl(b.inactive_date,to_date('01013000','ddmmyyyy'))
join cmf on cmf.account_no=b.account_no join tcg_paquetes_instancia inst on inst.cod_num = a.cod_num  and inst.ind_provision in (0,1,2) join tc_altamira_flex_parm rec on rec.cod_paquete=inst.cod_paquete
join ppga_abopreptar@link_ppgasv aa on aa.num_telefono = to_char(a.cod_num) join tc_prepaid_type vant on vant.tcpretypeid=rec.tcpretypeid left join tc_prepaid_type actper on actper.tcpretypeid=rec.tcpretypeid
/*pa*/join te_paquete paqdes on paqdes.cod_paquete=inst.cod_paquete
where a.cod_num =78157712;


71622370,71620068, 71632979,71623472,61181831,7851416


        ----(JGomez) Consulta semiglobal de una linea   :-)     V3.0  (optimizada para sqlplus)
    select  -- 'HGSUI:MSISDN=503'||a.cod_num||',IMSI='||a.imsi||',PROFILE=320;'||chr(13)hlr,
        a.fec_modif,h.account_no account,i.bill_period,
        cast(a.cod_estadoid||'|'||g.cod_estadoid||'|'||substr(b.des_estado,1,24) as char(30))estado,
        cast(d.cod_paquete||'|'||case when length(d.des_paquete)>45 then substr(d.des_paquete,1,42)||'...' else d.des_paquete end||'|'||
            decode(c.status||c.ind_provision,'A0','Pnd Alta','A1','Alta','B2','Pnd Baja','B3','Baja',c.status||c.ind_provision)as char(60))"COD|DES|EST  PLAN",
        cast(f.tip_prepago as char(2))tip_prepago,decode(g.tipo_prepago,1,'PREP',2, 'CC',4, 'TEL',NULL,'POST') uso,
        cast(j.cod_tipprepa||' '||j.cod_estaprep||j.cod_sbestaprep||'-'||k.est_tarjeta||k.sub_estado as char(10)) AA,
        cast(decode(estado_wf,null,'No vpn',estado_wf)||'|'||m.per_usinterno||'|'||m.per_usnacional||'|'||m.per_usinterna as char(25)) vpn,a.cod_num,a.swcustomerid,a.cod_num,c.tenumscontrid,a.cod_numeroid,a.icc,a.imei,a.imsi,a.teterminalid
        from te_numeros a left join te_estado_numero b on a.cod_estadoid = b.cod_estadoid left join tcg_paquetes_instancia c on a.cod_num=c.cod_num  and c.ind_provision in (0,1,2)
        -- ,substr(COD_NUM,1,1)
        left join te_paquete d on d.cod_paquete = c.cod_paquete left join tc_altamira_flex_parm e  on e.cod_paquete = d.cod_paquete left join tc_prepaid_type f on f.tcpretypeid=e.tcpretypeid
        left join te_numeros_prepago g on a.cod_num=g.cod_num left join external_id_equip_map h on h.external_id=to_char(a.cod_num) and sysdate between active_date and nvl(inactive_date,to_date('01013000','ddmmyyyy'))
        left join cmf i on i.account_no=h.account_no                                               left join  ppga_abopreptar@link_ppgasv j on j.num_telefono=to_char(a.cod_num) left join poge_tarjetas@link_opgesv  k on k.num_telefono=j.num_telefono
        left join  tcg_usuarios_rpv l on  l.numero_publico =to_char(a.cod_num) and (l.estado_wf !='Baja' and l.fecha_baja is null) left join tcg_permisos_usuarios_rpv m on l.tcgusuariosrpvid = m.tcgusuariosrpvid  and m.num_lista =1
        where 
        -- a.swcustomerid in(
         a.cod_num in( 
            61422674
                    )
    --and a.cod_estadoid != 7
    order by substr(a.COD_NUM,1,1),a.cod_estadoid;


select 'no_ha_recibido_el_bono',1 into fechaadq ,vABolton


select * from (select * 
from ppga_adquisiciones@link_ppgasv where num_telefono='64201301' and fec_instalac is not null and cod_bono = 'BIPC_32D'
and fec_alta between sysdate-5 and sysdate+1 and sec_baja is not null order by sec_actuacion desc)
where rownum <2;


 SELECT LLAMA_TUXEDO ('|PP_GA_FICHPP13|71011106||00|vcDesPrePago|'/*INTO v_estaltam*/ FROM DUAL;



SELECT ar.tcareasid,c.* FROM sw_case c  left join tc_areas ar on ar.descripcion=c.swfixtime and ar.estado='Alta' WHERE --  c.swstatus <>'Cerrado'  and
c.SWCASEID IN (    --  change_caseid
52906858
)order by c.SWCASEID;  

select * from te_numeros where cod_num=79945918;


update tec paq insta set B 3 fec_baja =sysdate where cod_num = 88888 and status||ind_provision not in ('A1','B3');

*/

desc TC_DETAIL_INPUT
TC_INPUT_FIELDS_VW
provision_msdp
tc_infox_msdp_smsp

--SDPSDP
 select a.* from table(tc_altamira_api_pkg.tc_datos_bolsas_fun(71715585)) a ;


8950304001610834490

select * from SW_CASE_USER

--update te_numeros set swcustomerid=9489745  where cod_num ='23149864';

HGSDP:MSISDN=50371868150,ALL;

HGSDP:IMSI=706040004840370,ALL;

select a.* from tcg_paquetes_instancia a where cod_num =78299238

--    delete from te_numeros_prepago a where cod_num ='72466263' and cod_numeroid=8688917;

select 'tn',cod_elementoid,cod_estadoid,cod_num,cod_numeroid,fec_modif,icc,imsi,num_akey,num_esn,swcreatedby  from te_numeros where cod_num=74500933   union all
select 'tnp',cod_elementoid,cod_estadoid,cod_num,cod_numeroid,fec_modif,icc,imsi,num_akey,num_esn,swcreatedby  from te_numeros_prepago where cod_num=74500933   ;

select * from TCG_NUMEROS_VW where cod_num ='25309756';

SELECT  llama_tuxedo('|'||to_char(sysdate,'yyyymmddhh24miss')||'|00000000|10|GA_CONTRANSALD|64204034|S| |0|10|') FROM dual ;

select * from(select cod_num||',' from tcg_paquetes_instancia a where a.status||a.ind_provision ='A1' and cod_paquete =732)where rownum<25;

select * from te_paquete where cod_paquete =21338;

(

--JG.Planes o paquetes de una linea
select cast(decode(a.status||a.ind_provision,'A0','Pnd Alta','A1','Alta','B2','Pnd Baja','B3','Baja',a.status||a.ind_provision)as char(8))estado,
b.des_paquete,tepaqscuentaid,tenumscontrid,a.*
from tcg_paquetes_instancia a left join te_paquete b on b.cod_paquete=a.cod_paquete where
cod_num in (      77013973   )
--tenumscontrid='3432405'
--and a.status||a.ind_provision ='A0'
--cod_paquete = '21332' and ind_provision =1
--and ind_provision in (0,1,2)
order by 1,a.tenumscontrid desc;

/*HIDE        

     update te_interfaz set net_mov=0 where teinterfazid in(19188383);  

    update tcg_paquetes_instancia set 
        -- cod_numeroid=cod_numeroid||1 
        --  cod_num=rtrim(cod_num,1),cod_numeroid=rtrim(cod_numeroid,1) 
    where tenumscontrid=5186588;

    update te_numeros_contrato set 
        -- cod_numeroid=cod_numeroid||1
        cod_numeroid=rtrim(cod_numeroid,1)
    where tenumscontrid=5364384;
    
    update te_numeros set 
        -- cod_estadoid=12
        cod_estadoid=6
    where cod_num=76646514;


     update te_componentes_no_red set ind_provision = 2 where tenumscontrid=  4438105;
     update te_movserv set ind_provision = 2 where tenumscontrid=  4438105;
    update tcg_paquetes_instancia set status='B',ind_provision=2    where tenumscontrid=4438105

*/

--  update tcg_paquetes_instancia set status='B',ind_provision =3  where  tenumscontrid=4948168;

--paquetes arbor
select decode(package_status,2,'BAJA',1,'ALTA')status,a.*,rowid from cmf_packages  a where package_instance_ID in(2095090);

--21196|(21196) Plan Milenio Staff Telefonica|Alta
--300015|Extra de Navegacion 3.5G Navega Staff|Alta    pueden estar de alta al mismo tiempo

--21172
select * from tcg_paquetes_configuracion  where cod_paquete in ('141','617') ;

select * from tcg_paquetes_instancia where cod_paquete ='701' and status||ind_provision ='A1'

select a.* from te_paquetes_cuenta a where tepaqscuentaid =4525108;

(

        --(JGomez)     PL/Cambio_estado
        declare   cursor lineas is select cod_num from te_numeros 
        where cod_num in (    79952556     );  
            estado number :=  51;
        begin for c in lineas
        loop
            update te_numeros set cod_estadoid =estado  where  cod_num =c.cod_num;  DBMS_OUTPUT.put_line('lineas afectadas: '||sql%rowcount);
            update te_numeros_prepago set cod_estadoid =estado  where  cod_num =c.cod_num; DBMS_OUTPUT.put_line('lineas afectadas: '||sql%rowcount);commit;
        end loop;
        end;
        /

)

select rowid,a.* from tcg_paquetes_instancia a where cod_num ='71969006';

select * from te_estado_numero
-- where lower(des_Estado) like '%enve%'
where cod_estadoid in (6)
order by 1 asc;

1,8,53



select rowid,a.* from poge_abobolsas@link_opgesv a where num_telefono ='78195307';

--USSD
select decode(trim(se_puede_cambiar),'S','ACTIVO','N','INACTIVO','UNKNOWN') as "ACTIVE?"
from table(tc_altamira_api_pkg.tc_consulta_propiedad_ussd_fun('64201552'))a;

-- CAMBIO DE USSD TRAS LLAMA
SELECT llama_tuxedo('|' || to_char(sysdate,'yyyymmddhh24miss') ||'|'||'0000000000|0|PP_GA_SETUSSDTL|61808089|S|0|0|00|USRBOI|') from dual

--historico de cambios USSD
select to_char(fec_operacion,'dd-mm-yyyy hh:mi:ss am') fec,b.des_tarea,dat_interfaz,rec_datos,env_datos,decode(regexp_substr(a.env_datos,'[^|]+', 1,2),'00','La operacion fue exitosa','Error')result
 from POCO_OPERAgen@link_opgesv a left join ppga_tareas@link_ppgasv b on b.cod_tarea = a.ide_operacion
where dat_interfaz='64201552'         and ide_operacion ='CUSS'
order by fec_operacion desc;


select tc_altamira_api_pkg.tc_count_x_codestarec('71905234')a from dual;

select tc_altamira_api_pkg.tc_consulta_tipbono('10000SxSS') from dual;

SELECT  llama_tuxedo('|'||to_char(sysdate,'yyyymmddhh24miss')||'|00000000|10|PP_GA_CONSBONO|64204034|S| |0|10|') FROM dual

select  a.* from poge_abobolsas@link_opgesv a where num_telefono ='79926163' order by to_char(ide_bolsa,'00')

select a.* from table(
                tc_altamira_api_pkg.tc_datos_trafico_func('77914821',to_date('01082016','ddmmyyyy'),to_date('29082016','ddmmyyyy'),'1','1')
                ) a;

   c_consulta_general_ppcs     CONSTANT VARCHAR (256) := ' Select LLAMA_TUXEDO(''|CS_DETUNIFI8|#NUM_TELEFONO#|#FECHA_INI#|#FECHA_FIN#|1|#FILTRO#|#MONEDA#|#ITEMS#|#TOKEN#|#CAMPOS#'') from dual ';
   c_consulta_adicional_ppcs   CONSTANT VARCHAR (256) := 'select LLAMA_TUXEDO(''|CS_INFO_ADI|#NUM_TELEFONO#|#FECHA#|#CID#|1|#INFADICIONAL#|#CATEGORIA#|#MONEDA#||#ELEMENTO#|#CAMPOS#'')from dual ';

Select LLAMA_TUXEDO('|CS_DETUNIFI8|77914821|20160801000000|20160829000000|1|SMS|1|50||nRegs') from dual

select  tc_altamira_api_pkg.tc_obtener_saldo_fun('78101434') from dual;

SWBAPPS.tabla_datos_recarga

select  tc_altamira_api_pkg.tc_listas_fun('77914821') from dual;

select  tc_altamira_api_pkg.tc_item_lista_fun('77914821','LI55') from dual;

select a.* from table(tc_altamira_api_pkg.tc_datos_recargas_fun('77914821',sysdate-45,sysdate,'O',1)) a;

select a.* from table(tc_altamira_api_pkg.tc_consulta_propiedad_ussd_fun('77065997')) a;

select a.* from table(tc_altamira_api_pkg.tc_datos_lista_fun('77914821')) a;

select a.* from table(tc_altamira_api_pkg.Tc_Sec_Actuacion_Fun2('77914821',sysdate-50)) a;

select  tc_altamira_api_pkg.tc_consulta_tipbono('90MINON') from dual;

select  tc_altamira_api_pkg.tc_count_x_codestarec('77914821') from dual;

select a.* from table(tc_altamira_api_pkg.tc_datos_trafico_adic_func('78334959',(sysdate-1),sysdate,' ','0')) a;

select a.* from table(tc_altamira_api_pkg.Func_Promociones_Lista('77914821')) a;

select tc_altamira_bonos_pkg.TC_CHECK_NUM_BONOS_FUN(61601162) from dual;

--OK --
SELECT  llama_tuxedo('|'||to_char(sysdate,'yyyymmddhh24miss')||'|00000000|10|PP_GA_CONSBONO|64204034|S| |0|10|') FROM dual

--OK
SELECT llama_tuxedo('|'||to_char(sysdate,'yyyymmddhh24miss')||'|00000000|10|PP_GA_ALTALI2|78342349|LI10|0|0|00|USRBOI|') FROM dual


--Acreditadcion de bonos completos                                                                                            ?Linea   ?bono    ?cobro
select llama_tuxedo('|'||to_char(sysdate,'yyyymmddhh24miss')||'|00000000|0|PP_GA_SOLBONO|78102510|US300FAV|0|1|USRBOI|') from dual;

select llama_tuxedo('|' || to_char(sysdate,'yyyymmddhh24miss') ||'|'||'0000000000|0|PP_GA_LISALTAI|71511675|LI06|1440016023056260|0|0|0|USRBOI|S|') from dual;

--update te_numeros set cod_estadoid = 8  where  cod_num =74598734;

select * from te_numeros_prepago where cod_num ='71635189';


/*SOLICITAR DE SU AYUDA CON LA BAJA DE LA SIGUIENTE INSTANCIA ETH0002010255.-
[02:05:51 p.m.] Carolina  Juarez: para ese caso de la instancia solo se coloca de baja
[02:05:53 p.m.] Carolina  Juarez: es decir en 108*/
SELECT a.* FROM tcg_instancia a WHERE CODIGO IN ( 'ETH0002010255', '');

SELECT a.* FROM tcg_instancia_contrato a WHERE tcginstanciaid IN (34105)
--where tenumscontrid=4005724
---where tecuentaid=4931140
AND FECha_BAJA IS NULL;


/*[02:31:14 p.m.] Carolina  Juarez: una renovacion puede ser un cambio de plan, baja -alta
[02:31:24 p.m.] Carolina  Juarez: una modificacion de financiamiento
[02:31:33 p.m.] Carolina  Juarez: un cambio de terminal*/
SELECT  tcgtransaccionesid,tipo_mov,tipologia_1,tipologia_2,tipologia_3,a. * FROM tcg_transacciones a
 WHERE swdatecreated between to_date('31032015','ddmmyyyy') and   to_date('01042015','ddmmyyyy') and swcreatedby= 'MEN02968.R2' and tenumscontrid='4647519'--cod_num2 in (78471234)--  and num_cuentarbor  in (220239,265293)
order by fecha desc;

    SELECT SWDATECREATED,SWCREATEDBY,TIPO_MOV
     tcgtransaccionesid,tipo_mov,tipologia_1,tipologia_2,tipologia_3,a. *
    FROM tcg_transacciones a WHERE cod_num2 in (64317378)--  and num_cuentarbor  in (220239,265293)
    order by a.SWDATECREATED desc;


   SELECT a. *
    FROM tcg_transacciones a WHERE cod_num2 in (  71630939  )--  and num_cuentarbor  in (220239,265293)
    order by a.SWDATECREATED desc;


    select * from TCG_NUMEROS_VW where cod_num in (  60242402,71651656  );

    TC_TRANSACCIONES_VW

    select * from TC_TRANSACCIONES_VW where SWCUSTOMERID=4067884;

    select a.SWCUSTOMERID,a.* from TC_TRANSACCIONES_VW a where cod_num2 in (  60242402,71651656  ) order by TRANSACCIONES;


SELECT * FROM TCG_ALTAS_LOG_temp WHERE COD_NUMEROID IN (12267053);

--14823668    Baja Prepago    BAJA ADMINISTRATIVA    MIGRACION DE PRE A POST    MIGRACION A FLEX    14823668        9309356        71050505            20/01/2017 05:54:37 p.m.                Elementos                                5157        071050505            BAJA ADMINISTRATIVA    MIGRACION DE PRE A POST    MIGRACION A FLEX    Baja Prepago    ASS01439    20/01/2017 05:54:37 p.m.    7103571533            8950304203608392602    353313073242810    706040004809260                    984690712    11
--update tcg_transacciones set cod_num2=cod_num2||1 where tcgtransaccionesid in(154054,3358444,3702318,3702360)

select * from external_id_equip_map where
external_id in ('71019261')
--account_no =220239 and external_id not like '%.0'
--and inactive_date is null
;

select * from te_cuenta where num_cuentarbor in (220239,265293)

select * from TC_TRANSACCIONES_VW WHERE cod_num2 in (78277913)  and num_cuentarbor =265293

select * from TE_EMPRESA_VW;




SELECT
  /*+rule*/ A.TCGTRANSACCIONESID TRANSACCIONES,
  A.COD_NUMEROID1,
  A.COD_NUMEROID2,
  A.COD_NUM1,
  A.COD_NUM2,
  A.PLAN1,
  A.PLAN2,
  A.Fecha,
  A.CODIGO_VENDEDOR,
  A.NOMBRE_VENDEDOR,
  A.CODIGO_DISTRIBUIDOR,
  A.NOMBRE_DISTRIBUIDOR,
  A.TENUMSCONTRID,
  A.NUM_CUENTARBOR,
  A.SEQ_MOVIMIENTO1,
  A.SEQ_MOVIMIENTO2,
  A.TEINTERFAZID1,
  A.TEINTERFAZID2,
  A.TETERMINALID1,
  (SELECT DES_TERMINAL FROM TE_TERMINAL WHERE TETERMINALID = A.TETERMINALID1) TERM_ANTERIOR,
  A.TETERMINALID2,
  A.NUM_AKEY1,
  A.NUM_AKEY2,
  A.NUM_ESN1,
  A.NUM_ESN2,
  A.TIPOLOGIA_1,
  A.TIPOLOGIA_2,
  A.TIPOLOGIA_3,
  A.TIPO_MOV,
  B.NOMBRES NOMBRE,
  B.COD_NIT NIT,
  G.SWCUSTOMERID,
  G.DES_ESTATUSTRIB,
  G.DES_REPCOMERCIAL,
        (SELECT MAX(sa.des_via)
           FROM SW_ADDRESS sa
          WHERE sa.tecuentaid = E.tecuentaid) || ', ' ||
        (SELECT swname
           FROM SW_REGION sr
          WHERE sr.SWREGIONID = h.SWREGIONID) || ', ' ||
        (SELECT swname
           FROM SW_REGION sr
          WHERE sr.SWREGIONID = h.SWREGION1ID) || ' Zona' ||
        (SELECT swname
           FROM SW_REGION sr
          WHERE sr.SWREGIONID = h.tezonaid ) || ', ' ||
        (SELECT swname
           FROM SW_REGION sr
          WHERE sr.SWREGIONID = h.swaddress4 ) || ', ' ||
        (SELECT swname
           FROM SW_REGION sr
          WHERE sr.SWREGIONID = h.SWADDRESS5 ) DIRECCION,
  A.SWCREATEDBY,
  A.SWDATECREATED,
  A.TIMESTAMP,
  A.TESERVICIOID,
  DECODE(tipo_mov,'Cambio de Numero', cod_num1) Telefono_Antiguo,
  A.ICC,
  A.IMEI,
  A.IMSI,
  A.NUEVO_ICC,
  A.NUEVO_IMEI,
  A.NUEVO_IMSI,
  A.TCMOVREDID1,
  A.TCMOVREDID2,
  (SELECT des_tipo
     FROM TE_TIPO_SERVICIO
        WHERE tip_servicio = A.TIP_NUMERO1)
  tip_anterior,
  (SELECT des_tipo
     FROM TE_TIPO_SERVICIO
        WHERE tip_servicio = A.TIP_NUMERO2)
  tip_actual,
  A.TE_DIR_IP,
  (SELECT MAX(Fecha)
     FROM TCG_TRANSACCIONES B
    WHERE UPPER(B.TIPOLOGIA_1) = 'ALTA NUEVA'
      AND B.COD_NUM2 = A.COD_NUM2) ALTA
FROM
  TCG_TRANSACCIONES A,
  TCG_NOMBRES_CLIENTES_VW B,
  TE_NUMEROS_CONTRATO C,
  TE_CONTRATO D,
  TE_CUENTA E,
  SW_CUSTOMER G,
  SW_ADDRESS H
WHERE C.TENUMSCONTRID = A.TENUMSCONTRID AND
          D.TECONTRATOID  = C.TECONTRATOID AND
          E.TECUENTAID    = D.TECUENTAID AND
          B.SWCUSTOMERID  = E.SWCUSTOMERID AND
          G.SWCUSTOMERID  = E.SWCUSTOMERID AND
          H.TECUENTAID    = E.TECUENTAID
        --
        and g.SWCUSTOMERID =4067884;


select * from SW_CUSTOMER G where g.SWCUSTOMERID =4067884;

select * from TE_CUENTA E where E.SWCUSTOMERID  =4067884;


===========================================================================================================

--suspendidos
select *  from TCG_BLOQUEADOS A where cod_num in ('19019397' );

select * from TCG_MOVIMIENTOS where cod_numeroid in (select cod_numeroid from te_numeros where cod_num=78264778);


|71475858|DUO1_100|0|1|USRBOI|3922897436|

select nb.swdatecreated,nb.tcfechabaja,nb.estado_de_baja,nb.* from TC_NUMEROS_BANDIT nb 
    where  
    -- tcnumtelefono='61654493' --or 
    imei='359667074115349'
    -- icc ='0000000'
order by 1 desc;


select * from TC_NUMEROS_BANDIT where imei is not null and TCFECHABAJA is null and rownum <10;

Tc_Eir_Pkg.TC_ENVIA_MOV_EIR_PRO

select * from all_source where upper(text) like '%ESTADO%ALTAMIRA%'

===========================================================================================================

SELECT llama_tuxedo('|20041208112400|71475858|10|PP_GA_SOLBONO|71475858|DUO1_100|0|1|USRBOI|') FROM dual;

    SELECT replace(llama_tuxedo('|'||to_char(sysdate,'yyyymmddhh24miss')||'|'||'0000000000|0|PP_GA_CONBOLSAS|74527058|0|5|'),'?',' ')  FROM dual;

SELECT LLAMA_TUXEDO('|PP_GA_CONACTU6|3922897436|0|scod_estarec|') ESTADO FROM DUAL;


--bill_period
SELECT a.bill_period,a.* FROM CMF a
WHERE ACCOUNT_NO in (SELECT account_no
FROM external_id_equip_map WHERE external_id in ('78223703') and inactive_date is null ) ;

select * from external_id_equip_map WHERE external_id in ('78223703');

select bill_period,a.* from CMF a where ACCOUNT_NO ='506236';



select * from TC_FF_COMP_LOG where tecompnoredid ='21825917';

select * from BILL_CYCLE;

MSISDN1 71764216
NUM_ICC 8950304325510340799
CAUC_TARJ 04
IMP_COSTE 0
NUM_PUK 0
NUM_PUK2 0
IMSI1 706040018314079
IN_ICC 8950304123502281422
REQUEST_NUM 108
COD_USUARIO TMM0001
COD_MONEDA 0
ORIG_COUNTRY ELSALVADOR
REQ_TYPE 2
REQ_OBJ 1
NE_TYPE BST2

HGSDP:IMSI=706040000376456,ALL;


--PPGA                                    8950304021509005515        706040000376456
select b.fec_modifica,a.num_telefono,a.num_icc,a.num_imsi,a.num_puk,a.num_puk2,cast(a.cod_estaprep||a.cod_sbestaprep||'-'||e.des_estaprep ||' /'||s.des_sbestaprep as char(60))descripcion,cast(b.cod_tipprepa||'/'||b.des_prepago as char(50)) plan
from ppga_abopreptar a left join  ppga_tipprepa b on a.cod_tipprepa = b.cod_tipprepa left join ppga_estaprep e on  a.cod_estaprep = e.cod_estaprep join  ppga_sbestaprep s on a.cod_sbestaprep = s.cod_sbestaprep
-- where  a.num_icc  in ('8950304123411571772')
-- where a.num_imsi='706040005468896'
where  a.num_telefono  in ('61826741')
;

select cod_estaprep,des_estaprep from ppga_estaprep@link_ppgasv where cod_estaprep ='L' union all
select cod_sbestaprep,des_sbestaprep from ppga_sbestaprep@link_ppgasv  where cod_sbestaprep='M'

select * from ppga_sbestaprep@link_ppgasv;

select * from poge_estados@link_opgesv where ide_estado='PA';


select * from all_tab_columns@link_opgesv where upper(column_name) like '%SUB_ESTADO%' and owner  in ('OPGE')

select * from ppga_cambest@link_ppgasv where num_telefono ='77075744' order by sec_actuacion desc;

select * from POGE_TRANSESTADOS@link_opgesv where num_telefono ='77199061';

--(JG)Retornar a Preactivado
set serveroutput on;
declare cursor lineas is select cod_num from te_numeros  where cod_num in (
71422425
    );
begin
    for c in lineas loop
        begin
           update ppga_abopreptar@link_ppgasv set cod_estaprep='P',cod_sbestaprep='H' where num_telefono =to_char(c.cod_num);DBMS_OUTPUT.put_line('lineas afectadas: '||sql%rowcount);
            update poge_tarjetas@link_opgesv set est_tarjeta='PA',sub_estado='' where num_telefono =to_char(c.cod_num);DBMS_OUTPUT.put_line('lineas afectadas: '||sql%rowcount);
           commit;
        exception when others then
            rollback;
            dbms_output.put_line('ocurrio un error:'||sqlerrm);
        end;
    end loop;
end;
/


 B5 PH-PA   No vpn|||                   61186209  
 B5 AR-AC   No vpn|||                   61196122  
 B5 PH-PA   No vpn|||                   61204591  
 B5 AR-AC   No vpn|||                   61194669  
 B5 PH-PA   No vpn|||                   61194446  
 B5 PH-PA   No vpn|||                   61197258  
 B5 PH-PA   No vpn|||                   61024465  
 B5 PH-PA   No vpn|||                   61110010  
 B5 PH-PA   No vpn|||                   71012788  
 B5 TT-SU00 No vpn|||                   77926565  
 B7 LL-BACA No vpn|||                   71536892  

**********************************************HLR*****************************************************************

/*
[04:08:44 p.m.] Josue Gomez: en caso de valor nulo poner siempre 7001
[04:08:47 p.m.] Josue Gomez: ????
[04:09:34 p.m.] Carolina  Juarez: Si ya q la sim no se encuentra en la articulo hlr
[04:09:45 p.m.] Carolina  Juarez: Es decir que no es lte
*/

select a.package_id,e.display_value, a.component_id,c.display_value, id_value, subscr_no, active_dt, inactive_dt , external_id
from cmf_package_components a,
  external_id_equip_map b,
  component_definition_values c,
  package_definition_values e
where id_type = 2
and b.external_id_type = 4
and b.inactive_date is  null
and a.component_id = c.component_id
and c.language_code = 2
and a.id_value = b.subscr_no
--and b.external_id in ('70702005','')
and a.package_id = e.package_id
--and a.package_instance_id='21332'
and a.package_id='21332'
and a.component_id in ('22941','','')
and e.language_code = 2
order by a.component_id asc


71080552,71743074,61035190,61047840

--ACTIVAR LINEA EN ALTAMIRA   64209761,64209764,64209766,64209768,64209769,71729953
    SELECT  llama_tuxedo('|'||to_char(sysdate,'yyyymmddhh24miss')||'|'||
    '0000000000|0|PP_GA_ACTIVANUM|77061040|0|0|USRBOI|') FROM dual;




SELECT 'select llama_tuxedo(''|PP_GA_ALTAABO|'||e.cod_num||'|'||e.ICC||'|0|2|TMM0001|'||         --'U5'||
(SELECT plan_altamira_gsm FROM tc_tipos_producto WHERE tctiposproductoid IN (SELECT producto FROM tc_inventario_numeros WHERE cod_num = e.cod_num))||
'|0|P01|DU|PA|0|0|'||e.imsi||'|'||nvl(hlr,'7001')||'|1|503|'')   from dual;'
-- , E.COD_NUMEROID
--INTO v_ilikparams, V_codnumero
FROM TES_ARTICULOS_INV A,     TES_HISTORICO_INV B,                TC_ARTICULO_HLR C,                TE_NUMEROS_PREPAGO D,                TE_NUMEROS E
WHERE   A.COD_ARTICULO = C.COD_ARTICULO (+)
AND D.TIPO_PREPAGO = D.TIPO_PREPAGO
AND E.COD_NUM = D.COD_NUM
AND A.TESARTICULOSINVID = B.TESARTICULOSINVID
AND B.TESHISTORICOINVID IN (SELECT MAX (TESHISTORICOINVID)
 FROM TES_HISTORICO_INV
WHERE ESN = B.ESN)
AND ESN = E.ICC
--and c.hlr not in ('7003')
AND E.COD_NUM IN ( 61501241
);

-- TC_CONFCOMPONENTESTARIF_XPLAN
select 'select llama_tuxedo(''|PP_GA_ALTAABO|'||a.cod_num||'|'||a.icc||'|0|2|TMM0001|'||decode(i.tip_prepago,null,j.cod_tipprepa,i.tip_prepago)||'|0|P01|DU|PA|0|0|'||a.imsi||'|'||nvl(f.hlr,'7001')||'|1|503|'') from dual;' as tux
from te_numeros a join te_numeros_prepago b on b.cod_num=a.cod_num 
join tes_historico_inv c on c.esn=a.icc and c.teshistoricoinvid in (select max (d.teshistoricoinvid) from tes_historico_inv d where d.esn = c.esn)
join tes_articulos_inv  e on e.tesarticulosinvid=c.tesarticulosinvid join tc_articulo_hlr f on f.cod_articulo=e.cod_articulo          and   (f.tipo_prepago=b.tipo_prepago or f.tipo_prepago=4)
/*left porque si no no devuelve para prepago*/left join tcg_paquetes_instancia g on a.cod_num=g.cod_num  and g.ind_provision in (0,1,2)
         left join tc_altamira_flex_parm h  on h.cod_paquete = g.cod_paquete left join tc_prepaid_type i on i.tcpretypeid=h.tcpretypeid
         left join tc_comp_plan j on j.cod_paquete=g.cod_paquete  left join te_movserv k on k.tenumscontrid=g.tenumscontrid and k.cod_paqserv=j.cod_paqserv
where a.cod_num in(71801131);


Plan Social Navegacion - 71955599 #0014197482


select llama_tuxedo('|PP_GA_ALTAABO|61286095|8950304001705672490|0|2|PPGA|B5|0|P01|DU|PA|96811386|75492444|706040009467249|0000|1|503|') from dual;                                                                          19769929

SELECT llama_tuxedo('|' || to_char(sysdate,'yyyymmddhh24miss') ||'|'||'0000000000|0|PP_GA_ACTIVANUM|61236476|0|0|PPGA|') FROM dual;

ADD TPLSUB: HLRSN=1, IMSI="706040010953913", ISDN="50361726373", TPLID=319;


HGSUI:MSISDN=50361422674,IMSI=706040010472869,PROFILE=312;

LGI:HLRSN=1,OPNAME="vantive700",PWD="v123456";


MOD ISDN: ISDN="50371029897", NEWISDN="50371029888";

                                                         11247628


select llama_tuxedo('|PP_GA_ALTAABO|61538032|8950304001610740473|0|2|TMM0001|B5|0|P01|DU|PA|0|0|706040006884047|7002|1|503|')   from dual;

select llama_tuxedo('|PP_GA_ALTAABO|77005555|8950304011503098574|0|2|TMM0001|J1|0|P01|DU|PA|0|0|706040002819872|7001|1|503|')   from dual;

select llama_tuxedo('|PP_GA_ALTAABO|71093866|8950304013509285650|0|2|TMM0001|J2|0|P01|DU|PA|0|0|706040002869565|7003|1|503|')   from dual;

select llama_tuxedo('|PP_GA_ALTAABO|71933198|8950304101610741057|0|2|TMM0001|J1|0|P01|DU|PA|0|0|706040007084105|7003|1|503|')   from dual;

select llama_tuxedo('|PP_GA_ALTAABO|78100646|8950304013509411967|0|2|TMM0001|XC|0|P01|DU|PA|0|0|706040002882196|7002|1|503|')   from dual;

select llama_tuxedo('|PP_GA_ALTAABO|61179976|8950304203608966058|0|2|TMM0001|J5|0|P01|DU|PA|0|0|706040004866605|7003|1|503|')   from dual;

select llama_tuxedo('|PP_GA_ALTAABO|70890262|8950304303608249867|0|2|TMM0001|J1|0|P01|DU|PA|0|0|706040004894986|7003|1|503|')   from dual;

select llama_tuxedo('|PP_GA_ALTAABO|78100646|8950304013509411967|0|2|TMM0001||0|P01|DU|PA|0|0|706040002882196|7002|1|503|')   from dual;

select llama_tuxedo('|PP_GA_ALTAABO|78458460|8950304025103018436|0|2|TMM0001|X1|0|P01|DU|PA|0|0|706040005128498|7001|1|503|')   from dual;

select llama_tuxedo('|PP_GA_ALTAABO|71407741|8950304002607058895|0|2|TMM0001|J2|0|P01|DU|PA|0|0|706040003016989|7002|1|503|')   from dual;

select llama_tuxedo('|PP_GA_ALTAABO|73882933|8950304021509824147|0|2|TMM0001|B8|0|P01|DU|PA|0|0|706040017730414|7002|1|503|')   from dual;

select llama_tuxedo('|PP_GA_ALTAABO|33349789|8950304025510443128|0|2|TMM0001|B8|0|P01|DU|PA|0|0|706040017924312|7002|1|503|')   from dual;

select llama_tuxedo('|PP_GA_ALTAABO|78122321|8950304013509577445|0|2|TMM0001|JE|0|P01|DU|PA|0|0|706040002898744|7002|1|503|')   from dual;

select llama_tuxedo('|PP_GA_ALTAABO|71459541|8950304203608213816|0|2|TMM0001|D2|0|P01|DU|PA|0|0|706040004491381|7002|1|503|')   from dual;

***********************************************************************
/*no le llega la factura ni por correo ni fisica  -> remitir con facturacion*/

/*[03:11:00 p.m.] Carolina  Juarez: revisa si posee el componente de roaming
[03:11:13 p.m.] Carolina  Juarez: A nivel de arbor y vantive
[03:23:06 p.m.] Carolina  Juarez: deben de revisar si a nivel del hlr
[03:23:12 p.m.] Carolina  Juarez: no se posee el br-2,   segun la movred:
HGSDC:MSISDN=50378306863,SUD=OBR-0;
EXECUTED
   pasalo a 7  en la te_numeros*/

/*
Linea con bono pero al navegar le consume del saldo
[09:49:01 a.m.] Carolina  Juarez: posee reserva de bono
[09:49:15 a.m.] Carolina  Juarez: debe de tener varias sesiones
[09:49:25 a.m.] Carolina  Juarez: con bono reservado
[09:49:29 a.m.] Carolina  Juarez: eso comentales*/


/*
No se puede llamar en estos momentos:
escalar con help desk
*/



/*
---------------------------
Vantive System
---------------------------
No se encontr? par?metros de flex para el plan
---------------------------
Aceptar
---------------------------
--esta en el controlarcambiospro
BEGIN
  SELECT TCPRETYPEID, MONTO
    INTO V_TCPRETYPEID, V_MONTO
    FROM TC_ALTAMIRA_FLEX_PARM
   WHERE     COD_PAQUETE = v_cod_paquete
         AND tip_servicio = v_tip_numero;
EXCEPTION
  WHEN NO_DATA_FOUND
  THEN
     RESULT (i) :=
        'No se encontr? par?metros de flex para el plan';
     RAISE SALIDA;
  WHEN TOO_MANY_ROWS
  THEN
     RESULT (i) :=
        'Se encontr? mas de un par?metro de flex para el plan';
     RAISE SALIDA;
  WHEN OTHERS
  THEN
     RESULT (i) :=
        'Ocurri? un error en la selecci?n de par?metros de flex para el plan';
     RAISE SALIDA;
END;
*/


/*
---------------------------
Vantive System
---------------------------
Source: TCG_RED_PRIVADA_VIRTUAL1
Error 1039 on Line 126: 'Save' operation failed.
---------------------------
Aceptar
---------------------------

primero se debe dar baja a vpn y  luego baja altamira    ejecutar PL de baja vpn
*/



/*
 AL INTENTAR GUARDAR COMO RESERVADO APROBADO LA LINEA PARA POSTERIORMENTE PREACTIVARLA NO DA EL SIGUIENTE ERROR.

---------------------------
Vantive System
---------------------------
The Cod. Vendedor field must be filled in before you can save the record.
---------------------------
OK
---------------------------
[06:30:52 p.m.] Carolina  Juarez: deben de validar que el codigo de vendedor este activp
[06:31:02 p.m.] Carolina  Juarez: y que se encuentre bien creado
*/



/*
-----------------------------
--Vantive System
-----------------------------
--No se encontr? el tel?fono en Inventarios
-----------------------------
--OK
-----------------------------
[11:18:54 a.m.] Nancy Navarro: EDIT tc_inventario_numeros where cod_num in ( 64315915 )
[11:19:04 a.m.] Nancy Navarro: segun veo el problema se esta dando ya que se encuentra en estado
[11:19:15 a.m.] Nancy Navarro: RESERVADO PARA LOGISTICA en el invenatrio
[11:19:19 a.m.] Nancy Navarro: inventario
[11:19:47 a.m.] Oscar Ra�l Urrutia Martinez Urrutia Martinez: y eso que
[11:19:48 a.m.] Oscar Ra�l Urrutia Martinez Urrutia Martinez: sig
[11:19:51 a.m.] Oscar Ra�l Urrutia Martinez Urrutia Martinez: ya lo acabo
[11:19:52 a.m.] Oscar Ra�l Urrutia Martinez Urrutia Martinez: de ver
[11:19:56 a.m.] Oscar Ra�l Urrutia Martinez Urrutia Martinez: en esa consulta
[11:19:58 a.m.] Oscar Ra�l Urrutia Martinez Urrutia Martinez: que me envio
[11:20:23 a.m.] Nancy Navarro: ese caso indigales que lo validen con el area de Logistica
[11:20:35 a.m.] Nancy Navarro: ya q nosotros no podemso cambiar dicho estado
*/





/*
---------------------------
Advertencia
---------------------------
No hay ningun seguro vigente para Tipo de cliente='Empresa', Plan='(21172) Plan Corporativo Milenio EL SALVADOR', tipolog�a 1 ='ALTA ADMINISTRATIVA', tipologia 2 = 'POR CAMBIO DE FIRMA'
---------------------------
Aceptar
---------------------------
ESTOS CASOS DEBEN DE DIRECCIONARLOS AL AREA DE PARAMETRIZACIONES
*/


/*
---------------------------
Vantive System
---------------------------
Existe un problema en la configuracion del Telefono
---------------------------
Aceptar
---------------------------

la linea era producto 483 - M2M FLEX en cod estado 10
ahprita enviela la prectivacion manual porfa
y que  la activen ellos?
sip
*/

/*
Numero del Cliente:71270007
N�mero de Contacto: 78557951
Gesti�n que se est� realizando: RENOVACION EN PROCESO
Trascripci�n literal del error en el caso se presentarse: CLIENTE SE PRESENTA A REALIZAR RENOVACION EL DIA 09/07/16 RENOVACION SE EREALIZA Y SE DEJA EN ESTADO REGISTRADO EL DIA 13/07/16 SE PRESENTA CLIENTE MANIFESTANDO QUE NO PSEE SE�AL SE VERIFICA Y SE INTENTA IDENTIFICAR EL NUMERO Y EFECTIVAMENTE APARECE QUE NO ESTA REGISTRADO EN LA BASE DE MOVISTAR ESTO MANIFIESTA EL CLIENTE QUE LE SUCEDIO EL DIA 12/07/16  AL MOMENTO DE REALIZAR LA RENOVACION TODO FUNCIONO PERFECTAMENTE EL ID DE REFERENCIA CON LA RENOVACION ES 45398007
Estado actual de l�nea:  NO POSEE ESTADO DADO QUE APARECE QUE NO ESTA EN EL INVENTARIO
Estado actual de paquetes y componentes

[09:04:39 a.m.] Carolina  Juarez: el numero 71270007
[09:04:45 a.m.] Carolina  Juarez: se encuentra reciclado

[09:04:59 a.m. | Editado 09:05:46 a.m.] Carolina  Juarez: que validen con el area que realizo la renovacion
[09:05:17 a.m.] Carolina  Juarez: porque no es error del sistema
[09:05:53 a.m.] Carolina  Juarez: no posee oas
*/


/*
--cuando no se puede dar de baja a un will
---------------------------
Ficha del Cliente Prepago
---------------------------
El Movimiento no Fue Completado Correctamente, Avise a su Administrador
---------------------------
OK
---------------------------

verificar las listas y los items si tiene algo darle de baja  y que validen otravez
*/





DESDE:22380201  HASTA: 22380299
DESDE:25144600 HASTA: 25144699
DESDE:22476501 HASTA:22476599
DESDE:25345600 HASTA:25345699


        select b.estado,a.des_estado,b.rec from te_estado_numero a right join
        (select cod_estadoid estado,count(*)rec from te_numeros where
        --
            (cod_num between 25348401 and 25348499)
        --    or (cod_num between 25144600 and 25144699)
        --    or (cod_num between 22476501 and 22476599)
        --    or (cod_num between 25345600 and 25345699)
        -- --
        group by cod_estadoid)b on b.estado=a.cod_estadoid;

--      delete  from te_numeros where (     (cod_num between 25348401 and 25348499)    ) and cod_estadoid=8;

===================='CAMBIO TIPOLOGIAS'============================================================



BUENOS DIAS
SOLICITO DE SU AYUDAD POR FAVOR MODIFICANDO LAS TIPOLOGIAS DE BAJA Y ALTA DE LA LINEA 71659023

A QUE NE NECESITA LA TIPOLOGIA DE BAJA: "BAJA NO REALES POR CAMBIO DE PLAN" DE IGUAL MANERA EL ALTA "ALTA ADMINISTRATIVA" POR CAMBIO DE PLAN.
TAMBIEN FAVOR PROVISIONAR CORRECTAMENTE COMPONENTE DE ROAMING A LA LINEA 71659023.
POR SU VALISOSA AYUDA GRACIAS


--BAJA NO REAL--CAMBIO DE TITULAR
select a.swdatecreated,a.bajaid,a.cod_numeroid,cast(a.tipo_1 as char(45))tipo_1,cast(a.tipo_2 as char(45))tipo_2,cast(a.tipo_3 as char(45))tipo_3 from tcg_bajas_log a where
cod_numeroid in (select cod_numeroid from te_numeros where cod_num in(71436597))  --and swdatecreated between trunc(sysdate) and sysdate--
order by bajaid desc;

 --                 update tcg_bajas_log
 set TIPO_1 ='BAJAS NO REALES' , TIPO_2='CAMBIO DE TITULAR' , TIPO_3 =null where   bajaid='cambiar' ;

select * from tcg_bajas_log where TIPO_1 ='BAJAS NO REALES' and TIPO_2 ='CAMBIO DE TITULAR'  and TIPO_3 is null and rownum <10;


select a.swdatecreated,a.imei,a.nuevo_imei,a.* from tcg_transacciones a where cod_num2 in ( 71701817,78187539)-- and tipo_mov ='Baja'
 order by a.swdatecreated desc;


--BAJA NO REAL--CAMBIO DE TITULAR
select a.swdatecreated,a.altaid,a.cod_numeroid,cast(a.tipo_1 as char(50))tipo_1,cast(a.tipo_2 as char(50))tipo_2,cast(a.tipo_3 as char(50))tipo_3 from tcg_altas_log a where
cod_numeroid in (select cod_numeroid from te_numeros where cod_num in(61983140))  --and swdatecreated between trunc(sysdate) and sysdate--
order by altaid desc;

 --                 update tcg_altas_log
 set TIPO_1 ='ALTA ADMINISTRATIVA' , TIPO_2='POR CAMBIO DE PLAN' , TIPO_3 ='' where   altaid='1317603' ;

=====================================================================================================================================



    select   a.fecha,a.*
from te_interfaz a where cod_num in ( 71707797 )


select * from EXTERNAL_ID_EQUIP_MAP where external_id in ( '71707797' )

select * from cmf

select * from all_tables where upper(table_name) like '%_LOG'

select * from
--TCG_CLIENTES_BLOQUEADOS_LOG
--TCG_CONTROL_RENOVACIONES_LOG
--TCG_RENOVACIONES_LOG
--TC_CARGA_AVL_ERROR_LOG
TC_ERRORES_LOG





declare vswcustomerid varchar(100); myEx exception; vErr varchar(1000);
begin
    begin
        select  swcustomerid into vswcustomerid from te_numeros where cod_num in(73004502,79957717);
    exception when others then vErr :='error: '||sqlerrm; raise myEx;
    end;
  dbms_output.put_line('swcustomer: '||vswcustomerid);
exception when others then dbms_output.put_line(vErr);
end;



declare
    var varchar(100);
begin
    select 'hola' into var from dual;
    dbms_output.put_line(var);
end;

--pkg para consulta de saldo
tc_consumoexced_cam_pkg


select * from  tmp_casos_x_analista_rp

select * from all_tables where lower(table_name)='tmp_casos_x_analista_rp'




select *    --                 delete
from tc_chip_express_det where icc in ('8950304002705228440');

Insert into SWBAPPS.TC_CHIP_EXPRESS_DET
   (icc, lote_id, num_telefono, fec_alta, fec_baja, usuario, mes, bonos, acreditado, monto, cod_origreca, fecha_alta_pross, aplica, tcchipexpressid)
 Values
   ('8950304021509474588', 7283, '33772398', NULL, NULL,
    NULL, NULL, 0, 0, 1,
    'CX', NULL, 'NC', 39508);
COMMIT;


select estado,count(*) from tc_reversa_prepostpago_salta group by estado

select * from tc_reversa_prepostpago_salta  where estado ='INGRESADO'



    define lineaModule ='71277091';
    --REVERSA
    select  swdatecreated,tcreversaprepostpagoid,cod_num,estado,encolado,cast(des_error as char(500))des_error,swcreatedby from tc_reversa_prepostpago_salta a where
    cod_num in (    &lineaModule  )
    -- swdatecreated between trunc(sysdate-2) and sysdate and des_error like 'f1-04%'    estado !='FINALIZADO CORRECTAMENTE'
    order by a.swdatecreated asc;
    --AVI
    select swdatecreated,tccambiorenovaid,tipo,des_estado,des_error,a.* from tc_cambio_renova a where num_telefono in(     &lineaModule       );
    --Migracion
    select swdatecreated,des_estado,swcreatedby   from tc_mig_postpago_prepago a where ( &lineaModule    )  in (cod_num_new,cod_num_old);
    --Modulo Salta
    select a.swdatecreated,a.tcprepagopostpagosaltaid,a.des_estado,a.des_error,a.reg_lock,a.*from  tc_prepago_postpago_salta  a  where cod_num in (&lineaModule  ) order by a.tcprepagopostpagosaltaid desc;
    --advance
    select a.*from tc_prepago_postpago_advance a where cod_num in (&lineaModule);
    --reversalibre
    select a.swdatecreated,tcreversamovistarlibreid,tctiposproductoid_old,fecha_prepostpago,estado,cast(des_error as char(1000))des_error,fec_baja_postpago
    from tc_reversa_movistarlibre a where cod_num in (&lineaModule);
    --reversaFS
    select a.swdatecreated,a.tcprepagopostpagoid,a.des_estado,a.des_error,a.*  from swbapps.TC_MS_FS_PREPAGO_POSTPAGO a where cod_num in (&lineaModule);



SELECT TC_MIGRACIONMASIVA_SALTA_PKG.TC_ACTFLEX_FUN(25043)FROM DUAL;


Select tcprepagopostpagoid,cod_num,des_estado,des_error, swdatecreated 
from swbapps.TC_MS_FS_PREPAGO_POSTPAGO a
where cod_num in ('64296755')
and des_estado not in ('REVERSA EXITOSA');


delete  from tc_reversa_prepostpago_salta where TCREVERSAPREPOSTPAGOID=348585;

f2-02 tc_movistarlibre_pkg.TC_PROCESA_BAJAREVERSA_FUN, no se encontro informacion relacionada con el contrato

--monitor

select swdatecreated,des_estado,a.* from  tc_cambio_renova a where 
    -- des_estado not in('FINALIZADO CORRECTAMENTE','ALTA FLEX ERROR') 
    des_estado in('ACTIVAR ERROR') 
and swdatecreated between trunc(sysdate-30) and sysdate-60/24;

select swdatecreated,des_estado,a.*  from tc_mig_postpago_prepago a where des_estado not in('FINALIZADO CORRECTAMENTE') 
and swdatecreated between trunc(sysdate-30) and sysdate;

    select a.swdatecreated,des_estado,cod_num from  tc_prepago_postpago_salta  a  where des_estado  in('PENDIENTE ALTA SISTEMA ARBOR') 
    and swdatecreated between trunc(sysdate-30) and sysdate-1/24;

select swdatecreated,estado,a.*  from tc_reversa_prepostpago_salta a where estado not in('FINALIZADO CORRECTAMENTE') and swdatecreated between trunc(sysdate-30) and sysdate-60/24;


select * from PPGA_TARNOTIFICA@link_ppgasv where sec_abonado ='70046886';

select * from ppga_bonos@link_ppgasv

select '--'||table_name from all_tables@link_ppgasv where table_name like '%NOT%'



select * from poco_planifhlr@link_opgesv


begin
    INSERT INTO TC_SUSCRIPCIONES_INTERNET (TCSUSCRIPCIONESINTID,NUM_TELEFONO,PROMO_APLICADA,ESTADO,FEC_ALTA,FEC_BAJA,SWCREATEDBY,TCSUSCRIPCIONESID,FRANJA_HORARIA,DURACION,LIMITE_MB,FEC_FINCICLO)
     VALUES (TC_SUSCRIPCIONES_INTERNET_SQ.NEXTVAL,TO_CHAR(71601800),'PLAN_FF',1,SYSDATE,TO_DATE('30/06/2017 23:59:59','dd/mm/yyyy hh24:mi:ss'),'PLAN_FYF',706,'N',30,1000,TO_DATE('30/06/2017 23:59:59','dd/mm/yyyy hh24:mi:ss'));
    commit;
end;



select 600000 /10 from dual;

select * from v$parameter


SELECT LLAMA_TUXEDO('|GA_DETBONO12|61339233|20170713000000|20170713235959|-1||0|||20||tip_bono|lbonificacion|lcod_modbono|lfec_alta|lfec_caduca|lcod_bono|lcod_estado|') GA_DETBONO12 FROM DUAL;



TC_MIGRACION_ADVANCE3_PKG.tc_ejecutaff_advance

TC_REVERSA_ADVANCE_PKG

1.    tc_migracion_advance3_pkg.tc_bajaff_advance;
2.    tc_migracion_advance3_pkg.tc_ejecutaff_advance;
3.    tc_migracion_advance3_pkg.tc_provisionfyf_advance;
4.    tc_migracion_advance3_pkg.tc_finprovisionfyf_advance;
5.    tc_reversa_advance_pkg.tc_carga_reversa_postpre;



select * from all_source where upper(text) like '%MODALIDAD%VENT%' and type !='PACKAGE'

58
67
74
149

SWBAPPS.TC_CTL_INTERFAZ_INV_OC

--2041
SWBAPPSTC_INTERFAZ_ONLINE_PKG

                                       V_MSG_ERROR:= V_MSG_ERROR || '| No se encontro la información de la modalidad de venta en la TC_ARTICULOS_PRECIOS de alta';


select * from TC_ARTICULOS_PRECIOS

begin
    dbms_lock.sleep(60);
end;



61983261,71019273,61983263,61980474,61983259,61214243


declare
  cursor casos is
  select swnote from sw_case where swcaseid=51700723;
  vLargo number;
  vCaracter varchar2(1);
begin
  for c in casos loop
    select length(c.swnote) into vLargo from dual;
    for cCaracter in 1..vLargo loop
      select substr(c.swnote,cCaracter-1,1) into vCaracter from dual;
      dbms_output.put_line('el caracter es:'||vCaracter||' su correspodiente codigo ascii es:'||ASCII( vCaracter) );
    end loop;
  end loop;
end;
/


select 'hi','amigo'||chr(11)||'mio','como estas' from dual;



REGEXP_SUBSTR("'linea1','linea2','linea3'|5",'[^|]+', 1,1);

define params = "'linea1','linea2','linea3'|5";

 define lines = REGEXP_SUBSTR("'linea1','linea2','linea3'|5",'[^|]+', 1,1);
 define since = REGEXP_SUBSTR("'linea1','linea2','linea3'|5",'[^|]+', 1,2);

 select REGEXP_SUBSTR(&params,'[^|]+', 1,1) from dual;

 define numbers ='''61155811'''',''''61155811|5''';

 select * from categories where cod_category in (REGEXP_SUBSTR(&numbers,'[^|]+', 1,1));

 select REGEXP_SUBSTR(&numbers,'[^|]+', 1,2) from dual;
 
 
 
 
select estado,tcgaccesointernacid,tenumscontrid,tcgaccesosinterid,cod_num,acceso,cast(notas as char(100))notas,
timestamp,swdatecreated,swcreatedby,tipoid                 
from tcg_acceso_internacional where cod_num in '71707923';
 
 
update  tcg_acceso_internacional set estado='Baja' where cod_num in '71707923' and estado !='Baja';
 
 select * from all_users
 
 
 select 'hi','  hi',chr(32)||chr(32)||'hi'hi from dual;
 
 select ascii('    ')from dual;






declare
    vMontoSolicitado number :=24000;
    vPlazoSolicitado number :=12; /*meses*/
    --
    vCuota number;
    vInteres number;
    pInteresAnual constant number:=8;
begin
    vInteres:= (pInteresAnual/12)*vPlazoSolicitado;
    vInteres:= (vMontoSolicitado*vInteres)/100;
    vCuota :=(vMontoSolicitado+vInteres)/vPlazoSolicitado;
    dbms_output.put_line('interes es de su prestamo es:'||vInteres||' deuda total:'||to_char(vMontoSolicitado+vInteres)||' debe pagar:'||vCuota||' mensualmente');
end;
/



select num_telefono from ppga_actabopre a where cod_actuacio='ZA' and fec_actuacio between trunc(sysdate) and sysdate
 and num_telefono not in(
     select num_Telefono from ppga_actabopre b where b.sec_actuacion>a.sec_actuacion and cod_actuacion ='RC' and IMP_COSTE ='-1000' and cod_usuario='PROM'
 );





select ''''||serie||''',' from tabla ;
 


select SWCREATEDBY from te_numeros where cod_num between 71781713 and 71781783;







/*

****L27 56||Alta Prepago               1005|Acceso a Larga Distancia Internacional|Alta                POST B5 AR-AC****

los cambios se realizaron bien en altamira ..solo q antes fue moviles otro operador
donde le levantan un plan en tcg_paquetes_instacia
el proceos d eporta no da de baja eso
asi q lineas con esa inconsitencia hay otros
porq no quieiseron aplicar la baja masiva a esas lineas antes de entrar la porta en 2015
lo uncio q le cambie fue el tip_numero en la te_numeros de 120 a 11

rsp9 buen dia, estimad@ para este caso en particular es correcto que la linea se encuentre parametrizada de esta forma y no deberia ocasionar ningun inconveniente, favor indicarnos cual es problema que cliente tiene.

*/






update pruebacascade set CAMPO1 ='FIN'
;





where CAMPO2 in ('key2');








hgsue:msisdn=50361865082;
hgsue:msisdn=50361865227;
hgsue:msisdn=50361865082;
hgsue:msisdn=50361866151;
hgsue:msisdn=50361866170;
hgsue:msisdn=50361866004;
hgsue:msisdn=50361866151;
hgsue:msisdn=50361444948;
hgsue:msisdn=50361862449;
hgsue:msisdn=50361869212;
hgsue:msisdn=50361865082;
hgsue:msisdn=50361850704;
hgsue:msisdn=50361850704;
hgsue:msisdn=50361869637;
hgsue:msisdn=50361869637;
hgsue:msisdn=50361869637;





phone([36483402,36491592,36489776,36494946,36498918,36488432,36499532,36487826,36489667])





select * from (
    select distinct(a.cod_tipprepa_d) 
    from ppga_cambiostipprepa@link_ppgasv  a  
    join ppga_cambiostipprepa@link_ppgasv  b on a.cod_tipprepa_d = b.cod_tipprepa_o
    join ppga_tipprepa@link_ppgasv tp on tp.cod_tipprepa=a.cod_tipprepa_d and tp.COD_MODTIPPRE !='TP'
where a.cod_tipprepa_o ='J5'  and b.cod_tipprepa_d ='EE')  where rownum < =15;





8950304201712832257       862498032611363           706040012817225 

 8950304201712832257       706040012817225
 706040012817225





 select   *
        --/*parche3*/paqdes.des_paquete,/*fin parche3*/a.cod_num,cmf.account_no,cmf.bill_period as ciclo,actper.tip_actper,rec.monto,inst.tenumscontrid,inst.cod_paquete,inst.fecha_alta alta_paquete,vant.tip_prepago,aa.cod_tipprepa,aa.cod_estaprep||aa.cod_sbestaprep estado,a.cod_numeroid
from te_numeros a 
    join external_id_equip_map b on b.external_id=to_char(a.cod_num) and sysdate between b.active_date and nvl(b.inactive_date,to_date('01013000','ddmmyyyy'))
    join cmf on cmf.account_no=b.account_no 
    join tcg_paquetes_instancia inst on inst.cod_num = a.cod_num  and inst.status||inst.ind_provision='A1' 
    join tc_altamira_flex_parm rec on rec.cod_paquete=inst.cod_paquete
    -- join ppga_abopreptar@link_ppgasv aa on aa.num_telefono = to_char(a.cod_num) 
    -- join tc_prepaid_type vant on vant.tcpretypeid=rec.tcpretypeid 
    -- left join tc_prepaid_type actper on actper.tcpretypeid=rec.tcpretypeid
    -- /*parche3*/join te_paquete paqdes on paqdes.cod_paquete=inst.cod_paquete/*fin parche3*/
where a.cod_num =78877989;





estos casos no es con soporte sistemas ya que por nuestra parte no configuramos o modificamos las deco

deben de validar con el area especifica de soporte movistar TV o con instalaciones

