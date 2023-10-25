@AbapCatalog.sqlViewName: 'ZAC3102_V_003'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'DDL Example 3'
define view zaciftci_3102_ddl_003 as select from ekko
inner join ekpo on ekpo.ebeln = ekko.ebeln
inner join mara on mara.matnr = ekpo.matnr
inner join lfa1 on lfa1.lifnr = ekko.lifnr
left outer join makt on makt.matnr = mara.matnr 
                    and makt.spras = $session.system_language
{ 
    ekpo.ebeln,
    ekpo.ebelp,
    ekpo.matnr,
    makt.maktx,
    ekpo.werks,
    ekpo.lgort,
    ekpo.meins,
    lfa1.lifnr,
    lfa1.name1,
    concat_with_space(lfa1.stras, lfa1.mcod3, 1) as satici_adresi
}
