<%@ Page Language="C#" MasterPageFile="~/MasterPages/FormDetail.master" AutoEventWireup="true" ValidateRequest="false"
	CodeFile="AC300010.aspx.cs" Inherits="Page_AC300010" Title="Untitled Page" %>
	<%@ MasterType VirtualPath="~/MasterPages/FormDetail.master" %>

		<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
			<px:PXDataSource ID="ds" runat="server" Visible="True" Width="100%" TypeName="AcuCycle.ACRecycleWizard"
				PrimaryView="Filter">
				<CallbackCommands>
				</CallbackCommands>
			</px:PXDataSource>
		</asp:Content>
		<asp:Content ID="cont2" ContentPlaceHolderID="phF" Runat="Server">
			<px:PXFormView ID="form" runat="server" DataSourceID="ds" DataMember="Filter" Width="100%" Height="75px"
				AllowAutoHide="false">
				<Template>
					<px:PXLayoutRule ID="PXLayoutRule1" runat="server" StartRow="True"></px:PXLayoutRule>
					<px:PXSegmentMask CommitChanges="True" runat="server" ID="CstPXSegmentMask1"
						DataField="InventoryID" />
				</Template>
			</px:PXFormView>
		</asp:Content>
		<asp:Content ID="cont3" ContentPlaceHolderID="phG" Runat="Server">
			<px:PXGrid ID="grid" runat="server" DataSourceID="ds" Width="100%" Height="150px" SkinID="Inquire"
				AllowAutoHide="false">
				<Levels>
					<px:PXGridLevel DataMember="Results">
						<Columns>
							<px:PXGridColumn CommitChanges="True" AllowCheckAll="True" Type="CheckBox"
								DataField="Selected" Width="60"></px:PXGridColumn>
							<px:PXGridColumn DataField="InventoryID" Width="70"></px:PXGridColumn>
							<px:PXGridColumn DataField="SiteID" Width="140"></px:PXGridColumn>
							<px:PXGridColumn DataField="LocationID" Width="140"></px:PXGridColumn>
							<px:PXGridColumn DataField="QtyActual" Width="100"></px:PXGridColumn>
						</Columns>
					</px:PXGridLevel>
				</Levels>
				<AutoSize Container="Window" Enabled="True" MinHeight="150" />
				<ActionBar>
				</ActionBar>
			</px:PXGrid>
		</asp:Content>