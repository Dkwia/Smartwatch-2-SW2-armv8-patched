.class Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/EditNameDialog$2;
.super Ljava/lang/Object;
.source "EditNameDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/EditNameDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/EditNameDialog;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/EditNameDialog;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/EditNameDialog$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/EditNameDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/EditNameDialog$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/EditNameDialog;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/EditNameDialog;->access$000(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/EditNameDialog;)V

    .line 68
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/EditNameDialog$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/EditNameDialog;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/EditNameDialog;->dismiss()V

    .line 69
    return-void
.end method
