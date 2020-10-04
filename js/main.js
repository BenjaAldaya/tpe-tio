'use strict'
document.addEventListener("DOMContentLoaded", function(e) {
    fetch("contentindex.html")
        .then(r => {
            r.text().then(text => {
                document.querySelector("#main-content").innerHTML = text
                scriptusuariosonline();
                cambiarhistorial("contentindex.html", "Inicio");
            });
        })
        .catch(error => {
            console.log(error);
            container.innerHTML = "<h1>Error - Connection Failed!</h1>";
        });
});

function cambiarhistorial(url, titulo) {
    window.history.pushState({
        url: url,
        titulo: titulo
    }, titulo, url);
}

window.onpopstate = function(e) {
    /*  Cuando el usuario hace click en las flechas de navegador 
        para ir a anterior o siguiente */

    let state = e.state;

    if (state !== null) {
        //state se define en cambiarHistorial, ahí almacenamos el título de la página y la url
        document.title = state.titulo;
        cargarParte(state.url);
    }

}

let logo = document.querySelector("#logo");
logo.addEventListener("click", function(e) {
    e.preventDefault();
    fetch("contentindex.html")
        .then(r => {
            r.text().then(text => {
                document.querySelector("#main-content").innerHTML = text
                cambiarhistorial("contentindex.html", "Inicio");
                scriptusuariosonline();
            });
        })
        .catch(error => {
            console.log(error);
            container.innerHTML = "<h1>Error - Connection Failed!</h1>";
        });
});

let inicio = document.querySelector("#inicio");
inicio.addEventListener("click", function(e) {
    e.preventDefault();
    fetch("contentindex.html")
        .then(r => {
            r.text().then(text => {
                document.querySelector("#main-content").innerHTML = text
                cambiarhistorial("contentindex.html", "Inicio");
                scriptusuariosonline();
            });
        })
        .catch(error => {
            console.log(error);
            container.innerHTML = "<h1>Error - Connection Failed!</h1>";
        });
});

let informacion = document.querySelector("#informacion");
informacion.addEventListener("click", function(e) {
    e.preventDefault();
    fetch("contentinfo.html")
        .then(r => {
            r.text().then(text => {
                document.querySelector("#main-content").innerHTML = text
                scriptusuariosonline();
                cambiarhistorial("contentinfo.html", "Informacion");
            });
        })
        .catch(error => {
            console.log(error);
            container.innerHTML = "<h1>Error - Connection Failed!</h1>";
        });
});

let usuariosviphtml = document.querySelector("#usuariosvip");
usuariosviphtml.addEventListener("click", function(e) {
    e.preventDefault();
    fetch("contentusuariosvip.html")
        .then(r => {
            r.text().then(text => {
                document.querySelector("#main-content").innerHTML = text
                cambiarhistorial("contentusuariosvip.html", "Usuarios Vip");
                let pagina = window.location.pathname;
                scriptusuariosvip(pagina);

            });
        })
        .catch(error => {
            console.log(error);
            document.querySelector("#main-content").innerHTML = "<h1>Error - Connection Failed!</h1>";
        });
})

let registrarsehtml = document.querySelector("#registrarse");
registrarsehtml.addEventListener("click", function(e) {
    e.preventDefault()
    fetch("contentregistrarse.html")
        .then(r => {
            r.text().then(text => {
                document.querySelector("#main-content").innerHTML = text
                cambiarhistorial("contentregistrarse.html", "Registrarse");
                scriptusuariosonline();
                scriptregistrarse()
            });
        })
        .catch(error => {
            console.log(error);
            container.innerHTML = "<h1>Error - Connection Failed!</h1>";
        });
})


function scriptusuariosonline() {
    let usuariosonline = document.querySelector("#usuariosonline");
    let usuariosonlinenumber = Math.floor(Math.random() * (0, 100) + 1);
    usuariosonline.innerHTML = usuariosonlinenumber;
}

function scriptregistrarse() {
    let textocaptcha = document.querySelector("#textocaptcha");
    let numerocaptcha = Math.floor(Math.random() * (999999 - 100000) + 100000);
    textocaptcha.innerHTML = numerocaptcha;
    let formularioregistro = document.querySelector("#formularioregistro");
    formularioregistro.addEventListener("submit", function(e) {
        e.preventDefault();
        validarregistro();
    });

    function validarregistro() {
        let inputcaptcha = document.querySelector("#inputcaptcha");
        let numero = numerocaptcha.toString();
        if (inputcaptcha.value === numero) {
            inputcaptcha.className = "form-control p-4 is-valid";
            document.querySelector("#captchavalido").innerHTML = "Captcha correcto";
            numerocaptcha = Math.floor(Math.random() * (999999 - 100000) + 100000);
            textocaptcha.innerHTML = numerocaptcha;
            inputcaptcha.value = "";
        } else {
            numerocaptcha = Math.floor(Math.random() * (999999 - 100000) + 100000);
            textocaptcha.innerHTML = numerocaptcha;
            inputcaptcha.value = "";
            inputcaptcha.className = "form-control p-4 is-invalid";
            document.querySelector("#captchainvalido").innerHTML = "Captcha Incorrecto";
        }
    }
}

function scriptusuariosvip(pagina) {
    const baseUrl = 'https://web-unicen.herokuapp.com/api/groups';
    const groupID = '05ABFB';
    const collectionID = 'usuarios';
    let inputSName = document.querySelector("#inputSName");
    let inputSLevel = document.querySelector("#inputSLevel");
    let inputSResets = document.querySelector("#inputSResets");
    let inputSLVip = document.querySelector("#inputSLVip");
    let btnASearch = document.querySelector("#btnASearch");
    let tableBody = document.querySelector("#table-body");
    let buscar;
    let editando = false;
    precargarUsers();
    let sesioniniciada = false;
    var intervalo = setInterval(function() {
        if (window.location.pathname === pagina) {
            if (editando === false) {
                if ((inputSName.value === "") && (inputSLevel.value === "") && (inputSResets.value === "") && (inputSLVip.value === "")) {
                    precargarUsers();
                } else if (buscar === true) {
                    filtrar();
                }
            }
        } else {
            clearInterval(intervalo);
            console.log("el intervalo corto correctamente")
        }
    }, 5000);


    //agrega 3 usuarios nuevos aleatorios
    let btnAgregarTri = document.querySelector("#btnAgregarTri");
    btnAgregarTri.addEventListener("click", (e) => {
        e.preventDefault();
        agregarTri();
    });

    //obtiene todos los usuarios
    function precargarUsers() {
        fetch(`${baseUrl}/${groupID}/${collectionID}`, {
            'method': 'GET'
        }).then(res => {
            return res.json();
        }).then(json => {
            if (json.status === 'OK') {
                mostrarDatos(json.usuarios);
            };
        }); //agregar catch
    };
    //muestra todos los usuarios
    function mostrarDatos(usuarios) {
        tableBody.innerHTML = "";
        usuarios.forEach(u => {
            agregarFila(u);
        });
    };

    //boton toma los datos del usuario ingresado en input 
    let userName = document.querySelector("#userName");
    let resetsUser = document.querySelector("#resetsUser");
    let viplevelUser = document.querySelector("#viplevelUser");
    let levelUser = document.querySelector("#levelUser");
    let usuariosvipfila = document.querySelector("#usuariosVip");
    let btnAgregar = document.querySelector("#btnAgregar");
    btnAgregar.addEventListener("click", (e) => {
        e.preventDefault();
        let usuario = {
            "userName": userName.value,
            "levelUser": parseInt(levelUser.value),
            "resetsUser": parseInt(resetsUser.value),
            "viplevelUser": parseInt(viplevelUser.value),
        };
        agregar(usuario);
    });


    //agrega un usuario a la url
    function agregar(usuario) {
        let data = {
            'thing': usuario
        };

        fetch(`${baseUrl}/${groupID}/${collectionID}`, {
            'method': 'POST',
            'headers': {
                'content-type': 'application/json'
            },
            'body': JSON.stringify(data)
        }).then(res => {
            return res.json();
        }).then(dato => {
            precargarUsers();
        }).catch((error) => {
            console.log(error);
        })

        document.querySelector("#userName").value = "";
        document.querySelector("#resetsUser").value = "";
        document.querySelector("#viplevelUser").value = "";
        document.querySelector("#levelUser").value = "";
    };

    //agrega usuario en el html
    function agregarFila(usuario) {
        let row = document.createElement('tr');
        let columnauserName = document.createElement('td');
        let columnalevelUser = document.createElement('td');
        let columnaresetUser = document.createElement('td');
        let columnaviplevelUser = document.createElement('td');
        let columnaAcciones = document.createElement('td');
        columnaAcciones.classList.add('row');
        columnaAcciones.classList.add('table-acciones');
        columnaAcciones.classList.add('d-flex');
        columnaAcciones.classList.add('justify-content-between');
        columnaAcciones.id = 'table-acciones';
        columnauserName.innerHTML = usuario.thing.userName;
        columnalevelUser.innerHTML = usuario.thing.levelUser;
        columnaresetUser.innerHTML = usuario.thing.resetsUser;
        columnaviplevelUser.innerHTML = usuario.thing.viplevelUser;
        let btnEliminar = document.createElement('button');
        btnEliminar.innerHTML = "Eliminar";
        btnEliminar.id = 'btnEliminar';
        btnEliminar.classList.add('btn');
        btnEliminar.classList.add('btn-danger');
        btnEliminar.classList.add('col-xs-12');
        btnEliminar.classList.add('col-md-6');
        btnEliminar.addEventListener('click', (e) => {
            e.preventDefault();
            eliminar(usuario._id);
        });
        columnaAcciones.appendChild(btnEliminar);
        let btnEditar = document.createElement('button');
        btnEditar.innerHTML = "Editar";
        btnEditar.id = 'btnEditar';
        btnEditar.classList.add('btn');
        btnEditar.classList.add('btn-warning');
        btnEditar.classList.add('col-xs-12');
        btnEditar.classList.add('col-md-6');
        btnEditar.addEventListener('click', (e) => {
            e.preventDefault();
            editando = true;
            columnauserName.innerHTML = "<input type='text' id='userNameedit' class='col' value=" + `${usuario.thing.userName}` + ">";
            columnalevelUser.innerHTML = "<input type='text' id='levelUseredit' class='col' value=" + `${usuario.thing.levelUser}` + ">";
            columnaresetUser.innerHTML = "<input type='text' id='resetUseredit' class='col' value=" + `${usuario.thing.resetsUser}` + ">";
            columnaviplevelUser.innerHTML = "<input type='text' id='viplevelUseredit' class='col' value=" + `${usuario.thing.viplevelUser}` + ">";
            let btnTerminar = document.createElement('button');
            btnTerminar.innerHTML = "Terminar";
            btnTerminar.id = 'btnTerminar';
            btnTerminar.classList.add('btn');
            btnTerminar.classList.add('btn-success');
            btnTerminar.classList.add('col-xs-12');
            btnTerminar.classList.add('col-md-6');
            btnTerminar.addEventListener('click', (e) => {
                e.preventDefault();
                editando = false;
                let nuevousuario = {
                    "userName": document.querySelector("#userNameedit").value,
                    "levelUser": parseInt(document.querySelector("#levelUseredit").value),
                    "resetsUser": parseInt(document.querySelector("#resetUseredit").value),
                    "viplevelUser": parseInt(document.querySelector("#viplevelUseredit").value),
                }
                editar(usuario._id, nuevousuario);

            });
            columnaAcciones.appendChild(btnTerminar);
            btnEditar.style.display = "none";
        });
        columnaAcciones.appendChild(btnEditar);
        row.appendChild(columnauserName);
        row.appendChild(columnalevelUser);
        row.appendChild(columnaresetUser);
        row.appendChild(columnaviplevelUser);
        row.appendChild(columnaAcciones);
        tableBody.appendChild(row);

        //oculta los botones si la sesion no esta iniciada
        if (sesioniniciada === false) {
            let acc = document.querySelector("#table-acciones");
            acc.style.display = 'none';
            let btnsEliminar = document.querySelectorAll("#btnEliminar");
            btnsEliminar.forEach(botonEL => {
                botonEL.style.display = "none";
            });
            let btnsEditar = document.querySelectorAll("#btnEditar");
            btnsEditar.forEach(botonED => {
                botonED.style.display = "none"
            });
        };
    };


    //elimina usuario de la url
    function eliminar(id) {
        fetch(`${baseUrl}/${groupID}/${collectionID}/${id}`, {
            'method': 'DELETE',
        }).then(res => {
            return res.json();
        }).then(json => {
            console.log("Se elimino correctamente");
            precargarUsers();
        }); //agregar catch
    };

    function editar(id, nuevousuario) {
        let data = {
            "thing": nuevousuario,
        };
        fetch(`${baseUrl}/${groupID}/${collectionID}/${id}`, {
            'method': 'PUT',
            'headers': {
                'content-type': 'application/json'
            },
            'body': JSON.stringify(data)
        }).then(res => {
            return res.json();
        }).then(json => {
            precargarUsers();
        }); //agregar catch
    }


    // INICIO/CERRAR SESION  USUARIO:admin PASSWORD: admin
    let formIniciarSesion = document.querySelector("#formIniciarSesion");
    formIniciarSesion.addEventListener("submit", function(e) {
        e.preventDefault();
        sesioniniciada = verificar();
    });
    let btnCerrarSesion = document.querySelector("#btnCerrarSesion");
    btnCerrarSesion.addEventListener("click", cerrarSesion);


    function verificar() {
        let iniciada;
        if (document.querySelector("#user").value === "admin" && document.querySelector("#password").value === "admin") {
            document.querySelector("#ocultarsesion").style.display = "none";
            document.querySelector("#mostrarmenu").style.display = "block";
            let btnEliminar = document.querySelectorAll("#btnEliminar");
            btnEliminar.forEach(botonEL => {
                botonEL.style.display = "block";
            });
            let btnEditar = document.querySelectorAll("#btnEditar");
            btnEditar.forEach(botonED => {
                botonED.style.display = "block"
            });
            let acc = document.querySelector("#table-acciones");
            acc.style.display = 'block';

            let formMenuadmin = document.querySelector("#formMenuadm");
            formMenuadm.addEventListener("submit", function(e) {
                e.preventDefault();
                iniciada = true;
            });
        } else {
            if (document.querySelector("#password").value !== "admin") {
                document.querySelector("#password").value = "";
                document.querySelector("#password").className = "form-control is-invalid"
                document.querySelector("#passinvalida").innerHTML = "Contraseña invalida."
            } else {
                document.querySelector("#password").className = "form-control"
                document.querySelector("#passinvalida").innerHTML = ""
            }
            if (document.querySelector("#user").value !== "admin") {
                document.querySelector("#user").value = "";
                document.querySelector("#password").value = "";
                document.querySelector("#user").className = "form-control is-invalid"
                document.querySelector("#usuarioinvalido").innerHTML = "Usuario invalido."
            } else {
                document.querySelector("#user").className = "form-control"
                document.querySelector("#usuarioinvalido").innerHTML = ""
            }
            iniciada = false;
        }
        return iniciada;
    };

    function cerrarSesion() {
        let btnEliminar = document.querySelectorAll("#btnEliminar");
        btnEliminar.forEach(botonEL => {
            botonEL.style.display = "none";
        });
        let btnEditar = document.querySelectorAll("#btnEditar");
        btnEditar.forEach(botonED => {
            botonED.style.display = "none"
        });
        let acc = document.querySelector("#table-acciones");
        acc.style.display = 'none';
        document.querySelector("#ocultarsesion").style.display = "block";
        document.querySelector("#mostrarmenu").style.display = "none";
        document.querySelector("#user").className = "w-100 form-control mr-5 mb-4"
        document.querySelector("#usuarioinvalido").innerHTML = ""
        document.querySelector("#user").value = "";
        document.querySelector("#password").className = "w-100 form-control mr-5 mb-4"
        document.querySelector("#passinvalida").innerHTML = ""
        document.querySelector("#password").value = "";
        sesioniniciada = false;

    };


    // ID aleatorio para la carga de 3
    function makeid(length) {
        var result = '';
        var characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
        var charactersLength = characters.length;
        for (var i = 0; i < length; i++) {
            result += characters.charAt(Math.floor(Math.random() * charactersLength));
        }
        return result;
    };
    // agrega 3 nuevos aleatorios
    function agregarTri() {
        for (var i = 0; i < 3; i++) {
            var userName = makeid(5);
            var levelUser = parseInt(Math.floor(Math.random() * 401));
            var resetsUser = parseInt(Math.floor(Math.random() * 1000));
            var viplevelUser = parseInt(Math.floor(Math.random() * 9));

            var usuario = {
                "userName": userName,
                "levelUser": levelUser,
                "resetsUser": resetsUser,
                "viplevelUser": viplevelUser,
            };
            agregar(usuario);
        }
    };

    //BORRA TODA LA LISTA
    let btnEliminarTodos = document.querySelector("#btnEliminarTodos");
    btnEliminarTodos.addEventListener("click", (e) => {
        e.preventDefault();
        obtenerparaEliminar();
    });

    function obtenerparaEliminar() {
        fetch(`${baseUrl}/${groupID}/${collectionID}`, {
            'method': 'GET'
        }).then(res => {
            return res.json();
        }).then(json => {
            if (json.status === 'OK') {
                eliminarTodos(json.usuarios);
            };
        }); //agregar catch
    }


    function eliminarTodos(usuarios) {
        usuarios.forEach(u => {
            eliminar(u._id);
        });
        precargarUsers();
    }
    // Comienza codigo de busqueda avanzada

    btnASearch.addEventListener("click", function(e) {
        e.preventDefault();
        buscar = true;
        filtrar();
    });

    function filtrar() {
        fetch(`${baseUrl}/${groupID}/${collectionID}`, {
            'method': 'GET'
        }).then(res => {
            return res.json();
        }).then(json => {
            if (json.status === 'OK') {
                tableBody.innerHTML = ''; // borra toda la tabla para cargarla con la busqueda avanzada
                for (let i = 0; i < json.usuarios.length; i++) {
                    if (inputSName.value != '' || inputSLevel.value != '' || inputSResets.value != '' || inputSLVip.value != '') { // Si es distinto a vacio entrara al if, si no, pide que completen los campos.
                        inputSName.classList.remove('is-invalid');
                        inputSLVip.classList.remove('is-invalid');
                        inputSLevel.classList.remove('is-invalid');
                        inputSResets.classList.remove('is-invalid');
                        // Si el nombre coincide con alguno en la data base, lo mostrara en la tabla.
                        // Si se encuentra niveles mayor al que introducimos se mostraran en la tabla.
                        // Si se encuentra resets mayores al que introducimos se mostraran en la tabla.
                        // Si se encuentra niveles vip mayores al que introducimos se mostrara en la tabla.
                        if (inputSName.value === json.usuarios[i].thing.userName || (inputSLevel.value < json.usuarios[i].thing.levelUser && inputSLevel.value != '') || (inputSResets.value < json.usuarios[i].thing.resetsUser && inputSResets.value != '') || (inputSLVip.value < json.usuarios[i].thing.viplevelUser && inputSLVip.value != '')) {
                            agregarFilaEspecial(json.usuarios[i]);
                        }
                    } else {
                        inputSName.classList.add('is-invalid');
                        inputSLVip.classList.add('is-invalid');
                        inputSLevel.classList.add('is-invalid');
                        inputSResets.classList.add('is-invalid');
                        mostrarDatos(json.usuarios); // recarga nuevamente la tabla para no dejar vacia si es que no completo campos
                        break; // termino con el ciclo for ya que no quiero que se ponga a buscar ilimitadas veces con campos vacios
                    }
                }
            };
        });
    };

    function agregarFilaEspecial(usuario) {
        let row = document.createElement('tr');
        let columnauserName = document.createElement('td');
        let columnalevelUser = document.createElement('td');
        let columnaresetUser = document.createElement('td');
        let columnaviplevelUser = document.createElement('td');
        let columnaAcciones = document.createElement('td');
        columnaAcciones.classList.add('row');
        columnaAcciones.classList.add('table-acciones');
        columnaAcciones.classList.add('d-flex');
        columnaAcciones.classList.add('justify-content-between');
        columnaAcciones.id = 'table-acciones';
        columnauserName.classList.add('bg-green');
        columnalevelUser.classList.add('bg-green');
        columnaresetUser.classList.add('bg-green');
        columnaviplevelUser.classList.add('bg-green');
        columnauserName.innerHTML = usuario.thing.userName;
        columnalevelUser.innerHTML = usuario.thing.levelUser;
        columnaresetUser.innerHTML = usuario.thing.resetsUser;
        columnaviplevelUser.innerHTML = usuario.thing.viplevelUser;
        let btnEliminar = document.createElement('button');
        btnEliminar.innerHTML = "Eliminar";
        btnEliminar.id = 'btnEliminar';
        btnEliminar.classList.add('btn');
        btnEliminar.classList.add('btn-danger');
        btnEliminar.classList.add('col-xs-12');
        btnEliminar.classList.add('col-md-6');
        btnEliminar.addEventListener('click', (e) => {
            e.preventDefault();
            eliminar(usuario._id);
        });
        columnaAcciones.appendChild(btnEliminar);
        let btnEditar = document.createElement('button');
        btnEditar.innerHTML = "Editar";
        btnEditar.id = 'btnEditar';
        btnEditar.classList.add('btn');
        btnEditar.classList.add('btn-warning');
        btnEditar.classList.add('col-xs-12');
        btnEditar.classList.add('col-md-6');
        btnEditar.addEventListener('click', (e) => {
            e.preventDefault();
            editando = true;
            columnauserName.innerHTML = "<input type='text' id='userNameedit' class='col' value=" + `${usuario.thing.userName}` + ">";
            columnalevelUser.innerHTML = "<input type='text' id='levelUseredit' class='col' value=" + `${usuario.thing.levelUser}` + ">";
            columnaresetUser.innerHTML = "<input type='text' id='resetUseredit' class='col' value=" + `${usuario.thing.resetsUser}` + ">";
            columnaviplevelUser.innerHTML = "<input type='text' id='viplevelUseredit' class='col' value=" + `${usuario.thing.viplevelUser}` + ">";
            let btnTerminar = document.createElement('button');
            btnTerminar.innerHTML = "Terminar";
            btnTerminar.id = 'btnTerminar';
            btnTerminar.classList.add('btn');
            btnTerminar.classList.add('btn-success');
            btnTerminar.classList.add('col-xs-12');
            btnTerminar.classList.add('col-md-6');
            btnTerminar.addEventListener('click', (e) => {
                e.preventDefault();
                editando = false;
                let nuevousuario = {
                    "userName": document.querySelector("#userNameedit").value,
                    "levelUser": parseInt(document.querySelector("#levelUseredit").value),
                    "resetsUser": parseInt(document.querySelector("#resetUseredit").value),
                    "viplevelUser": parseInt(document.querySelector("#viplevelUseredit").value),
                }
                editar(usuario._id, nuevousuario);

            });
            columnaAcciones.appendChild(btnTerminar);
            btnEditar.style.display = "none";
        });
        columnaAcciones.appendChild(btnEditar);
        row.appendChild(columnauserName);
        row.appendChild(columnalevelUser);
        row.appendChild(columnaresetUser);
        row.appendChild(columnaviplevelUser);
        row.appendChild(columnaAcciones);
        tableBody.appendChild(row);}




    let btnBorrarfiltros = document.querySelector("#btnBorrar");
    btnBorrarfiltros.addEventListener("click", function(e) {
        e.preventDefault;
        borrarfiltros();
        buscar = false;
    })

    function borrarfiltros() {
        inputSLVip.value = "";
        inputSLevel.value = "";
        inputSName.value = "";
        inputSResets.value = "";
        precargarUsers();
    }
}