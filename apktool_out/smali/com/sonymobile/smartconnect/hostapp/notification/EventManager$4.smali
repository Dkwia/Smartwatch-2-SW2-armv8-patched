.class Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$4;
.super Ljava/lang/Object;
.source "EventManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->setEventRead(Lcom/sonymobile/smartconnect/hostapp/notification/Event;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;

.field final synthetic val$event:Lcom/sonymobile/smartconnect/hostapp/notification/Event;

.field final synthetic val$isRead:Z


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;Lcom/sonymobile/smartconnect/hostapp/notification/Event;Z)V
    .locals 0

    .prologue
    .line 768
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$4;->this$0:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;

    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$4;->val$event:Lcom/sonymobile/smartconnect/hostapp/notification/Event;

    iput-boolean p3, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$4;->val$isRead:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 771
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$4;->val$event:Lcom/sonymobile/smartconnect/hostapp/notification/Event;

    iget-boolean v1, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$4;->val$isRead:Z

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->setRead(Z)V

    .line 772
    return-void
.end method
