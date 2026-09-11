.class Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager$ExtensionObserver$1;
.super Ljava/lang/Object;
.source "MyAppsSyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager$ExtensionObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager$ExtensionObserver;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager$ExtensionObserver;)V
    .locals 0

    .prologue
    .line 600
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager$ExtensionObserver$1;->this$1:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager$ExtensionObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager$ExtensionObserver$1;->this$1:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager$ExtensionObserver;

    iget-object v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager$ExtensionObserver;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->reloadExtensions()V

    .line 604
    return-void
.end method
