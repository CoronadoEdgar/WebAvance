package Controlador;

import java.sql.Date;
import java.sql.Time;
import Modelo.Cita;
import Modelo.CitaDAO;
import Modelo.Cliente;
import Modelo.ClienteDAO;
import Modelo.Empleado;
import Modelo.EmpleadoDAO;
import Modelo.Producto;
import Modelo.ProductoDAO;
import Modelo.Proveedor;
import Modelo.ProveedorDAO;
import Modelo.Servicio;
import Modelo.ServicioDAO;
import Modelo.Venta;
import Modelo.VentaDAO;
import config.GenerarSerie;
import java.io.IOException;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Controlador extends HttpServlet {
    
    Empleado em = new Empleado();
    EmpleadoDAO edao = new EmpleadoDAO();
    Cliente c = new Cliente();
    ClienteDAO cdao = new ClienteDAO();
    Producto p = new Producto();
    ProductoDAO pdao = new ProductoDAO();
    Proveedor pro= new Proveedor();
    ProveedorDAO prodao= new ProveedorDAO();
    Servicio s = new Servicio();
    ServicioDAO sdao= new ServicioDAO();
    Cita ci =new Cita();
    CitaDAO cidao= new CitaDAO();
    
    
    int ide;
    int idc;
    int idp;
    int idpro;
    int ids;
    int idci;
    
    Venta v = new Venta();
    List<Venta> lista = new ArrayList<>();
    int item;
    int cod;
    String descripcion;
    double precio;
    int cant;
    double subtotal;
    double totalPagar;
    
    String numeroserie="";
    VentaDAO vdao = new VentaDAO();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String menu = request.getParameter("menu");
        String accion = request.getParameter("accion");
        if (menu.equals("Principal")) {
            request.getRequestDispatcher("Principal.jsp").forward(request, response);
        }
        if (menu.equals("Empleado")) {
            switch (accion) {
                case "Listar":
                    List lista = edao.listar();
                    request.setAttribute("empleados", lista);
                    break;
                case "Agregar":
                    String dni = request.getParameter("txtDni");
                    String nom = request.getParameter("txtNombres");
                    String mail = request.getParameter("txtMail");
                    String tel = request.getParameter("txtTel");
                    int est = Integer.parseInt(request.getParameter("txtEstado"));
                    String user = request.getParameter("txtUser");
                    em.setDni(dni);
                    em.setNom(nom);
                    em.setMail(mail);
                    em.setTel(tel);
                    em.setEstado(est);
                    em.setUser(user);
                    edao.agregar(em);
                    request.getRequestDispatcher("Controlador?menu=Empleado&accion=Listar").forward(request, response);
                    break;
                case "Editar":
                    ide = Integer.parseInt(request.getParameter("id"));
                    Empleado e = edao.listarId(ide);
                    request.setAttribute("empleado", e);
                    request.getRequestDispatcher("Controlador?menu=Empleado&accion=Listar").forward(request, response);
                    break;
                case "Actualizar":
                    String dni1 = request.getParameter("txtDni");
                    String nom1 = request.getParameter("txtNombres");
                    String mail1 = request.getParameter("txtMail");
                    String tel1 = request.getParameter("txtTel");
                    int est1 = Integer.parseInt(request.getParameter("txtEstado"));
                    String user1 = request.getParameter("txtUser");
                    em.setDni(dni1);
                    em.setNom(nom1);
                    em.setMail(mail1);
                    em.setTel(tel1);
                    em.setEstado(est1);
                    em.setUser(user1);
                    em.setId(ide);
                    edao.actualizar(em);
                    request.getRequestDispatcher("Controlador?menu=Empleado&accion=Listar").forward(request, response);
                    break;
                case "Delete":
                    ide = Integer.parseInt(request.getParameter("id"));
                    edao.delete(ide);
                    request.getRequestDispatcher("Controlador?menu=Empleado&accion=Listar").forward(request, response);
                    break;
                default:
                    throw new AssertionError();
            }
            
            request.getRequestDispatcher("Empleado.jsp").forward(request, response);
        }
        if (menu.equals("Cliente")) {
            switch (accion) {
                case "Listar":
                    List lista = cdao.listar();
                    request.setAttribute("clientes", lista);
                    break;
                case "Agregar":
                    
                    String nom = request.getParameter("txtNombres");
                    String tel = request.getParameter("txtTel");
                    String mail = request.getParameter("txtMail");
                    String est = request.getParameter("txtEstado");
                 
                    c.setNom(nom);
                    c.setTel(tel);
                    c.setMail(mail);
                    c.setEs(est);
                    cdao.agregar(c);
                    request.getRequestDispatcher("Controlador?menu=Cliente&accion=Listar").forward(request, response);
                    break;
                case "Editar":
                    idc = Integer.parseInt(request.getParameter("id"));
                    Cliente cl = cdao.listarId(idc);
                    request.setAttribute("cliente", cl);
                    request.getRequestDispatcher("Controlador?menu=Cliente&accion=Listar").forward(request, response);
                    break;
                case "Actualizar":
                   
                    String nom1 = request.getParameter("txtNombres");
                    String tel1 = request.getParameter("txtTel");
                    String mail1 = request.getParameter("txtMail");
                    String est1 = request.getParameter("txtEstado");
                    
                    c.setNom(nom1);
                    c.setTel(tel1);
                    c.setMail(mail1);
                    c.setEs(est1);
                    c.setId(idc);
                    cdao.actualizar(c);
                    request.getRequestDispatcher("Controlador?menu=Cliente&accion=Listar").forward(request, response);
                    break;
                case "Delete":
                    idc = Integer.parseInt(request.getParameter("id"));
                    cdao.delete(idc);
                    request.getRequestDispatcher("Controlador?menu=Cliente&accion=Listar").forward(request, response);
                    break;
                default:
                    throw new AssertionError();
            }
            request.getRequestDispatcher("Clientes.jsp").forward(request, response);
        }
         if (menu.equals("Servicio")) {
            switch (accion) {
                case "Listar":
                    List lista = sdao.listar();
                    request.setAttribute("servicios", lista);
                    break;
                case "Agregar":
                    String nom = request.getParameter("txtNombre");
                    double pre = Double.parseDouble(request.getParameter("txtPrecio"));
                    String est = request.getParameter("txtEstado");
                    s.setNom(nom);
                    s.setPre(pre);
                    s.setEstado(est);
                    sdao.agregar(s);
                    request.getRequestDispatcher("Controlador?menu=Servicio&accion=Listar").forward(request, response);
                    break;
                case "Editar":
                    ids = Integer.parseInt(request.getParameter("id"));
                    Servicio ser = sdao.listarId(ids);
                    request.setAttribute("servicio", ser);
                    request.getRequestDispatcher("Controlador?menu=Servicio&accion=Listar").forward(request, response);
                    break;
                case "Actualizar":
                    String nom1 = request.getParameter("txtNombre");
                    double pre1 = Double.parseDouble(request.getParameter("txtPrecio"));
                    String est1 = request.getParameter("txtEstado");
                    s.setNom(nom1);
                    s.setPre(pre1);
                    s.setEstado(est1);
                    s.setIdSer(ids);
                    sdao.actualizar(s);
                    request.getRequestDispatcher("Controlador?menu=Servicio&accion=Listar").forward(request, response);
                    break;
                case "Delete":
                    ids = Integer.parseInt(request.getParameter("id"));
                    sdao.delete(ids);
                    request.getRequestDispatcher("Controlador?menu=Servicio&accion=Listar").forward(request, response);
                    break;
                default:                    
                    throw new AssertionError();
            }
            
            request.getRequestDispatcher("Servicio.jsp").forward(request, response);
        }
        if (menu.equals("Proveedor")) {
            switch (accion) {
                case "Listar":
                    List lista = prodao.listar();
                    request.setAttribute("proveedores", lista);
                    break;
                case "Agregar":
                    
                    String nom = request.getParameter("txtNombre");
                    String dir = request.getParameter("txtDir");
                    String mail = request.getParameter("txtMail");
                    String tel = request.getParameter("txtTel");
                    String est = request.getParameter("txtEstado");
                 
                    pro.setNom(nom);
                    pro.setDir(dir);
                    pro.setMail(mail);
                    pro.setTel(tel);
                    pro.setEs(est);
                    prodao.agregar(pro);
                    request.getRequestDispatcher("Controlador?menu=Proveedor&accion=Listar").forward(request, response);
                    break;
                case "Editar":
                    idpro = Integer.parseInt(request.getParameter("id"));
                    Proveedor prov = prodao.listarId(idpro);
                    request.setAttribute("proveedor", prov);
                    request.getRequestDispatcher("Controlador?menu=Proveedor&accion=Listar").forward(request, response);
                    break;
                case "Actualizar":
                   
                    String nom1 = request.getParameter("txtNombre");
                    String dir1 = request.getParameter("txtDir");
                    String mail1 = request.getParameter("txtMail");
                    String tel1 = request.getParameter("txtTel");
                    String est1 = request.getParameter("txtEstado");
                    
                    pro.setNom(nom1);
                    pro.setDir(dir1);
                    pro.setMail(mail1);
                    pro.setTel(tel1);
                    pro.setEs(est1);
                    pro.setId(idpro);
                    prodao.actualizar(pro);
                    request.getRequestDispatcher("Controlador?menu=Proveedor&accion=Listar").forward(request, response);
                    break;
                case "Delete":
                    idpro = Integer.parseInt(request.getParameter("id"));
                    prodao.delete(idpro);
                    request.getRequestDispatcher("Controlador?menu=Proveedor&accion=Listar").forward(request, response);
                    break;
                default:
                    throw new AssertionError();
            }
            request.getRequestDispatcher("Proveedor.jsp").forward(request, response);
        }
        if (menu.equals("Producto")) {
            switch (accion) {
                case "Listar":
                    List lista = pdao.listar();
                    request.setAttribute("productos", lista);
                    break;
                case "Agregar":
                    String dni = request.getParameter("txtDni");
                    int idProveedor=  Integer.parseInt(request.getParameter("txtidProv"));
                    double pre = Double.parseDouble(request.getParameter("txtNombres"));
                    int st = Integer.parseInt(request.getParameter("txtTel"));
                    String est = request.getParameter("txtEstado");
                    p.setNom(dni);
                    p.setIdProveedor(idProveedor);
                    p.setPre(pre);
                    p.setStock(st);
                    p.setEstado(est);
                    pdao.agregar(p);
                    request.getRequestDispatcher("Controlador?menu=Producto&accion=Listar").forward(request, response);
                    break;
                case "Editar":
                    idp = Integer.parseInt(request.getParameter("id"));
                    Producto pr = pdao.listarId(idp);
                    request.setAttribute("producto", pr);
                    request.getRequestDispatcher("Controlador?menu=Producto&accion=Listar").forward(request, response);
                    break;
                case "Actualizar":
                    String dni1 = request.getParameter("txtDni");
                    int idProveedor1=  Integer.parseInt(request.getParameter("txtidProv"));
                    double pre1 = Double.parseDouble(request.getParameter("txtNombres"));
                    int st1 = Integer.parseInt(request.getParameter("txtTel"));
                    String est1 = request.getParameter("txtEstado");
                    p.setNom(dni1);
                    p.setIdProveedor(idProveedor1);
                    p.setPre(pre1);
                    p.setStock(st1);
                    p.setEstado(est1);
                    p.setId(idp);
                    pdao.actualizar(p);
                    request.getRequestDispatcher("Controlador?menu=Producto&accion=Listar").forward(request, response);
                    break;
                case "Delete":
                    idp = Integer.parseInt(request.getParameter("id"));
                    pdao.delete(idp);
                    request.getRequestDispatcher("Controlador?menu=Producto&accion=Listar").forward(request, response);
                    break;
                default:                    
                    throw new AssertionError();
            }
            
            request.getRequestDispatcher("Producto.jsp").forward(request, response);
        }
        if (menu.equals("Cita")) {
            switch (accion) {
                case "Listar":
                    List lista = cidao.listar();
                    request.setAttribute("citas", lista);
                    break;
                case "Agregar":
                    int idCliente=Integer.parseInt(request.getParameter("txtIdCliente"));
                    Date fecha = Date.valueOf(request.getParameter("txtFecha"));
                    Time hora =  Time.valueOf(request.getParameter("txtHora"));
                    String estado=  request.getParameter("txtEstado");
                    ci.setIdCliente(idCliente);
                    ci.setFecha(fecha);
                    ci.setHora(hora);
                    ci.setEstado(estado);
                    cidao.agregar(ci);
                    request.getRequestDispatcher("Controlador?menu=Cita&accion=Listar").forward(request, response);
                    break;
                case "Editar":
                    idci= Integer.parseInt(request.getParameter("id"));
                    Cita cit = cidao.listarId(idci);
                    request.setAttribute("cita", cit);
                    request.getRequestDispatcher("Controlador?menu=Cita&accion=Listar").forward(request, response);
                    break;
                case "Actualizar":
                    int idCliente1=Integer.parseInt(request.getParameter("txtIdCliente"));
                    Date fecha1 = Date.valueOf(request.getParameter("txtFecha"));
                    Time hora1 =  Time.valueOf(request.getParameter("txtHora"));
                    String estado1=  request.getParameter("txtEstado");
                    ci.setIdCliente(idCliente1);
                    ci.setFecha(fecha1);
                    ci.setHora(hora1);
                    ci.setEstado(estado1);
                    ci.setIdCita(idci);
                    cidao.actualizar(ci);
                    request.getRequestDispatcher("Controlador?menu=Cita&accion=Listar").forward(request, response);
                    break;
                case "Delete":
                    idci = Integer.parseInt(request.getParameter("id"));
                    cidao.delete(idci);
                    request.getRequestDispatcher("Controlador?menu=Cita&accion=Listar").forward(request, response);
                    break;
                default:                    
                    throw new AssertionError();
            }
            
            request.getRequestDispatcher("Cita.jsp").forward(request, response);
        }
        if (menu.equals("NuevaVenta")) {           
            switch (accion) {
                case "BuscarEmpleado":
                    String nom = request.getParameter("codigoempleado");
                    em.setNom(nom);
                    em = edao.buscar(nom);
                    request.setAttribute("empleados", em);
                    request.setAttribute("nserie", numeroserie);
                    break;
                case "BuscarProducto":
                    int id = Integer.parseInt(request.getParameter("codigoproducto"));
                    p = pdao.listarId(id);                    
                    request.setAttribute("empleado", em);
                    request.setAttribute("producto", p);                    
                    request.setAttribute("lista", lista);                    
                    request.setAttribute("totalpagar", totalPagar);
                    request.setAttribute("nserie", numeroserie);
                    break;
                case "Agregar":
                    request.setAttribute("nserie", numeroserie);
                    request.setAttribute("empleados", em);
                    totalPagar = 0.0;
                    item = item + 1;
                    cod = p.getId();
                    descripcion = request.getParameter("nomproducto");
                    precio = Double.parseDouble(request.getParameter("precio"));
                    cant = Integer.parseInt(request.getParameter("cant"));
                    subtotal = precio * cant;
                    v = new Venta();
                    v.setItem(item);
                    v.setIdproducto(cod);
                    v.setDescripcionP(descripcion);
                    v.setPrecio(precio);
                    v.setCantidad(cant);
                    v.setSubtotal(subtotal);
                    lista.add(v);
                    for (int i = 0; i < lista.size(); i++) {
                        totalPagar = totalPagar + lista.get(i).getSubtotal();
                    }
                    request.setAttribute("totalpagar", totalPagar);
                    request.setAttribute("lista", lista);                    
                    break;
                case "GenerarVenta":
                    //Actualizacion del Stock
                    for (int i = 0; i < lista.size(); i++) {
                        Producto pr=new Producto();
                        int cantidad=lista.get(i).getCantidad();
                        int idproducto=lista.get(i).getIdproducto();
                        ProductoDAO aO=new ProductoDAO();
                        pr=aO.buscar(idproducto);
                        int sac=pr.getStock()-cantidad;
                        aO.actualizarstock(idproducto, sac);
                    }
                    //Guardar Venta
                    v.setIdEmpleado(em.getId());
                    v.setIdempleado(2);
                    v.setNumserie(numeroserie);
                    v.setFecha("2019-06-14");
                    v.setMonto(totalPagar);
                    v.setEstado("1");
                    vdao.guardarVenta(v);
                    //Guardar Detalle ventas
                    int idv=Integer.parseInt(vdao.IdVentas());
                    for (int i = 0; i < lista.size(); i++) {
                        v=new Venta();
                        v.setId(idv);
                        v.setIdproducto(lista.get(i).getIdproducto());
                        v.setCantidad(lista.get(i).getCantidad());
                        v.setPrecio(lista.get(i).getPrecio());
                        vdao.guardarDetalleventas(v);
                    }
                    lista=new ArrayList<>();
                    break;
                default:                    
                    v = new Venta();
                    lista = new ArrayList<>();
                    item = 0;
                    totalPagar = 0.0;                    
                    numeroserie = vdao.GenerarSerie();
                    if (numeroserie == null) {
                        numeroserie = "000000001";                        
                        request.setAttribute("nserie", numeroserie);
                    } else {
                        int incrementar = Integer.parseInt(numeroserie);
                        GenerarSerie gs = new GenerarSerie();
                        numeroserie = gs.NumeroSerie(incrementar);
                        request.setAttribute("nserie", numeroserie);
                    }
                    request.getRequestDispatcher("RegistrarVenta.jsp").forward(request, response);
            }
            request.getRequestDispatcher("RegistrarVenta.jsp").forward(request, response);
        }
        
         
        
        
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
