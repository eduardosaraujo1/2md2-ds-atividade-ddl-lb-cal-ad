<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="_2md2_ds_atividade_ddl_lb_cal_ad.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="style.css" />
    <style type="text/css">
        .auto-style1 {
            height: 27px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <table>
            <tbody>
                <tr>
                    <td colspan="4">
                        <h1>Trabalhando com DropDownList, ListBox e Calendar</h1>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <asp:Label ID="lblMsgErro" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/Config/Banners.xml" CssClass="ad-banner" />
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <asp:Calendar ID="calendar" runat="server" CssClass="m-auto"></asp:Calendar>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        Lista de Dias
                    </td>
                    <td colspan="2">
                        Lista de Meses
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:DropDownList ID="ddlDays" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlDays_SelectedIndexChanged">
                            <asp:ListItem Text="Selecionar"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td colspan="2">
                        <asp:ListBox ID="lbMonths" runat="server" Width="200px" AutoPostBack="True" OnSelectedIndexChanged="lbMonths_SelectedIndexChanged"></asp:ListBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <asp:Button ID="add" runat="server" Text="Adicionar" OnClick="add_Click" />
                        <asp:Button ID="eliminate" runat="server" Text="Eliminar" OnClick="eliminate_Click" />
                        <asp:Button ID="resetList" runat="server" Text="Limpar toda a lista" OnClick="resetList_Click" />
                        <asp:Button ID="reset" runat="server" Text="Limpar" OnClick="reset_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        Posição na lista (DIAS):
                    </td>
                    <td class="auto-style1">
                        <b><asp:Label ID="posicaoListaDias" runat="server" Text="N/A"></asp:Label></b>
                    </td>
                    <td class="auto-style1">
                        Posição na lista (MESES):
                    </td>
                    <td class="auto-style1">
                        <b><asp:Label ID="posicaoListaMeses" runat="server" Text="N/A"></asp:Label></b>
                    </td>
                </tr>
                <tr>
                    <td>
                        Texto selecionado (DIAS):
                    </td>
                    <td>
                        <b><asp:Label ID="textoSelecionadoDias" runat="server" Text="N/A"></asp:Label></b>
                    </td>
                    <td>
                        Texto selecionado (MESES):
                    </td>
                    <td>
                        <b><asp:Label ID="textoSelecionadoMeses" runat="server" Text="N/A"></asp:Label></b>
                    </td>
                </tr>
                <tr>
                    <td>
                        Total de Itens (DIAS):
                    </td>
                    <td>
                        <b><asp:Label ID="totalItensDias" runat="server" Text="N/A"></asp:Label></b>
                    </td>
                    <td>
                        Total de Itens (MESES):
                    </td>
                    <td>
                        <b><asp:Label ID="totalItensMeses" runat="server" Text="N/A"></asp:Label></b>
                    </td>
                </tr>
            </tbody>
        </table>

    </form>
</body>
</html>
