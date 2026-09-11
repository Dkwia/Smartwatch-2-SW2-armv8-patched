.class Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor$3;
.super Ljava/lang/Object;
.source "LayoutProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->processUpdatedListItem(Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutIntentData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;

.field final synthetic val$listControl:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;

    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor$3;->val$listControl:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor$3;->val$listControl:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->requestMissingItem()V

    .line 170
    return-void
.end method
