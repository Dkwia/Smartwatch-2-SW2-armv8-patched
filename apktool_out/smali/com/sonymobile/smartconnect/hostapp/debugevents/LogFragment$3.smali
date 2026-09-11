.class Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment$3;
.super Ljava/lang/Object;
.source "LogFragment.java"

# interfaces
.implements Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShareTargetSelected(Landroid/widget/ShareActionProvider;Landroid/content/Intent;)Z
    .locals 1
    .param p1, "source"    # Landroid/widget/ShareActionProvider;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;->updateLogFile()V

    .line 167
    const/4 v0, 0x0

    return v0
.end method
