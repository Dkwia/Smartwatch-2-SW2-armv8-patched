.class Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity$4;
.super Ljava/lang/Object;
.source "ExtensionsListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;->createCategoryDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity$4;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity$4;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;->access$202(Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 169
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity$4;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;->access$302(Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 170
    return-void
.end method
