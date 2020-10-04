<div class="row d-sm-none">
    <div class="col">
        <a href="#iniciosesioncollapse"><button class="btn btn-secondary btn-lg btn-dark btn-outline-light w-100 mt-1 p-3" type="button" data-toggle="collapse" data-target="#iniciosesioncollapse" aria-expanded="false" aria-controls="iniciosesioncollapse">
            Iniciar Sesion
        </button></a>
    </div>
</div>
<div class="row">
    <article class="col-sm-8">
        <section class="col-sm">
            <div class="bordearticle bg-dark text-white w-100">
                <div class="d-flex justify-content-center">
                    <h4>Busqueda avanzada</h4>
                </div>
                <div class="row">
                    <div class="col-sm-12 col-md-6 col-xl-3"><input type="text" placeholder="Quien tenga este nombre" class="w-100 form-control mr-5 mb-4" id="inputSName"></div>
                    <div class="col-sm-12 col-md-6 col-xl-3"><input type="number" placeholder="Mayores a * niveles" class="w-100 form-control mr-5 mb-4" id="inputSLevel"></div>
                    <div class="col-sm-12 col-md-6 col-xl-3"><input type="number" placeholder="Mayores a * resets" class="w-100 form-control mr-5 mb-4" id="inputSResets"></div>
                    <div class="col-sm-12 col-md-6 col-xl-3"><input type="number" placeholder="Mayores a * niveles vip" class="w-100 form-control mr-5 mb-4" id="inputSLVip"></div>
                </div>
                <div class="d-flex justify-content-between">
                    <button class="btn btn-primary btn-lg btn-dark btn-outline-light mt-4" id="btnASearch">Buscar</button>
                    <button class="btn btn-primary btn-lg btn-dark btn-outline-light mt-4" id="btnBorrar">Borrar filtros</button>
                </div>
            </div>
        </section>
        <section class="col-sm">
            <div class="bordearticle bg-dark text-white w-100 ">
                <h1>USUARIOS VIP</h1>
            </div>
            <div>
                <div>
                    <table class="table table-dark table-bordered">
                        <thead>
                            <tr>
                                <th>Nombre</th>
                                <th>Nivel</th>
                                <th>Resets</th>
                                <th>Nivel vip</th>
                                <th id="table-acciones">Acciones</th>
                            </tr>
                        </thead>
                        <tbody id="table-body">
                        </tbody>
                    </table>
                </div>
            </div>
        </section>
    </article>
    <article id="izq " class="col-sm">
        <section class="collapse col dont-collapse-sm" id="iniciosesioncollapse">
            <div id="ocultarsesion">
                <div class="bordearticle bg-dark text-white text-center">
                    <p>Iniciar Sesion</p>
                </div>
                <div class="bg-dark text-white pt-4 formularioinicio  text-center">
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
                            <small class="col ">Si no tienes cuenta puede registrarte aquí
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
        </section>
        <!-- DIV MENU ADMIN -->
        <section id="mostrarmenu">
            <div class="bordearticle bg-dark text-white text-center ">
                <p>Bienvenido Admin</p>
            </div>
            <div class="bg-dark text-white pt-4 formularioinicio text-center ">
                <form id="formMenuadm" class="container">
                    <div class="form-group form-row">
                        <div class="col-4">
                            <label class=>Nombre de usuario:</label>
                        </div>
                        <div class="col-8">
                            <input class="form-control w-100 mr-4 " type="text " id="userName">
                        </div>
                    </div>
                    <div class="form-group form-row ">
                        <div class="col-4">
                            <label class=>Nivel de usuario:</label>
                        </div>
                        <div class="col-8">
                            <input class="form-control mr-4 " type="number " id="levelUser">
                        </div>
                    </div>
                    <div class="form-group form-row ">
                        <div class="col-4">
                            <label>Reset:</label>
                        </div>
                        <div class="col-8">
                            <input class="form-control mr-4 " type="number " id="resetsUser">
                        </div>
                    </div>
                    <div class="form-group form-row ">
                        <div class="col-4">
                            <label class="col ">Nivel Vip:</label>
                        </div>
                        <div class="col-8">
                            <input class="form-control mr-4 " type="number " id="viplevelUser">
                        </div>
                    </div>
                    <div class="form-row ">
                        <div class="col-md-6 col-lg-4">
                            <button id="btnAgregar" class="btn btn-primary btn-md btn-dark btn-outline-light ">Agregar</button>
                        </div>
                        <div class="col-md-6 col-lg-4">
                            <button id="btnEliminarTodos" class="btn btn-primary btn-md btn-dark btn-outline-light ">Eliminar</button>
                        </div>
                        <div class="col-md-6 col-lg-4">
                            <button id="btnAgregarTri" class="btn btn-primary btn-md btn-dark btn-outline-light ">Agregar x3</button>
                        </div>
                    </div>
                    <div>
                        <button id="btnCerrarSesion" class="btn btn-primary btn-lg btn-dark btn-outline-light mt-4 ">Cerrar sesion</button>
                    </div>
                </form>
            </div>
        </section>
    </article>