.class public Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuIntentData;
.super Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutIntentData;
.source "MenuIntentData.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "extraLayoutData"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutIntentData;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 20
    return-void
.end method


# virtual methods
.method public getMenuItems()[Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;
    .locals 13

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuIntentData;->getExtraBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 24
    .local v1, "extraBundle":Landroid/os/Bundle;
    const-string v11, "menuItems"

    invoke-static {v1, v11}, Lcom/sonymobile/smartconnect/hostapp/util/UIUtils;->getBundleArray(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Bundle;

    move-result-object v9

    .line 27
    .local v9, "menuItemBundles":[Landroid/os/Bundle;
    new-instance v10, Ljava/util/ArrayList;

    array-length v11, v9

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 28
    .local v10, "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;>;"
    move-object v0, v9

    .local v0, "arr$":[Landroid/os/Bundle;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v7, :cond_2

    aget-object v8, v0, v2

    .line 29
    .local v8, "menuItemBundle":Landroid/os/Bundle;
    if-nez v8, :cond_1

    .line 30
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 31
    const-string v11, "menuItemBundle is null"

    invoke-static {v11}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w(Ljava/lang/String;)Z

    .line 28
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 35
    :cond_1
    const-string v11, "menuItemId"

    const/4 v12, -0x1

    invoke-virtual {v8, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 36
    .local v5, "itemId":I
    const-string v11, "menuItemText"

    invoke-virtual {v8, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 37
    .local v6, "itemText":Ljava/lang/String;
    const-string v11, "menuItemIcon"

    invoke-virtual {v8, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 38
    .local v3, "imageUriText":Ljava/lang/String;
    invoke-static {v5, v3, v6}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem$Factory;->create(ILjava/lang/String;Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;

    move-result-object v4

    .line 39
    .local v4, "item":Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;
    if-eqz v4, :cond_0

    .line 40
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 44
    .end local v3    # "imageUriText":Ljava/lang/String;
    .end local v4    # "item":Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;
    .end local v5    # "itemId":I
    .end local v6    # "itemText":Ljava/lang/String;
    .end local v8    # "menuItemBundle":Landroid/os/Bundle;
    :cond_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;

    return-object v11
.end method
