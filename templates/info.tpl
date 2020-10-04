{include file="header.tpl"}
<!-- BOTON INICIO SESION MOBILE -->
<div class="row d-sm-none">
    <div class="col">
        <button class="btn btn-secondary btn-lg btn-dark btn-outline-light w-100 mt-1 p-3" type="button" data-toggle="collapse" data-target="#iniciosesioncollapse" aria-expanded="false" aria-controls="iniciosesioncollapse">
            Iniciar Sesion
        </button>
    </div>
</div>
<!-- INICIO SESION MOBILE -->
<div class="row text-center">
    <div class="collapse col" id="iniciosesioncollapse">
        <div class="bordearticle bg-dark text-white ">
            <p>Iniciar Sesion</p>
        </div>
        <div class="bg-dark text-white pt-4 formularioinicio">
            <form id="formIniciarSesion" class="container">
                <div class="form-group form-row ">
                    <div class="col-4">
                        <label>Usuario: </label>
                    </div>
                    <div class="col-8">
                        <input type="text" class="w-100 form-control mr-5 mb-4" id="user">
                        <div id="usuarioinvalido" class="invalid-feedback"></div>
                    </div>
                </div>
                <div class="form-group form-row">
                    <div class="col-4">
                        <label>Contraseña:</label>
                    </div>
                    <div class="col-8">
                        <input type="password" class="form-control mr-5 mb-4 " id="password">
                        <div id="passinvalida" class="invalid-feedback "></div>
                    </div>
                </div>
                <div class=" form-row ">
                    <small class="col ">Si no tienes cuenta puede registrarte <a href="crearcuenta.html ">Aqui</a>
                </small>
                </div>
                <div class="form-row ">
                    <div class="col ">
                        <button class="btn btn-primary btn-lg btn-dark btn-outline-light mt-4 " id="btnIniciarSesion">Iniciar Sesion</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<div class="row ">
    <!-- ARTICULO PRINCIPAL -->
    <article class="col-sm-8">
        <section>
            <div class="bordearticle bg-dark text-white w-100 ">
                <h1>INFORMACION</h1>
            </div>
            <div>
                <table class="table table-dark table-bordered ">
                    <thead>
                        <tr>
                            <th scope="col "></th>
                            <th scope="col ">NORMAL</th>
                            <th scope="col ">VIP</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row ">Version del Servidor</th>
                            <td>Season6 Ep3</td>
                            <th>-</td>
                        </tr>
                        <tr>
                            <th scope="row ">Experiencia</th>
                            <td>x5000</td>
                            <td>x9999</td>
                        </tr>
                        <tr>
                            <th scope="row ">DROP</th>
                            <td>80%</td>
                            <td>90%</td>
                        </tr>
                        <tr>
                            <th scope="row ">Puntos por level</th>
                            <td>20/22</td>
                            <td>21/23</td>
                        </tr>
                        <tr>
                            <th scope="row ">Reset Max</th>
                            <td>100 Reset</td>
                            <td>120</td>
                        </tr>
                        <tr>
                            <th scope="row ">Eventos activos</th>
                            <td>Todos los eventos 100% funcionando</td>
                            <td>-</td>
                        </tr>
                        <tr>
                            <th scope="row ">Venta de joyas</th>
                            <td>Solo jewels of bless a la venta</td>
                            <td>Todas las jewels a la venta</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </section>
    </article>
    <!-- ARTICULO SECUNDARIO -->
    <article id="izq " class="col-sm">
        <!-- SECION INICIO SESION -->
        <section>
            <div class="bordearticle bg-dark text-white d-none d-sm-block text-center">
                <p>Iniciar Sesion</p>
            </div>
            <div class="bg-dark text-white pt-4 formularioinicio d-none d-sm-block text-center">
                <form id="formIniciarSesion" class="container">
                    <div class="form-group form-row ">
                        <div class="col-4">
                            <label>Usuario: </label>
                        </div>
                        <div class="col-8">
                            <input type="text" class="w-100 form-control mr-5 mb-4" id="user">
                            <div id="usuarioinvalido" class="invalid-feedback"></div>
                        </div>
                    </div>
                    <div class="form-group form-row">
                        <div class="col-4">
                            <label>Contraseña:</label>
                        </div>
                        <div class="col-8">
                            <input type="password" class="form-control mr-5 mb-4 " id="password">
                            <div id="passinvalida" class="invalid-feedback "></div>
                        </div>
                    </div>
                    <div class=" form-row ">
                        <small class="col ">Si no tienes cuenta puede registrarte <a href="crearcuenta.html ">Aqui</a>
                        </small>
                    </div>
                    <div class="form-row ">
                        <div class="col ">
                            <button class="btn btn-primary btn-lg btn-dark btn-outline-light mt-4 " id="btnIniciarSesion">Iniciar Sesion</button>
                        </div>
                    </div>
                </form>
            </div>
        </section>
        <!-- SECCION STATUS -->
        <section>
            <div class="bordearticle bg-dark text-white text-center">
                <p>STATUS</p>
            </div>
            <table class="table table-dark ">
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
        <!-- SECCION TOP 5 -->
        <section>
            <div class="bordearticle bg-dark text-white ">
                <p>TOP 5 USUARIOS</p>
            </div>
            <div class="ranking ">
                <table class="table table-hover table-dark ">
                    <thead>
                        <tr>
                            <th>Top</th>
                            <th>Usuario</th>
                            <th>Resets</th>
                            <th>Level</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row ">1</th>
                            <td>SharkL</td>
                            <td>300</td>
                            <td>400</td>
                        </tr>
                        <tr>
                            <th scope="row ">2</th>
                            <td>Houth</td>
                            <td>250</td>
                            <td>400</td>
                        </tr>
                        <tr>
                            <th scope="row ">3</th>
                            <td>Sumsmeath</td>
                            <td>212</td>
                            <td>356</td>
                        </tr>
                        <tr>
                            <th scope="row ">4</th>
                            <td>Shalsh</td>
                            <td>210</td>
                            <td>342</td>
                        </tr>
                        <tr>
                            <th scope="row ">5</th>
                            <td>DrLemmon</td>
                            <td>209</td>
                            <td>398</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </section>
    </article>
</div>
{include file="footer.tpl"}