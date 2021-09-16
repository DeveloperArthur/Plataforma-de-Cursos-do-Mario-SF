public class CursosMarioController {
    public final List<Curso__c> cursos {get;set;}
    public final Boolean haCursos {get;set;}
    public final String mensagemNaoHaCursos {get;set;}
    
    public CursosMarioController(){
        cursos = getCursos();
        haCursos = verificaSeHaCursos();
        mensagemNaoHaCursos = setMensagemNaoHaCursos();
    }
    
    public List<Curso__c> getCursos(){
        return [SELECT Name, CreatedDate, Link_da_Imagem_do_Curso__c, Descri_o_do_Curso__c, Link_do_Curso__c
               FROM Curso__c ORDER BY CreatedDate DESC];
    }
    
    public Boolean verificaSeHaCursos(){
        if(cursos.isEmpty()) 
            return false;
        return true;
    }
    
    public String setMensagemNaoHaCursos(){
        if(haCursos) 
            return '';
        return 'No momento não há cursos cadastrados';
    }
}
