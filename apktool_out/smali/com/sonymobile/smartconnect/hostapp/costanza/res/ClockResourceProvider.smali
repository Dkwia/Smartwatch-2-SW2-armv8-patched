.class public Lcom/sonymobile/smartconnect/hostapp/costanza/res/ClockResourceProvider;
.super Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider;
.source "ClockResourceProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/costanza/res/ClockResourceProvider$ClockDefintionResourceCreator;,
        Lcom/sonymobile/smartconnect/hostapp/costanza/res/ClockResourceProvider$ClockDefintionHasher;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;Landroid/content/Context;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resourceCache"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;
    .param p3, "cidProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;
    .param p4, "cidRefTracker"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;
    .param p5, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider;-><init>(Ljava/lang/String;Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;)V

    .line 68
    return-void
.end method


# virtual methods
.method public getResources(Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeGroupControl;Ljava/util/List;)I
    .locals 2
    .param p2, "timeGroupControl"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeGroupControl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeGroupControl;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    .local p3, "clockItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;>;"
    if-nez p3, :cond_0

    .line 74
    const/4 v0, -0x1

    .line 77
    :goto_0
    return v0

    :cond_0
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ClockResourceProvider$ClockDefintionHasher;

    invoke-direct {v0, p2, p3}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ClockResourceProvider$ClockDefintionHasher;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;Ljava/util/List;)V

    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ClockResourceProvider$ClockDefintionResourceCreator;

    invoke-direct {v1, p3}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ClockResourceProvider$ClockDefintionResourceCreator;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ClockResourceProvider;->reuseResource(Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceHasher;Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreator;)I

    move-result v0

    goto :goto_0
.end method
