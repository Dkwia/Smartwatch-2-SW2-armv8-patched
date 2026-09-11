.class Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor$1;
.super Ljava/lang/Object;
.source "LayoutProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->reset()V

    .line 51
    return-void
.end method
