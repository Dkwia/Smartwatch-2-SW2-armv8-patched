.class Lcom/sonymobile/smartconnect/hostapp/costanza/res/ClockResourceProvider$ClockDefintionHasher;
.super Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$UiControlHierarchyHasher;
.source "ClockResourceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/res/ClockResourceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClockDefintionHasher"
.end annotation


# instance fields
.field private final mClockItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;Ljava/util/List;)V
    .locals 0
    .param p1, "uiControl"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, "clockItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;>;"
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$UiControlHierarchyHasher;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;)V

    .line 29
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ClockResourceProvider$ClockDefintionHasher;->mClockItems:Ljava/util/List;

    .line 30
    return-void
.end method


# virtual methods
.method protected feedDigester(Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;)V
    .locals 3
    .param p1, "digester"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$UiControlHierarchyHasher;->feedDigester(Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;)V

    .line 35
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ClockResourceProvider$ClockDefintionHasher;->mClockItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;

    .line 36
    .local v1, "item":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;->getType()Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;->ordinal()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->update(I)V

    .line 37
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;->getGroupBoxTop()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->update(I)V

    .line 38
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;->getGroupBoxLeft()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->update(I)V

    .line 39
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;->getGroupBoxBottom()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->update(I)V

    .line 40
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;->getGroupBoxRight()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->update(I)V

    .line 41
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;->getCid()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->update(I)V

    goto :goto_0

    .line 43
    .end local v1    # "item":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;
    :cond_0
    return-void
.end method
