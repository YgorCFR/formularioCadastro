<%-- 
    Document   : cadastro
    Created on : 08/11/2018, 00:32:18
    Author     : Ygor
--%>

<%@page import="org.hibernate.validator.constraints.br.CPF"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        <title>Cadastro Pessoa Física</title>
    </head>
    <body>
        <div class="container">
            <div class="panel panel-primary">
                <div class="panel-heading">Cadastro Pessoa Física</div>
                <div class="panel-body">
                    <form class="form-horizontal" name="form" method="POST" action>
                        <div class="form-group">
                            <div class="col-md-6">
                                <label>Nome:</label>
                                <input name="fname" type="text" class="form-control">
                            </div>
                            <div class="col-md-2">
                                <label>CPF*:</label>
                                <input name="fcpf" type="text" class="form-control">
                            </div>
                            <div class="col-md-2">
                                <label>Data  Nasc.:</label>
                                <input name="fdat" type="date" class="form-control">
                            </div>
                            <div class="col-md-2">
                                <label>Sexo:</label>
                                <select name="fsex" class="form-control"/>
                                    <option value="Feminino">Feminino</option>
                                    <option value="Masculino">Masculino</option>
                                </select>
                            </div>
                        </div>
                        <input type="submit" value="Confirma" class="btn btn-success">
                    </form>
                    <%
                        
                        String nome = request.getParameter("fname");
                        String cpf = request.getParameter("fcpf");
                        String sexo = request.getParameter("fsex");
                        String data = request.getParameter("fdat");
                      
                        
                        try{
                            if(nome.equals(null) || nome.equals("") || nome.isEmpty()){
                                %><div class="panel panel-danger">
                                    <div class="panel-heading">ERRO</div>
                                    <div class="panel-body">
                                        FAVOR PREENCHER O NOME
                                    </div>
                                </div><%
                            }
                            if(cpf.isEmpty()){
                                %><div class="panel panel-danger">
                                    <div class="panel-heading">ERRO</div>
                                    <div class="panel-body">
                                        FAVOR PREENCHER O CPF
                                    </div>
                                </div><%
                            }

                            if(sexo.isEmpty()) {
                                %><div class="panel panel-danger">
                                    <div class="panel-heading">ERRO</div>
                                    <div class="panel-body">
                                        FAVOR PREENCHER O GÊNERO
                                    </div>
                                </div><%
                            }

                            if(data.isEmpty()) {
                                %><div class="panel panel-danger">
                                    <div class="panel-heading">ERRO</div>
                                    <div class="panel-body">
                                        FAVOR PREENCHER O DATA
                                    </div>
                                </div><%
                            }

                            if(!cpf.isEmpty() && !nome.isEmpty() && !data.isEmpty() && !sexo.isEmpty()) {
                                 %><div class="panel panel-success">
                                    <div class="panel-heading">SUCESSO</div>
                                    <div class="panel-body">
                                        CADASTRO REALIZADO COM SUCESSO
                                    </div>
                                </div><%
                            }
                            
                        } catch (Exception err) {
                            System.out.println("Formulario vazio.");
                        }
                        
                        
                   %>
                </div>
            </div>
        </div>
    </body>
</html>

