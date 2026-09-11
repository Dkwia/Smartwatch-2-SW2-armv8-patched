.class Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager$1;
.super Ljava/lang/Object;
.source "MyAppsSyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;-><init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/PersistableObserver;Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->reloadExtensions()V

    .line 87
    return-void
.end method
