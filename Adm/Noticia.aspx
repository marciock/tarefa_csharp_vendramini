NAO MECHER<%@ Page Title="" Language="C#" MasterPageFile="~/Adm/MasterPage.master" AutoEventWireup="true" CodeFile="Noticia.aspx.cs" Inherits="Adm_Noticia" %>

NAO MECHER <%@ Register Src="~/Adm/BarraEdicao.ascx" TagPrefix="uc1" TagName="BarraEdicao" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    COMECO DE TODO O CONTEUDO

    FOI ADICIONANDO<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    FOI ADICIONANDO <asp:UpdatePanel ID="UpdatePanel1" runat="server"></asp:UpdatePanel>

    FOI ADICIONADO <asp:Button ID="btnLista" runat="server" Text="Listagem" OnClick="btnLista_Click" />
    FOI ADICIONADO <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" OnClick="btnCadastrar_Click" />

    <-- ESTA SENDO ADICIONADO
    <asp:MultiView ID="MultiViewNoticia" runat="server">
        <asp:ObjectDataSource ID="ObjectDataSource1"
                runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.TbNoticiaTableAdapter"></asp:ObjectDataSource>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                    DataKeyNames="not_id" DataSourceID="ObjectDataSource1" AllowSorting="true"
                    OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="not_id" HeaderText="not_id"
                                Visible="false" InsertVisible="False" ReadOnly="True" SortExpression="not_id" />

                            <asp:BoundField DataField="not_titulo" HeaderText="Noticia"
                                SortExpression="not_titulo" />

                            <asp:BoundField DataField="not_texto" HeaderText="Noticia"
                                SortExpression="not_texto" />

                            <asp:BoundField DataField="not_data" HeaderText="Noticia"
                                SortExpression="not_data" />

                            <asp:BoundField DataField="not_imagem" HeaderText="Noticia"
                                SortExpression="not_imagem" />


                            <asp:CommandField HeaderText="Selecionar" SelectText="Selecionar"
                                ButtonType="Button" ShowSelectButton="true" />
                        </Columns>

                    </asp:GridView>
    </asp:MultiView>
    FINAL DO QUE FOI ADICIOANDO-->






    FINAL DE TODO O CONTEUDO


</asp:Content>

