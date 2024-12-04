<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_2md2_ds_atividade_ddl_lb_cal_ad.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="style.css" />
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
                        <asp:Label ID="lblMsgErro" runat="server" Text="[lblMsgErro]"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/Config/Banners.xml" CssClass="w-100" />
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <asp:Calendar ID="Calendar1" runat="server" CssClass="m-auto"></asp:Calendar>
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
                        <asp:DropDownList ID="days" runat="server">
                            <asp:ListItem Text="Selecionar"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="months" runat="server" TextMode="MultiLine" OnTextChanged="months_TextChanged" style="height: 44px; width: 225px; margin-left: 0px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <asp:Button ID="add" runat="server" Text="Adicionar" />
                        <asp:Button ID="eliminate" runat="server" Text="Eliminar" />
                        <asp:Button ID="resetList" runat="server" Text="Limpar toda a lista" />
                        <asp:Button ID="reset" runat="server" Text="Limpar" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Posição na lista (DIAS):
                    </td>
                    <td>
                        <b><asp:Label ID="posicaoListaDias" runat="server" Text="[lblPosicaoListaDias]"></asp:Label></b>
                    </td>
                    <td>
                        Posição na lista (MESES):
                    </td>
                    <td>
                        <b><asp:Label ID="posicaoListaMeses" runat="server" Text="[lblPosicaoListaMeses]"></asp:Label></b>
                    </td>
                </tr>
                <tr>
                    <td>
                        Texto selecionado (DIAS):
                    </td>
                    <td>
                        <b><asp:Label ID="textoSelecionadoDias" runat="server" Text="[lblTextoSelecionadoDias]"></asp:Label></b>
                    </td>
                    <td>
                        Texto selecionado (MESES):
                    </td>
                    <td>
                        <b><asp:Label ID="textoSelecionadoMeses" runat="server" Text="[lblTextoSelecionadoMeses]"></asp:Label></b>
                    </td>
                </tr>
                <tr>
                    <td>
                        Total de Itens (DIAS):
                    </td>
                    <td>
                        <b><asp:Label ID="totalItensDias" runat="server" Text="[lblTotalItensDias]"></asp:Label></b>
                    </td>
                    <td>
                        Total de Itens (MESES):
                    </td>
                    <td>
                        <b><asp:Label ID="totalItensMeses" runat="server" Text="[lblTotalItensMeses]"></asp:Label></b>
                    </td>
                </tr>
            </tbody>
        </table>

    </form>
</body>
</html>
