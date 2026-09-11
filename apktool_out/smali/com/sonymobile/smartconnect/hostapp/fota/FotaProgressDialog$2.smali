.class Lcom/sonymobile/smartconnect/hostapp/fota/FotaProgressDialog$2;
.super Ljava/lang/Object;
.source "FotaProgressDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/fota/FotaProgressDialog;->onDownloadDone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/fota/FotaProgressDialog;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/fota/FotaProgressDialog;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaProgressDialog$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/fota/FotaProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaProgressDialog$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/fota/FotaProgressDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaProgressDialog;->access$002(Lcom/sonymobile/smartconnect/hostapp/fota/FotaProgressDialog;Landroid/view/View;)Landroid/view/View;

    .line 125
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaProgressDialog$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/fota/FotaProgressDialog;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaProgressDialog;->dismissAllowingStateLoss()V

    .line 126
    return-void
.end method
