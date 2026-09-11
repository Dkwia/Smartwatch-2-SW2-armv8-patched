.class public Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem$Factory;
.super Ljava/lang/Object;
.source "MenuItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(ILjava/lang/String;Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;
    .locals 1
    .param p0, "itemId"    # I
    .param p1, "iconUri"    # Ljava/lang/String;
    .param p2, "itemText"    # Ljava/lang/String;

    .prologue
    .line 32
    if-eqz p1, :cond_0

    .line 33
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem$Factory;->createIconMenuItem(ILandroid/net/Uri;)Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;

    move-result-object v0

    .line 37
    :goto_0
    return-object v0

    .line 34
    :cond_0
    if-eqz p2, :cond_1

    .line 35
    invoke-static {p0, p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem$Factory;->createTextMenuItem(ILjava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;

    move-result-object v0

    goto :goto_0

    .line 37
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createIconMenuItem(ILandroid/net/Uri;)Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;
    .locals 2
    .param p0, "itemId"    # I
    .param p1, "imageUri"    # Landroid/net/Uri;

    .prologue
    .line 27
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;-><init>(ILcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem$1;)V

    .line 28
    .local v0, "item":Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;
    invoke-static {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;->access$202(Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;Landroid/net/Uri;)Landroid/net/Uri;

    .line 29
    return-object v0
.end method

.method public static createTextMenuItem(ILjava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;
    .locals 2
    .param p0, "itemId"    # I
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 22
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;-><init>(ILcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem$1;)V

    .line 23
    .local v0, "item":Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;
    invoke-static {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;->access$102(Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    return-object v0
.end method
