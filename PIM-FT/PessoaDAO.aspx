<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PessoaDAO.aspx.cs" Inherits="PIM_FT.PessoaDOA" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td>Nome</td>
                <td><asp:TextBox ID="Nome" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>CPF</td>
                <td><asp:TextBox ID="CPF" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Logradouro</td>
                <td><asp:TextBox ID="Logradouro" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Numero Residencial</td>
                <td><asp:TextBox ID="NumeroR" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>CEP</td>
                <td><asp:TextBox ID="CEP" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Bairro</td>
                <td><asp:TextBox ID="Bairro" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Cidade</td>
                <td><asp:TextBox ID="Cidade" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Estado</td>
                <td><asp:TextBox ID="Estado" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Numero de Telefone</td>
                <td><asp:TextBox ID="NumeroT" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>DDD</td>
                <td><asp:TextBox ID="DDD" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Tipo de Telefone</td>
                <td><asp:TextBox ID="Tipo" runat="server"></asp:TextBox></td>
            </tr>

            <tr>
                <td colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="Insert" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Text="Delete" OnClick="Button2_Click"/>
                    <asp:Button ID="Button3" runat="server" Text="Update" OnClick="Button3_Click"/>
                    <asp:Button ID="Button4" runat="server" Text="View" OnClick="Button4_Click" />
                </td>
            </tr>

            <tr>
                <td>ID para Update</td>
                <td>
                    <asp:TextBox ID="oldid" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>

   
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" EmptyDataText="There are no data records to display.">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                    <asp:BoundField DataField="CPF" HeaderText="CPF" SortExpression="CPF" />

                </Columns>
            </asp:GridView>

   
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" EmptyDataText="There are no data records to display.">
                <Columns>
                    <asp:BoundField DataField="Logradouro" HeaderText="Logradouro" SortExpression="Logradouro" />
                    <asp:BoundField DataField="Numero" HeaderText="Numero" SortExpression="Numero" />
                    <asp:BoundField DataField="CEP" HeaderText="CEP" SortExpression="CEP" />
                    <asp:BoundField DataField="Bairro" HeaderText="Bairro" SortExpression="Bairro" />
                    <asp:BoundField DataField="Cidade" HeaderText="Cidade" SortExpression="Cidade" />
                    <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
                </Columns>
            </asp:GridView>


            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" EmptyDataText="There are no data records to display.">
                <Columns>
                    <asp:BoundField DataField="Numero" HeaderText="Numero" SortExpression="Numero" />
                    <asp:BoundField DataField="DDD" HeaderText="DDD" SortExpression="DDD" />
                    <asp:BoundField DataField="Tipo" HeaderText="Tipo" SortExpression="Tipo" />
                </Columns>
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:Database1ConnectionString1 %>" DeleteCommand="DELETE FROM [Telefone] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Telefone] ([Numero], [DDD], [Tipo]) VALUES (@Numero, @DDD, @Tipo)" ProviderName="<%$ ConnectionStrings:Database1ConnectionString1.ProviderName %>" SelectCommand="SELECT [Id], [Numero], [DDD], [Tipo] FROM [Telefone]" UpdateCommand="UPDATE [Telefone] SET [Numero] = @Numero, [DDD] = @DDD, [Tipo] = @Tipo WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Numero" Type="Int32" />
                    <asp:Parameter Name="DDD" Type="Int32" />
                    <asp:Parameter Name="Tipo" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Numero" Type="Int32" />
                    <asp:Parameter Name="DDD" Type="Int32" />
                    <asp:Parameter Name="Tipo" Type="Int32" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Database1ConnectionString1 %>" DeleteCommand="DELETE FROM [Endereco] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Endereco] ([Logradouro], [Numero], [CEP], [Bairro], [Cidade], [Estado]) VALUES (@Logradouro, @Numero, @CEP, @Bairro, @Cidade, @Estado)" ProviderName="<%$ ConnectionStrings:Database1ConnectionString1.ProviderName %>" SelectCommand="SELECT [Id], [Logradouro], [Numero], [CEP], [Bairro], [Cidade], [Estado] FROM [Endereco]" UpdateCommand="UPDATE [Endereco] SET [Logradouro] = @Logradouro, [Numero] = @Numero, [CEP] = @CEP, [Bairro] = @Bairro, [Cidade] = @Cidade, [Estado] = @Estado WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Logradouro" Type="String" />
                    <asp:Parameter Name="Numero" Type="Int32" />
                    <asp:Parameter Name="CEP" Type="Int32" />
                    <asp:Parameter Name="Bairro" Type="String" />
                    <asp:Parameter Name="Cidade" Type="String" />
                    <asp:Parameter Name="Estado" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Logradouro" Type="String" />
                    <asp:Parameter Name="Numero" Type="Int32" />
                    <asp:Parameter Name="CEP" Type="Int32" />
                    <asp:Parameter Name="Bairro" Type="String" />
                    <asp:Parameter Name="Cidade" Type="String" />
                    <asp:Parameter Name="Estado" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Database1ConnectionString1 %>" DeleteCommand="DELETE FROM [Pessoa] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Pessoa] ([Nome], [CPF], [Endereco]) VALUES (@Nome, @CPF, @Endereco)" ProviderName="<%$ ConnectionStrings:Database1ConnectionString1.ProviderName %>" SelectCommand="SELECT [Id], [Nome], [CPF], [Endereco] FROM [Pessoa]" UpdateCommand="UPDATE [Pessoa] SET [Nome] = @Nome, [CPF] = @CPF, [Endereco] = @Endereco WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Nome" Type="String" />
                    <asp:Parameter Name="CPF" Type="Int64" />
                    <asp:Parameter Name="Endereco" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Nome" Type="String" />
                    <asp:Parameter Name="CPF" Type="Int64" />
                    <asp:Parameter Name="Endereco" Type="Int32" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Database1ConnectionString1 %>" SelectCommand="SELECT * FROM [Endereco]">
            </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Database1ConnectionString1 %>" DeleteCommand="DELETE FROM [Telefone] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Telefone] ([Numero], [DDD], [Tipo]) VALUES (@Numero, @DDD, @Tipo)" SelectCommand="SELECT * FROM [Telefone]" UpdateCommand="UPDATE [Telefone] SET [Numero] = @Numero, [DDD] = @DDD, [Tipo] = @Tipo WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Numero" Type="Int32" />
                    <asp:Parameter Name="DDD" Type="Int32" />
                    <asp:Parameter Name="Tipo" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Numero" Type="Int32" />
                    <asp:Parameter Name="DDD" Type="Int32" />
                    <asp:Parameter Name="Tipo" Type="Int32" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
