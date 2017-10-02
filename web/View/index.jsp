<%-- 
    Document   : index
    Created on : 16/09/2017, 13:58:54
    Author     : porte
--%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <!-- Bootstrap Core CSS -->
        <link href="../Model/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- MetisMenu CSS -->
        <link href="../Model/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="../Model/dist/css/sb-admin-2.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="../Model/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    </head>
    <body>
         <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-body">
                        <form class="form-signin" method="post" action="login.jsp">
						  
                        <h2 class="form-signin-heading"> Login</h2><hr />

                        <div class="form-group">
                                <input type="text" class="form-control" name="login" placeholder="Login" required />
                                <span id="check-e"></span>
                        </div>

                        <div class="form-group">
                                <input type="password" class="form-control" name="senha" placeholder="Senha" />
                        </div>

                        <hr />

                        <div class="form-group">
                                <button type="submit" name="btn-login" class="btn btn-default">
                                                <i class="glyphicon glyphicon-log-in"></i> Entrar
                                </button>
                        </div>  
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>   
        
    </body>
</html>
