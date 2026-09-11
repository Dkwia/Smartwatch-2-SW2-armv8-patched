.class Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$3;
.super Ljava/lang/Object;
.source "ExtensionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->performSync(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

.field final synthetic val$clearExtensionCache:Z


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;Z)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    iput-boolean p2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$3;->val$clearExtensionCache:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 273
    iget-boolean v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$3;->val$clearExtensionCache:Z

    if-eqz v2, :cond_0

    .line 274
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->access$100(Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;)V

    .line 275
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->access$200(Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;)Ljava/util/Hashtable;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->access$300(Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;Ljava/util/Hashtable;)V

    .line 280
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->access$000(Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;)V

    .line 281
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->access$400(Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;)V

    .line 282
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->access$500(Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ExtensionsChangeListener;

    .line 283
    .local v1, "listener":Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ExtensionsChangeListener;
    invoke-interface {v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ExtensionsChangeListener;->onSyncFinished()V

    goto :goto_0

    .line 285
    .end local v1    # "listener":Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ExtensionsChangeListener;
    :cond_1
    return-void
.end method
