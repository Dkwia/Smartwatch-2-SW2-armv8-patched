.class Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$2;
.super Ljava/lang/Object;
.source "EventManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;
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
    .line 616
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 619
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->access$000(Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;Z)V

    .line 620
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->access$100(Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;)V

    .line 621
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->access$200(Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;)V

    .line 622
    return-void
.end method
