.class Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$7;
.super Ljava/lang/Object;
.source "ExtensionsListBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->reloadExtensions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$7;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$7;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->access$200(Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$7;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->access$300(Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;)V

    .line 440
    :cond_0
    return-void
.end method
