.class public Lcom/sonymobile/smartconnect/hostapp/extensions/MaxExtensionDialog;
.super Landroid/app/Activity;
.source "MaxExtensionDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const v1, 0x7f030020

    invoke-virtual {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/MaxExtensionDialog;->setContentView(I)V

    .line 17
    const v1, 0x7f070086

    invoke-virtual {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/MaxExtensionDialog;->setTitle(I)V

    .line 18
    const v1, 0x7f0d006f

    invoke-virtual {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/MaxExtensionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 19
    .local v0, "ok_button":Landroid/widget/Button;
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/extensions/MaxExtensionDialog$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/MaxExtensionDialog$1;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/MaxExtensionDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    return-void
.end method
