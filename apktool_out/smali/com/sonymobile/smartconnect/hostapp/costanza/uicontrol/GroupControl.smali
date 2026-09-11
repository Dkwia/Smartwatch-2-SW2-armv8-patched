.class public Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;
.super Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;
.source "GroupControl.java"


# instance fields
.field public final children:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;-><init>()V

    .line 20
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;->children:Ljava/util/LinkedList;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isUpdatable"    # Z

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;-><init>(Landroid/view/View;Z)V

    .line 20
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;->children:Ljava/util/LinkedList;

    .line 27
    return-void
.end method


# virtual methods
.method public addChild(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;)V
    .locals 1
    .param p1, "child"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;

    .prologue
    .line 37
    if-nez p1, :cond_0

    .line 43
    :goto_0
    return-void

    .line 40
    :cond_0
    iput-object p0, p1, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mParent:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;

    .line 42
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;->children:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public allowUpdatesEverySecondInLowPowerMode(Z)V
    .locals 3
    .param p1, "allowSecondlyUpdates"    # Z

    .prologue
    .line 174
    invoke-super {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->allowUpdatesEverySecondInLowPowerMode(Z)V

    .line 175
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;->children:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;

    .line 176
    .local v1, "uiControl":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;
    invoke-virtual {v1, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->allowUpdatesEverySecondInLowPowerMode(Z)V

    goto :goto_0

    .line 178
    .end local v1    # "uiControl":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;
    :cond_0
    return-void
.end method

.method protected connectTouchProcessors(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener;)V
    .locals 3
    .param p1, "aefEventListener"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener;

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->connectTouchProcessors(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener;)V

    .line 124
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;->children:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;

    .line 125
    .local v1, "uiControl":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;
    invoke-virtual {v1, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->connectTouchProcessors(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener;)V

    goto :goto_0

    .line 127
    .end local v1    # "uiControl":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;
    :cond_0
    return-void
.end method

.method public disableTouchResources()V
    .locals 3

    .prologue
    .line 140
    invoke-super {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->disableTouchResources()V

    .line 142
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;->children:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;

    .line 143
    .local v1, "uiControl":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->disableTouchResources()V

    goto :goto_0

    .line 145
    .end local v1    # "uiControl":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;
    :cond_0
    return-void
.end method

.method public findUiControlByKey(I)Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;
    .locals 4
    .param p1, "key"    # I

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->findUiControlByKey(I)Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;

    move-result-object v2

    .line 101
    .local v2, "uiControl":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;
    if-eqz v2, :cond_0

    .line 112
    .end local p0    # "this":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;
    :goto_0
    return-object p0

    .line 105
    .restart local p0    # "this":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;->children:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;

    .line 106
    .local v0, "child":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;
    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->findUiControlByKey(I)Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;

    move-result-object v2

    .line 107
    if-eqz v2, :cond_1

    move-object p0, v2

    .line 108
    goto :goto_0

    .line 112
    .end local v0    # "child":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public findUiControlByViewId(I)Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;->getRectangle()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;->getViewId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 94
    .end local p0    # "this":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;
    :goto_0
    return-object p0

    .line 85
    .restart local p0    # "this":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;
    :cond_0
    const/4 v2, 0x0

    .line 87
    .local v2, "uiControl":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;->children:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;

    .line 88
    .local v0, "child":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;
    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->findUiControlByViewId(I)Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;

    move-result-object v2

    .line 89
    if-eqz v2, :cond_1

    .end local v0    # "child":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;
    :cond_2
    move-object p0, v2

    .line 94
    goto :goto_0
.end method

.method protected generateResources(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .param p1, "resProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p2, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    .local p3, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p4, "subScreens":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->generateResources(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 73
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;->children:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;

    .line 74
    .local v0, "child":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->generateResources(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 75
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->markAsClean()V

    goto :goto_0

    .line 77
    .end local v0    # "child":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;
    :cond_0
    return-void
.end method

.method public getUpdateInterval()I
    .locals 4

    .prologue
    .line 149
    const v1, 0x7fffffff

    .line 150
    .local v1, "minUpdateInterval":I
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;->children:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;

    .line 151
    .local v2, "uiControl":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;
    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->getUpdateInterval()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 152
    goto :goto_0

    .line 153
    .end local v2    # "uiControl":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;
    :cond_0
    return v1
.end method

.method public hasChildren()Z
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;->children:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public indexOf(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;)I
    .locals 1
    .param p1, "uiControl"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;->children:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public remove(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;)V
    .locals 1
    .param p1, "uiControl"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;->children:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method

.method public setInvalidateListener(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl$InvalidateListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl$InvalidateListener;

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->setInvalidateListener(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl$InvalidateListener;)V

    .line 133
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;->children:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;

    .line 134
    .local v1, "uiControl":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;
    invoke-virtual {v1, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->setInvalidateListener(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl$InvalidateListener;)V

    goto :goto_0

    .line 136
    .end local v1    # "uiControl":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;
    :cond_0
    return-void
.end method

.method protected setTargetColorMode(Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)V
    .locals 3
    .param p1, "targetColorMode"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;

    .prologue
    .line 158
    invoke-super {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->setTargetColorMode(Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)V

    .line 159
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;->children:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;

    .line 160
    .local v1, "uiControl":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;
    invoke-virtual {v1, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->setTargetColorMode(Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)V

    goto :goto_0

    .line 162
    .end local v1    # "uiControl":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;
    :cond_0
    return-void
.end method

.method protected setTargetState(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;)V
    .locals 3
    .param p1, "accState"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

    .prologue
    .line 166
    invoke-super {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->setTargetState(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;)V

    .line 167
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;->children:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;

    .line 168
    .local v1, "uiControl":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;
    invoke-virtual {v1, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->setTargetState(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;)V

    goto :goto_0

    .line 170
    .end local v1    # "uiControl":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;
    :cond_0
    return-void
.end method

.method public toString(Ljava/lang/StringBuilder;I)V
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "level"    # I

    .prologue
    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;->children:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;

    .line 58
    .local v0, "child":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;
    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    add-int/lit8 v3, p2, 0x1

    if-ge v1, v3, :cond_0

    .line 60
    const/16 v3, 0x20

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 62
    :cond_0
    add-int/lit8 v3, p2, 0x1

    invoke-virtual {v0, p1, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->toString(Ljava/lang/StringBuilder;I)V

    goto :goto_0

    .line 64
    .end local v0    # "child":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
