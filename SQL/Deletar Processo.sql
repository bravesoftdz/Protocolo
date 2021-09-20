-- Deletar o processo da lista de histórico  
DELETE HP.* FROM `tb_historico_processo` HP
INNER JOIN `tb_cad_protocolo` CP ON (`CP`.`id_cad_protocolo` = HP.`id_cad_protocolo`)
WHERE 
  CP.NUM_PROCESSO = '9243900/2004';
  
  
DELETE CP.* FROM `tb_cad_protocolo` CP
WHERE 
  CP.NUM_PROCESSO = '9243900/2004';