<html>
    <c:remove var="currentSessionUser" scope="session"  /> 
    <body>
        <div>
            <form method="post" action="LoginServlet">
                <p>
                    <label for="login">email: </label>
                    <input type="email" id ="email" name="email"/>
                    <!-- Ce n'est qu'un mod�le statique -->
                </p>
            
                <p>
                    <label for="pass">Mot de passe: </label>
                    <input type="password" id ="pass" name="pass"/>
                    <!-- de m�me -->
                </p>
                
                <p><input type="submit" /></p>
                
                
            </form>
        </div>
    </body>
</html>