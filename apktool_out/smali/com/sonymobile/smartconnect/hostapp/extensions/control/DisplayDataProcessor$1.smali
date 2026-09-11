.class Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor$1;
.super Ljava/lang/Object;
.source "DisplayDataProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;->reset()V

    .line 40
    return-void
.end method
