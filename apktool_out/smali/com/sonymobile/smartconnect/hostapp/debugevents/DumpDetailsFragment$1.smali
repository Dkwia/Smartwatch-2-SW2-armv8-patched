.class Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpDetailsFragment$1;
.super Ljava/lang/Object;
.source "DumpDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpDetailsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpDetailsFragment;

.field final synthetic val$m:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpDetailsFragment;Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpDetailsFragment$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpDetailsFragment;

    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpDetailsFragment$1;->val$m:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 92
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const-string v2, "android.intent.extra.SUBJECT"

    const-string v3, "Costanza dumpfile."

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const-string v2, "android.intent.extra.TEXT"

    const-string v3, "Optional details:\n"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpDetailsFragment$1;->val$m:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;

    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->getDumpFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 97
    .local v1, "uri":Landroid/net/Uri;
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 98
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpDetailsFragment$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpDetailsFragment;

    invoke-virtual {v2, v0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpDetailsFragment;->startActivity(Landroid/content/Intent;)V

    .line 99
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpDetailsFragment$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpDetailsFragment;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpDetailsFragment;->dismiss()V

    .line 100
    return-void
.end method
