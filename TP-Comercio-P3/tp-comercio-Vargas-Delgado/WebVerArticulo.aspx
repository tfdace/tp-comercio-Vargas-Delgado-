﻿<%@ Page Title="Articulos" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="WebVerArticulo.aspx.cs" Inherits="tp_comercio_Vargas_Delgado.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="mx-auto p-5" style="width: 400px;">
        <h2 class="text-center">Articulos disponibles</h2>
    </div>

    <div class="container">
        <div class="row row-cols-1 row-cols-sm-5 g-5 justify-content-md-center">
            >
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>

                    <div class="col">

                        <div class="card h-100">
                            <img src="<%#Eval("ImagenUrl")%>" class="card-image h-50" alt="image" />

                            <h5 class="card-title h-30"><%#Eval("Nombre")%></h5>
                            <p class="card-price"><%#Eval("Precio")%></p>

                            <div class="buttons">
                                <a href="DetalleArticulo.aspx?id=<%#Eval("Id")%>" class="btn btn-primary">Ver detalle</a>
                                <%
                                    if (Session["usuariologueado"] != null && ((Dominio.RolUsuario)Session["rolusuario"]) == Dominio.RolUsuario.Administrador)
                                    {
                                %>
                                <a class="btn btn-success">Editar</a>
                                <a class="btn btn-danger">Eliminar</a>
                                <%
                                    }
                                %>
                            </div>

                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>
