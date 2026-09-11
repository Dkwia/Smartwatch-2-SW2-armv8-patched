.class public Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;
.super Ljava/util/concurrent/ConcurrentLinkedQueue;
.source "SendQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentLinkedQueue",
        "<",
        "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2bea1ed94613797aL


# instance fields
.field private final mCategory:Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;)V
    .locals 0
    .param p1, "category"    # Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;->mCategory:Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;

    .line 29
    return-void
.end method


# virtual methods
.method public category()Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;->mCategory:Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;

    return-object v0
.end method
