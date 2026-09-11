.class public Lcom/sonymobile/smartconnect/hostapp/extensions/control/CostanzaAbsoluteLayout;
.super Landroid/widget/AbsoluteLayout;
.source "CostanzaAbsoluteLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 17
    invoke-direct {p0, p1}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    .line 18
    const v0, 0x7f0d0001

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/CostanzaAbsoluteLayout;->setId(I)V

    .line 19
    invoke-virtual {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/CostanzaAbsoluteLayout;->setClickable(Z)V

    .line 20
    invoke-virtual {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/CostanzaAbsoluteLayout;->setLongClickable(Z)V

    .line 21
    return-void
.end method
