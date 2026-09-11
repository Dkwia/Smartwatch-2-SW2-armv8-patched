.class Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$1;
.super Ljava/lang/Object;
.source "CostanzaHostApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;)V
    .locals 0

    .prologue
    .line 595
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 600
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->access$1400(Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;)Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    move-result-object v0

    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    invoke-direct {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->setConnectionManager(Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionManager;)V

    .line 602
    return-void
.end method
