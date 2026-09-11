.class Lcom/sonymobile/smartconnect/hostapp/extensions/MaxExtensionDialog$1;
.super Ljava/lang/Object;
.source "MaxExtensionDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/extensions/MaxExtensionDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/MaxExtensionDialog;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/extensions/MaxExtensionDialog;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/MaxExtensionDialog$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/MaxExtensionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 24
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/MaxExtensionDialog$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/MaxExtensionDialog;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/MaxExtensionDialog;->finish()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_0
    return-void

    .line 25
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
