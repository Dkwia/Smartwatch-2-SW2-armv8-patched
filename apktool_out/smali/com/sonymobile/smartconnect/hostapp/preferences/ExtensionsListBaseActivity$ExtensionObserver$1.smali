.class Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$ExtensionObserver$1;
.super Ljava/lang/Object;
.source "ExtensionsListBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$ExtensionObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$ExtensionObserver;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$ExtensionObserver;)V
    .locals 0

    .prologue
    .line 635
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$ExtensionObserver$1;->this$1:Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$ExtensionObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$ExtensionObserver$1;->this$1:Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$ExtensionObserver;

    iget-object v0, v0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$ExtensionObserver;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->reloadExtensions()V

    .line 639
    return-void
.end method
