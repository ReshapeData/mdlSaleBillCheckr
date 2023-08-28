#' 嘉好即时库存更新报表
#'
#' @param token 中台数据库token
#' @param FNumber 单据编号
#' @param FName ERP账套名
#'
#' @return
#' @export
#'
#' @examples
#' stockTable_query('C0426D23-1927-4314-8736-A74B2EF7A039','01.3889U.904','江苏嘉好热熔胶股份有限公司','R-230809013-A03B-5202U-AD(1-)(印尼)','SCDD-100-20230807-0002','谢纪伟','PT.ANEKA MITRA GEMILANG')
stockTable_query<- function(token,FMaterialId,companyName,Flot,FBillNO,Fsalesman,FCustName){
  #注册python模板
  mdl <- tsda::import('mdlJhInvUpdateRptpy.main')
  
  res <- mdl$stockTable_query(token,FMaterialId,companyName,Flot,FBillNO,Fsalesman,FCustName)
  #返回结果
  return(res)
  
}
