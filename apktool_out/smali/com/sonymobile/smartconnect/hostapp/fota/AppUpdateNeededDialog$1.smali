.class Lcom/sonymobile/smartconnect/hostapp/fota/AppUpdateNeededDialog$1;
.super Ljava/lang/Object;
.source "AppUpdateNeededDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/fota/AppUpdateNeededDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/fota/AppUpdateNeededDialog;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/fota/AppUpdateNeededDialog;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/fota/AppUpdateNeededDialog$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/fota/AppUpdateNeededDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 35
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/fota/AppUpdateNeededDialog$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/fota/AppUpdateNeededDialog;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/fota/AppUpdateNeededDialog;->access$000(Lcom/sonymobile/smartconnect/hostapp/fota/AppUpdateNeededDialog;)Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 36
    .local v0, "hostAppPackageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/fota/AppUpdateNeededDialog$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/fota/AppUpdateNeededDialog;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/fota/AppUpdateNeededDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sonymobile/smartconnect/hostapp/util/MarketUtils;->showInMarket(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    return-void
.end method
