<%@page import="java.util.ArrayList" %>
<%@page import="com.emergentes.modelo.Persona" %>
<%
    ArrayList<Persona> lista = (ArrayList<Persona>) session.getAttribute("listaper");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="pink">
       <center><table border="1" >
       <tr><th>
        <center><h><font color="#ffffff">PRIMER PARCIAL TEM-742</font</h></center><br>
        <center><h><font color="#ffffff">Nombre: Jhorely Felicidad Chambi Choque</font></h></center><br>
        <center><h><font color="#ffffff">Carnet: 10034047</font></h></center><br>
       </th></tr>
       </table></center>
    <center><h1><font color="#ffffff">GESTION DE PRODUCTOS</font></h1></center><br>
        <center>
            <a href="MainController?op=nuevo"><font color="green">NUEVO PRODUCTO</font></a>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Descripcion</th>
                <th>Cantidad</th>
                <th>Precio</th>
                <th>Categoria</th>
                <th></th>
                <th></th>
            </tr>
            <%
                if (lista != null){
                    for (Persona item : lista){
            %>
            <tr>
                <td><%= item.getId()%></td>
                <td><%= item.getDescripcion()%></td>
                <td><%= item.getCantidad()%></td>
                <td><%= item.getPrecio()%></td>
                <td><%= item.getCategoria()%></td>
                <td><a href="MainController?op=editar&id=<%=item.getId()%>"><font color="blue"> EDITAR </font></a></td>
                <td><a href="MainController?op=eliminar&id=<%=item.getId()%>"
                       onclick='return confirm("SEGURO QUE DESEA ELIMINAR EL REGISTRO?");'><font color="red"> ELIMINAR </font></a></td>
            </tr>
            <%
                    }
                }
            %>
        </table>
        </center>
    </body>
</html>
