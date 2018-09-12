﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ContentComponent.ascx.cs" Inherits="RockWeb.Blocks.Cms.ContentComponent" %>


<script type="text/javascript">
    function clearDialog() {
        $('#rock-config-cancel-trigger').click();
    }
</script>

<asp:UpdatePanel ID="upnlContent" runat="server">
    <ContentTemplate>

        <%-- View Panel --%>
        <asp:Panel ID="pnlView" runat="server">
            <Rock:NotificationBox ID="nbAlert" runat="server" NotificationBoxType="Danger" />
            <asp:Literal ID="lContentOutput" runat="server" />
        </asp:Panel>

        <%-- Content Component Config --%>
        <asp:Panel ID="pnlContentComponentConfig" runat="server" Visible="false">
            <Rock:ModalDialog ID="mdContentComponentConfig" runat="server" OnSaveClick="mdContentComponentConfig_SaveClick" Title="Content Component - Configuration" OnCancelScript="clearDialog();" ValidationGroup="vgContentComponentConfig">
                <Content>
                    <div class="row">
                        <div class="col-md-6">
                            <Rock:RockTextBox ID="tbComponentName" runat="server" Label="Component Name" Required="true" MaxLength="100" ValidationGroup="vgContentComponentConfig" />
                            <Rock:NumberBox ID="nbItemCacheDuration" runat="server" Label="Item Cache Duration" MinimumValue="0" CssClass="input-width-sm" Help="Number of seconds to cache the content item specified by the parameter." />
                            <Rock:DefinedValuePicker ID="dvpContentComponentTemplate" runat="server" Required="true" Label="Content Component Template" ValidationGroup="vgContentComponentConfig" />
                        </div>
                        <div class="col-md-6">
                            <Rock:RockCheckBox ID="cbAllowMultipleContentItems" runat="server" Label="Allow Multiple Content Items" />
                            <Rock:NumberBox ID="nbOutputCacheDuration" runat="server" Label="Output Cache Duration" MinimumValue="0" CssClass="input-width-sm" Help="Number of seconds to cache the resolved output. Only cache the output if you are not personalizing the output based on current user, current page, or any other merge field value." />
                            <Rock:RockCheckBoxList ID="cblCacheTags" runat="server" Label="Cache Tags" Help="Cached tags are used to link cached content so that it can be expired as a group" RepeatDirection="Horizontal" />
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <Rock:DynamicPlaceholder ID="phContentChannelAttributes" runat="server" />

                            <div class="form-group">
                                <label class="control-label">
                                    Filter
                                </label>
                                <asp:HiddenField ID="hfDataFilterId" runat="server" />
                                <asp:PlaceHolder ID="phFilters" runat="server"></asp:PlaceHolder>
                            </div>

                        </div>
                        <div class="col-md-6">
                            <Rock:CodeEditor ID="cePreHtml" runat="server" Label="Pre-HTML" Help="HTML Content to render before the block <span class='tip tip-lava'></span>." EditorMode="Lava" EditorTheme="Rock" EditorHeight="400" />
                            <Rock:CodeEditor ID="cePostHtml" runat="server" Label="Post-HTML" Help="HTML Content to render after the block <span class='tip tip-lava'></span>." EditorMode="Lava" EditorTheme="Rock" EditorHeight="400" />
                        </div>
                    </div>

                </Content>
            </Rock:ModalDialog>
        </asp:Panel>

        <%-- Content Component Edit - Content Channel Item(s)--%>
        <asp:Panel ID="pnlContentComponentEditContentChannelItems" runat="server" Visible="false">
            <Rock:ModalDialog ID="mdContentComponentEditContentChannelItems" runat="server" OnSaveClick="mdContentComponentEditContentChannelItems_SaveClick" Title="Content Component - Edit Content" ValidationGroup="vgContentComponentEditContentChannelItem" OnCancelScript="clearDialog();">
                <Content>
                    <div class="row">
                        <%-- NOTE: CssClass for pnlContentChannelItemEdit is set in CodeBehind based on AllowMultipleItems Option --%>
                        <asp:Panel ID="pnlContentChannelItemEdit" runat="server" CssClass="col-md-8">
                            <asp:HiddenField ID="hfContentChannelItemId" runat="server" />
                            <Rock:RockTextBox ID="tbContentChannelItemTitle" runat="server" Label="Title" Required="true" MaxLength="200" ValidationGroup="vgContentComponentEditContentChannelItem" />
                            <Rock:HtmlEditor ID="htmlContentChannelItemContent" runat="server" Label="Content" ResizeMaxWidth="720" Height="300" ValidationGroup="vgContentComponentEditContentChannelItem" Toolbar="Full" />
                            <Rock:DynamicPlaceholder ID="phContentChannelItemAttributes" runat="server" />
                        </asp:Panel>
                        <asp:Panel ID="pnlContentChannelItemsList" runat="server" CssClass="col-md-4">
                            <div class="grid">
                                <Rock:Grid ID="gContentChannelItems" runat="server" DisplayType="Light" AllowSorting="false" RowItemText="Item" OnRowSelected="gContentChannelItems_RowSelected">
                                    <Columns>
                                        <Rock:ReorderField />
                                        <asp:BoundField DataField="Title" />
                                        <Rock:DeleteField OnClick="gContentChannelItems_DeleteClick" />
                                    </Columns>
                                </Rock:Grid>
                            </div>
                        </asp:Panel>
                    </div>

                    <div class="actions">
                        <asp:LinkButton ID="btnSaveItem" runat="server" AccessKey="s" ToolTip="Alt+s" Text="Save Item" CssClass="btn btn-primary" OnClick="btnSaveItem_Click" />
                    </div>

                </Content>
            </Rock:ModalDialog>
        </asp:Panel>

    </ContentTemplate>
</asp:UpdatePanel>
