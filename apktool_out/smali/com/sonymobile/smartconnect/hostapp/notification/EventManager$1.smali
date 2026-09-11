.class Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$1;
.super Ljava/lang/Object;
.source "EventManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sonymobile/smartconnect/hostapp/notification/Event;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonymobile/smartconnect/hostapp/notification/Event;Lcom/sonymobile/smartconnect/hostapp/notification/Event;)I
    .locals 4
    .param p1, "lhs"    # Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    .param p2, "rhs"    # Lcom/sonymobile/smartconnect/hostapp/notification/Event;

    .prologue
    .line 82
    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getPublishedTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getPublishedTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 83
    const/4 v0, -0x1

    .line 87
    :goto_0
    return v0

    .line 84
    :cond_0
    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getPublishedTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getPublishedTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 85
    const/4 v0, 0x1

    goto :goto_0

    .line 87
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 79
    check-cast p1, Lcom/sonymobile/smartconnect/hostapp/notification/Event;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/sonymobile/smartconnect/hostapp/notification/Event;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$1;->compare(Lcom/sonymobile/smartconnect/hostapp/notification/Event;Lcom/sonymobile/smartconnect/hostapp/notification/Event;)I

    move-result v0

    return v0
.end method
