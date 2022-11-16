﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="FormularioArticulo.aspx.cs" Inherits="tp_comercio_Vargas_Delgado.FormularioArticulo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <div class="mx-auto p-5" style="width: 400px;">
        <h2 class="text-center">Agregar Articulo</h2>
    </div>

    <div class="container justify-content-sm-center">
        <div class="row">
            <div class="col">
                <div class="mb-3">
                    <label for="txtCodigo" class="form-label">Codigo</label>
                    <asp:TextBox runat="server" ID="txtCodigo" CssClass="form-control" />
                </div>
                <div class="mb-3">
                    <label for="txtNombre" class="form-label">Nombre</label>
                    <asp:TextBox runat="server" ID="txtNombre" CssClass="form-control" />
                </div>
                <div class="mb-3">
                    <label for="txtPrecio" class="form-label">Precio</label>
                    <asp:TextBox runat="server" ID="txtPrecio" CssClass="form-control" />
                </div>
                <div class="mb-3">
                    <label for="ddlCategoria" class="form-label">Categoria</label>
                    <asp:DropDownList ID="ddlCategoria" CssClass="form-select" runat="server"></asp:DropDownList>
                </div>
                <div class="mb-3">
                    <label for="ddlMarca" class="form-label">Marca</label>
                    <asp:DropDownList ID="ddlMarca" CssClass="form-select" runat="server"></asp:DropDownList>
                </div>
            </div>

            <div class="col">
                <div class="mb-3">
                    <label for="txtDescripcion" class="form-label">Descripcion</label>
                    <asp:TextBox runat="server" TextMode="MultiLine" ID="txtDescripcion" CssClass="form-control" />
                </div>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <div class="mb-3">
                            <label for="txtImagenUrl" class="form-label">Imagen</label>
                            <asp:TextBox runat="server" ID="txtImagenUrl" CssClass="form-control"
                                AutoPostBack="true" OnTextChanged="txtImagenUrl_TextChanged" />
                        </div>
                        <asp:Image ImageUrl="https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Placeholder_view_vector.svg/681px-Placeholder_view_vector.svg.png"
                            runat="server" ID="imgArticulo" Width="50%" />
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <asp:Button Text="Aceptar" ID="btnAceptar" CssClass="btn btn-warning" OnClick="btnAceptar_Click" runat="server" />
            </div>
        </div>
    </div>

</asp:Content>