{include file="header.tpl"}
<div class="row">
    <article class="col-sm-8">
        <section>
            <div class="bordearticle bg-dark text-white w-100">
                <h1>Crear Cuenta</h1>
            </div>
            <div class="bg-dark text-white pt-4 formularioinicio">
                <form class="container" id="formularioregistro">
                    <div class="form-group row">
                        <div class="col-sm-2 ">
                            <label>Usuario:</label>
                        </div>
                        <div class="col-sm-8">
                            <input type="text" class="form-control w-100 p-4">
                        </div>
                    </div>
                    <div class="form-group row ">
                        <div class="col-sm-2 ">
                            <label>Contraseña</label>
                        </div>
                        <div class="col-sm-8">
                            <input type="password" class="form-control p-4">
                        </div>
                    </div>
                    <div class="form-group row ">
                        <div class="col-sm-2 ">
                            <label>Repetir Contraseña</label>
                        </div>
                        <div class="col-sm-8">
                            <input type="password" class="form-control p-4">
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-sm-2 ">
                            <label>Usuario:</label>
                        </div>
                        <div class="col-sm-8">
                            <input type="text" class="form-control p-4">
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-sm-2 ">
                            <label>Captcha:</label>
                        </div>
                        <div class="col-sm-8">
                            <p class="bg-white text-dark col-sm-2 p-2" id="textocaptcha"></p>
                            <input id="inputcaptcha" type="text" class="form-control p-4">
                            <div id="captchainvalido" class="invalid-feedback"></div>
                            <div id="captchavalido" class="valid-feedback"></div>
                        </div>
                    </div>

                    <div class="form-group row ">
                        <div class="col-sm-12">
                            <button type="submit" class="btn btn-primary btn-lg btn-dark btn-outline-light mt-4 ">Registrarse</button>
                        </div>
                    </div>
                </form>
            </div>
        </section>
    </article>
    <article id="izq" class="col-sm">
        <section>
            <div class="bordearticle bg-dark text-white ">
                <p>STATUS</p>
            </div>
            <table class="table table-dark">
                <tbody>
                    <tr>
                        <td>Cuentas Totales:</td>
                        <td>123123</td>
                    </tr>
                    <tr>
                        <td>Personajes totales:</td>
                        <td>1234112</td>
                    </tr>
                    <tr>
                        <td>Guilds totales:</td>
                        <td>4123</td>
                    </tr>
                    <tr>
                        <td>Usuarios en linea</td>
                        <td id="usuariosonline"></td>
                    </tr>
                </tbody>
            </table>
        </section>
    </article>
<<<<<<< HEAD
    {include file="footer.tpl"}
=======
{include file="footer.tpl"}
>>>>>>> c977e63ae431d8c1e579e396ac8f4bc111fe8031
