.class Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$4;
.super Ljava/lang/Object;
.source "ExtensionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->getExtensionByCid(ILcom/sonymobile/smartconnect/hostapp/extensions/ExtensionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

.field final synthetic val$cid:I

.field final synthetic val$extensionListener:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionListener;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;ILcom/sonymobile/smartconnect/hostapp/extensions/ExtensionListener;)V
    .locals 0

    .prologue
    .line 965
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$4;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    iput p2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$4;->val$cid:I

    iput-object p3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$4;->val$extensionListener:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 968
    const/4 v2, 0x0

    .line 969
    .local v2, "matchingExtension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$4;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->access$200(Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;)Ljava/util/Hashtable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .line 970
    .local v0, "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getCid()I

    move-result v3

    iget v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$4;->val$cid:I

    if-ne v3, v4, :cond_0

    .line 971
    move-object v2, v0

    .line 975
    .end local v0    # "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$4;->val$extensionListener:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionListener;

    iget v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$4;->val$cid:I

    invoke-interface {v3, v4, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionListener;->onDone(ILcom/sonymobile/smartconnect/hostapp/extensions/Extension;)V

    .line 976
    return-void
.end method
