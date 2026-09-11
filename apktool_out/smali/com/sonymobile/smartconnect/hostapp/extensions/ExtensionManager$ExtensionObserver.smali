.class Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ExtensionObserver;
.super Landroid/database/ContentObserver;
.source "ExtensionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExtensionObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1400
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ExtensionObserver;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    .line 1401
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1402
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 1406
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1407
    const-string v0, "HostAppExtensionManager: Extension changed callback received!"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z

    .line 1409
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ExtensionObserver;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->access$600(Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;)V

    .line 1410
    return-void
.end method
