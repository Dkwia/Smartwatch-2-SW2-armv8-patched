.class Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment$4;
.super Ljava/lang/Thread;
.source "DebugCommandFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;->doPositiveClick(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;

.field final synthetic val$cmd:Ljava/lang/String;

.field final synthetic val$debugEventManager:Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugEventManager;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugEventManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment$4;->this$0:Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;

    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment$4;->val$debugEventManager:Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugEventManager;

    iput-object p3, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment$4;->val$cmd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment$4;->val$debugEventManager:Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugEventManager;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment$4;->val$cmd:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugEventManager;->sendDebugCommand([B)V

    .line 97
    return-void
.end method
