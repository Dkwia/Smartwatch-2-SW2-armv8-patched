.class Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity$1FactoryResetListener;
.super Ljava/lang/Object;
.source "StartupActivity.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;->registerFactoryResetListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FactoryResetListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity$1FactoryResetListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessageTypeToListenFor()I
    .locals 1

    .prologue
    .line 165
    const/16 v0, 0x15

    return v0
.end method

.method public onMessage(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V
    .locals 4
    .param p1, "msg"    # Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    .prologue
    .line 170
    move-object v0, p1

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseFactoryReset;

    .line 171
    .local v0, "rspFactoryReset":Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseFactoryReset;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseFactoryReset;->getStatus()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 172
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity$1FactoryResetListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;->access$200(Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;)Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    move-result-object v1

    const v2, 0x7f070004

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 175
    :cond_0
    return-void
.end method
