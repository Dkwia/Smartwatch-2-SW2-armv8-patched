.class Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$1;
.super Ljava/lang/Object;
.source "ExtensionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->access$000(Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;)V

    .line 134
    return-void
.end method
