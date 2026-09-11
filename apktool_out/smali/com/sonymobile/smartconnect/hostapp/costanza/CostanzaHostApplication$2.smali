.class Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$2;
.super Ljava/lang/Object;
.source "CostanzaHostApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->connect(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

.field final synthetic val$btAddress:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 774
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$2;->val$btAddress:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 778
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->access$1400(Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;)Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$2;->val$btAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->connect(Ljava/lang/String;)V

    .line 779
    return-void
.end method
