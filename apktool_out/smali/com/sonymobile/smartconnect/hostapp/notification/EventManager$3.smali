.class Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$3;
.super Ljava/lang/Object;
.source "EventManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->clear()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;)V
    .locals 0

    .prologue
    .line 700
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->access$400(Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;)V

    .line 704
    return-void
.end method
