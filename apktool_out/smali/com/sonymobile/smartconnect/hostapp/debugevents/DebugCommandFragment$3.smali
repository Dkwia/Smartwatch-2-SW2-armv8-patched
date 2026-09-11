.class Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment$3;
.super Ljava/lang/Object;
.source "DebugCommandFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 62
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;->access$100(Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;->access$100(Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "cmd":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;

    invoke-virtual {v1, v0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;->addRecent(Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;

    invoke-virtual {v1, v0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;->doPositiveClick(Ljava/lang/String;)V

    .line 69
    .end local v0    # "cmd":Ljava/lang/String;
    :cond_0
    return-void
.end method
