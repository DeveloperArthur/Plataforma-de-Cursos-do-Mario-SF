@isTest
public class TestCursosMarioController {
    
    @isTest
    public static void deveRetornarCursos(){
        criaCursos();
        
        CursosMarioController cursoController = new CursosMarioController();
        List<Curso__c> cursos = cursoController.getCursos();
        
        System.assertEquals(3, cursos.size());
    }
    
    private static void criaCursos(){
        Curso__c curso1 = new Curso__c();
        curso1.Name = 'Curso 1';
        curso1.Descri_o_do_Curso__c = 'teste';
        curso1.Link_da_Imagem_do_Curso__c = 'www.imagem.curso.com.br';
        curso1.Link_do_Curso__c = 'www.1.com.br';
        insert curso1;
        
        Curso__c curso2 = new Curso__c();
        curso2.Name = 'Curso 2';
        curso2.Descri_o_do_Curso__c = 'teste';
        curso2.Link_da_Imagem_do_Curso__c = 'www.imagem.curso.com.br';
        curso2.Link_do_Curso__c = 'www.2.com.br';
        insert curso2;
        
        Curso__c curso3 = new Curso__c();
        curso3.Name = 'Curso 3';
        curso3.Descri_o_do_Curso__c = 'teste';
        curso3.Link_da_Imagem_do_Curso__c = 'www.imagem.com.br';
        curso3.Link_do_Curso__c = 'www.3.com.br';
        insert curso3;
    }
    
    @isTest
    public static void deveRetornarQueNaoHaCursos(){
        CursosMarioController cursoController = new CursosMarioController();
        cursoController.getCursos();
        
        System.assertEquals(false, cursoController.verificaSeHaCursos());
    }
    
    @isTest
    public static void deveRetornarMensagemDeNaoHaCursos(){
        CursosMarioController cursoController = new CursosMarioController();
        cursoController.getCursos();
        
        System.assertEquals(cursoController.MENSAGEM_NAO_HA_CURSOS, cursoController.setMensagem());
    }
    
    @isTest
    public static void deveRetornarQueHaCursos(){
        criaCursos();
        
        CursosMarioController cursoController = new CursosMarioController();
        cursoController.getCursos();
        
        System.assertEquals(true, cursoController.verificaSeHaCursos());
    }
    
    @isTest
    public static void deveRetornarMensagemEmBranco(){
        criaCursos();
        
        CursosMarioController cursoController = new CursosMarioController();
        cursoController.getCursos();
        
        System.assertEquals('', cursoController.setMensagem());
    }
}
