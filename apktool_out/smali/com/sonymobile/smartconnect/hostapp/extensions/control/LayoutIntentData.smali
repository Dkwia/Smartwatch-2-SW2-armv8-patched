.class public Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutIntentData;
.super Ljava/lang/Object;
.source "LayoutIntentData.java"


# static fields
.field public static final INVALID_LAYOUT_ID:I = -0x1


# instance fields
.field protected final mLayoutData:Landroid/os/Bundle;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "extraLayoutData"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutIntentData;->mPackageName:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutIntentData;->mLayoutData:Landroid/os/Bundle;

    .line 18
    return-void
.end method


# virtual methods
.method public getExtraBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutIntentData;->mLayoutData:Landroid/os/Bundle;

    return-object v0
.end method

.method public getExtraLayoutData()[Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutIntentData;->mLayoutData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutIntentData;->mLayoutData:Landroid/os/Bundle;

    const-string v1, "layout_data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 32
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutIntentData;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getXmlLayoutId()I
    .locals 3

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutIntentData;->mLayoutData:Landroid/os/Bundle;

    const-string v1, "data_xml_layout"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
