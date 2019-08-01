<%-- 
    Document   : entreeRech
    Created on : 1 août 2019, 10:28:55
    Author     : Administrateur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <%@include file="./header.jsp" %>
    </head>
    <body>
        <div class="row">
            <div class="col">
            
         <%@include file="./nav.jsp" %>
         <jsp:useBean id="MaRecherche" scope="session" class="com.rachelmartin.mediatheque.Rechercher"/>
         
        <h1>votre recherche</h1>

         <form method="POST" action="resultatRech.jsp">
            <label for="auteurform">AUTEUR : </label>
            <input type="text" name="auteurform" id="auteur" value="<jsp:getProperty name="MaRecherche" property="auteur"/>"/>
            <br><br>
            <label for="auteurform">TITRE : </label>
            <input type="text" name="titreform" id="titre" value="<jsp:getProperty name="MaRecherche" property="titre"/>"/>
            <br><br>
            <label for="titreform">TYPE : </label>
            <input type="text" name="typeform" id="auteur" value="<jsp:getProperty name="MaRecherche" property="type"/>"/>
            
            <input type="submit" value="Rechercher"/>
        </form>
        </div> 
            
             <div class="col">
                 
           
           
        </div>    
</div> 
        
        <%-- <jsp:setProperty name="MaRecherche" property="titre" value="rouge et noir"/><br>
        <jsp:setProperty name="MaRecherche" property="auteur" value="Stendhal"/><br>
 <jsp:setProperty name="MaRecherche" property="type" value="L"/>--%>

        
    
         <%@include file="./pied.html" %>
    </body>
</html>
