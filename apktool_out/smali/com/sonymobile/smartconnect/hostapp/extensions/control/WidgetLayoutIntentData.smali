.class public Lcom/sonymobile/smartconnect/hostapp/extensions/control/WidgetLayoutIntentData;
.super Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutIntentData;
.source "WidgetLayoutIntentData.java"


# instance fields
.field private mLowPowerLayoutBundle:Landroid/os/Bundle;

.field private mOfflineLayoutBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "extraLayoutData"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutIntentData;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 16
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/WidgetLayoutIntentData;->mLayoutData:Landroid/os/Bundle;

    const-string v7, "additional_layouts"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/smartconnect/hostapp/util/UIUtils;->getBundleArray([Landroid/os/Parcelable;)[Landroid/os/Bundle;

    move-result-object v3

    .line 18
    .local v3, "bundles":[Landroid/os/Bundle;
    if-eqz v3, :cond_2

    .line 19
    move-object v1, v3

    .local v1, "arr$":[Landroid/os/Bundle;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v2, v1, v4

    .line 20
    .local v2, "b":Landroid/os/Bundle;
    const-string v6, "display_mode"

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 22
    .local v0, "accessoryState":I
    const/4 v6, 0x4

    if-ne v0, v6, :cond_1

    .line 23
    iput-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/WidgetLayoutIntentData;->mOfflineLayoutBundle:Landroid/os/Bundle;

    .line 19
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 24
    :cond_1
    const/4 v6, 0x2

    if-ne v0, v6, :cond_0

    .line 25
    iput-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/WidgetLayoutIntentData;->mLowPowerLayoutBundle:Landroid/os/Bundle;

    goto :goto_1

    .line 29
    .end local v0    # "accessoryState":I
    .end local v1    # "arr$":[Landroid/os/Bundle;
    .end local v2    # "b":Landroid/os/Bundle;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_2
    return-void
.end method

.method private getXmlLayoutId(Landroid/os/Bundle;)I
    .locals 2
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, -0x1

    .line 48
    if-eqz p1, :cond_0

    .line 49
    const-string v1, "data_xml_layout"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 51
    :cond_0
    return v0
.end method


# virtual methods
.method public getXmlLayoutId()I
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/WidgetLayoutIntentData;->getXmlLayoutId(I)I

    move-result v0

    return v0
.end method

.method public getXmlLayoutId(I)I
    .locals 1
    .param p1, "accessoryState"    # I

    .prologue
    .line 37
    packed-switch p1, :pswitch_data_0

    .line 43
    :pswitch_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/WidgetLayoutIntentData;->mLayoutData:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/WidgetLayoutIntentData;->getXmlLayoutId(Landroid/os/Bundle;)I

    move-result v0

    :goto_0
    return v0

    .line 39
    :pswitch_1
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/WidgetLayoutIntentData;->mOfflineLayoutBundle:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/WidgetLayoutIntentData;->getXmlLayoutId(Landroid/os/Bundle;)I

    move-result v0

    goto :goto_0

    .line 41
    :pswitch_2
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/WidgetLayoutIntentData;->mLowPowerLayoutBundle:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/WidgetLayoutIntentData;->getXmlLayoutId(Landroid/os/Bundle;)I

    move-result v0

    goto :goto_0

    .line 37
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasLowPowerLayout()Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/WidgetLayoutIntentData;->mLowPowerLayoutBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOfflineLayout()Z
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/WidgetLayoutIntentData;->mOfflineLayoutBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
