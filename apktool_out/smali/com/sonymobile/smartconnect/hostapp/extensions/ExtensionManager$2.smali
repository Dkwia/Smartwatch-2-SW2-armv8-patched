.class Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$2;
.super Ljava/lang/Object;
.source "ExtensionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->destroy(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$2;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$2;->val$callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$2;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 204
    :cond_0
    return-void
.end method
