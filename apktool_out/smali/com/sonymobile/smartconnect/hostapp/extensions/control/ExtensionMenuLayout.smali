.class public Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionMenuLayout;
.super Landroid/widget/LinearLayout;
.source "ExtensionMenuLayout.java"


# instance fields
.field private final mDefaultLayoutParams:Landroid/widget/LinearLayout$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 19
    const v1, 0x7f0d0002

    invoke-virtual {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionMenuLayout;->setId(I)V

    .line 20
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionMenuLayout;->setOrientation(I)V

    .line 21
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionMenuLayout;->setGravity(I)V

    .line 23
    const/4 v0, 0x1

    .line 24
    .local v0, "weight":I
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionMenuLayout;->mDefaultLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 26
    return-void
.end method


# virtual methods
.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionMenuLayout;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionMenuLayout;->mDefaultLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    return-object v0
.end method
