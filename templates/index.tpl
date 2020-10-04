{include file="header.tpl"}
<div class="row d-sm-none">
    <div class="col">
        <button class="btn btn-secondary btn-lg btn-dark btn-outline-light w-100 mt-1 p-3" type="button" data-toggle="collapse" data-target="#iniciosesioncollapse" aria-expanded="false" aria-controls="iniciosesioncollapse">
            Iniciar Sesion
        </button>
    </div>
</div>
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
<article class="row d-none d-sm-block">
    <div class="clasesexistentes ">
        <ul class="row ">
            <li class="col-sm ">
                <img src="images/darkwizard.png " alt="Clase dark wizard ">
                <h1>Dark Wizard</h1>
                <p>Esta clase se destaca por su magia oscura.</p>
            </li>
            <li class="col-sm ">
                <img src="images/magicgladiator.png " alt="Clase magicgladiator ">
                <h1>Magic Gladiator</h1>
                <p>Esta clase se destaca por su grandiosa energia y fuerza en el combate.</p>
            </li>
            <li class="col-sm ">
                <img src="images/summoner.png " alt="Clase Summoner ">
                <h1>Summoner</h1>
                <p>Esta clase se destaca por sus poderes abismales</p>
            </li>
            <li class="col-sm ">
                <img src="images/ragefighter.png " alt="Clase Rage Fighter ">
                <h1>Rage Fighter</h1>
                <p>Esta clase se destaca por sus furiosos puños y su increible daño en area.</p>
            </li>
            <li class="col-sm ">
                <img src="images/elf.png " alt="Clase Elfa ">
                <h1>Elf Archer</h1>
                <p>Esta clase se destaca por su poder con el arco y sus increibles bufos.</p>
            </li>
            <li class="col-sm ">
                <img src="images/bk.png " alt="Clase Black Knight ">
                <h1>Black Knight</h1>
                <p>Se destaca por portar las mejores armaduras y tener la mejor fuerza</p>
            </li>
        </ul>
    </div>
</article>
<div class="row">
    <article class="col-sm-8">
        <div class="bordearticle bg-dark text-white w-100">
            <h1>Noticias</h1>
        </div>
        <div class="card text-white bg-dark">
            <div class="row no-gutters">
                <div class="col-sm-4">
                    <img src="images/noticia1.jpg" class="card-img" alt="...">
                </div>
                <div class="col-sm-8">
                    <div class="card-body">
                        <h5 class="card-title">Tenemos vencedores de Castle Siege!</h5>
                        <p class="card-text">El pasado sabado, los jugadores del clan Shadow Darkness han demostrado ser los mas fuertes del juego. Aun no hay quien los derrote, ¿Que estas esperando? Entra ya!</p>
                        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                    </div>
                </div>
            </div>
        </div>
        <button class="btn btn-secondary btn-lg btn-dark btn-outline-light w-100 mt-1 p-3 d-sm-none" type="button" data-toggle="collapse" data-target="#noticiascollapse" aria-expanded="false" aria-controls="noticiascollapse">
             Ver mas noticias
            </button>
        <div class="collapse dont-collapse-sm" id="noticiascollapse">
            <div class="card text-white bg-dark">
                <div class="row no-gutters">
                    <div class="col-sm-4">
                        <img src="images/noticia2.jpg" class="card-img" alt="...">
                    </div>
                    <div class="col-sm-8">
                        <div class="card-body">
                            <h5 class="card-title">Evento: Fin de semana doble exp!</h5>
                            <p class="card-text">Comenzara el proximo viernes, hasta el domingo 23:59hs! Cuentan todos ustedes con esta informacion, si aun no descargaste el juego ¿Que estas esperando?</p>
                            <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card text-white bg-dark">
                <div class="row no-gutters">
                    <div class="col-sm-4">
                        <img src="images/noticia3.jpg" class="card-img" alt="...">
                    </div>
                    <div class="col-sm-8">
                        <div class="card-body">
                            <h5 class="card-title">Gracias a todos, tenemos pronta inauguracion</h5>
                            <p class="card-text"></p>
                            <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </article>
    <article id="izq" class="col-sm">
        <section>
            <div class="bordearticle bg-dark text-white d-none d-sm-block">
                <p>INICIAR SESION</p>
            </div>
            <div class="bg-dark text-white pt-4 formularioinicio d-none d-sm-block">
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
        <section>
            <div class="bordearticle bg-dark text-white ">
                <p>TOP 5 USUARIOS</p>
            </div>
            <div class="ranking ">
                <table class="table table-hover table-dark">
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
                            <th scope="row">1</th>
                            <td>SharkL</td>
                            <td>300</td>
                            <td>400</td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>Houth</td>
                            <td>250</td>
                            <td>400</td>
                        </tr>
                        <tr>
                            <th scope="row">3</th>
                            <td>Sumsmeath</td>
                            <td>212</td>
                            <td>356</td>
                        </tr>
                        <tr>
                            <th scope="row">4</th>
                            <td>Shalsh</td>
                            <td>210</td>
                            <td>342</td>
                        </tr>
                        <tr>
                            <th scope="row">5</th>
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
<div class="row d-sm-none bg-dark m-1">
    <div class="col">
        <div id="carouselExampleCaptions" class="carousel slide carousel-fade" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
                <li data-target="#carouselExampleCaptions" data-slide-to="3"></li>
                <li data-target="#carouselExampleCaptions" data-slide-to="4"></li>
                <li data-target="#carouselExampleCaptions" data-slide-to="5"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="images/darkwizard2.png" class="img-fluid w-100" alt="...">
                    <div class="carousel-caption carouselinfo text-dark">
                        <h5>Dark Wizard</h5>
                        <p>Esta clase se destaca por su magia oscura.</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="images/bk.png" class="img-fluid" alt="...">
                    <div class="carousel-caption carouselinfo text-dark">
                        <h5>Dark Knight</h5>
                        <p>Se destaca por portar las mejores armaduras y tener la mejor fuerza.</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="images/elf.png" class="img-fluid " alt="...">
                    <div class="carousel-caption carouselinfo text-dark">
                        <h5>Elf Archer</h5>
                        <p>Esta clase se destaca por su poder con el arco y sus increibles bufos.</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="images/magicgladiator.png" class="img-fluid" alt="...">
                    <div class="carousel-caption carouselinfo text-dark">
                        <h5>Magic Gladiator</h5>
                        <p>Esta clase se destaca por su grandiosa energia y fuerza en el combate.</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="images/summoner2.png" class="img-fluid" alt="...">
                    <div class="carousel-caption carouselinfo text-dark">
                        <h5>Summoner</h5>
                        <p>Esta clase se destaca por sus poderes abismales.</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="images/ragefighter3.png" class="img-fluid " alt="...">
                    <div class="carousel-caption carouselinfo text-dark">
                        <h5>Rage Figther</h5>
                        <p>Esta clase se destaca por sus furiosos puños y su increible daño en area.</p>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
</div>
{include file="footer.tpl"}