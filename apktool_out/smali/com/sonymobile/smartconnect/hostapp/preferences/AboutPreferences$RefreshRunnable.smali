.class Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences$RefreshRunnable;
.super Ljava/lang/Object;
.source "AboutPreferences.java"

.implements Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;

.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;)V
    .locals 0
    .param p1, "this$0"

    .prologue
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences$RefreshRunnable;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences$RefreshRunnable;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;->updateAccessoryVersionSummary()V

    :cond_0
    return-void
.end method
