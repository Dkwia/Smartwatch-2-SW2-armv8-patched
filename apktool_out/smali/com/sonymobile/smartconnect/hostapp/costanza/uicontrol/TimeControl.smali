.class public Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeControl;
.super Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TextControl;
.source "TimeControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeControl$1;
    }
.end annotation


# instance fields
.field private mClockItem:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;

.field private final mTimeView:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;Z)V
    .locals 0
    .param p1, "view"    # Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;
    .param p2, "isUpdatable"    # Z

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TextControl;-><init>(Landroid/widget/TextView;Z)V

    .line 27
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeControl;->mTimeView:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;

    .line 28
    return-void
.end method

.method private getItemType(Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;)Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;
    .locals 2
    .param p1, "timeType"    # Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    .prologue
    .line 84
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeControl$1;->$SwitchMap$com$sonymobile$smartconnect$hostapp$extensions$widget$TimeView$TimeType:[I

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 148
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;->eCLOCK_ITEM_NONE:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;

    :goto_0
    return-object v0

    .line 86
    :pswitch_0
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;->eCLOCK_ITEM_NONE:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;

    goto :goto_0

    .line 89
    :pswitch_1
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;->eCLOCK_ITEM_TIME_SECONDS:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;

    goto :goto_0

    .line 91
    :pswitch_2
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;->eCLOCK_ITEM_TIME_SECONDS_ONES:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;

    goto :goto_0

    .line 93
    :pswitch_3
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;->eCLOCK_ITEM_TIME_SECONDS_TENS:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;

    goto :goto_0

    .line 96
    :pswitch_4
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;->eCLOCK_ITEM_TIME_MINUTES:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;

    goto :goto_0

    .line 98
    :pswitch_5
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;->eCLOCK_ITEM_TIME_MINUTES_ONES:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;

    goto :goto_0

    .line 100
    :pswitch_6
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;->eCLOCK_ITEM_TIME_MINUTES_TENS:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;

    goto :goto_0

    .line 103
    :pswitch_7
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;->eCLOCK_ITEM_TIME_HOURS:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;

    goto :goto_0

    .line 105
    :pswitch_8
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;->eCLOCK_ITEM_TIME_HOURS_ONES:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;

    goto :goto_0

    .line 107
    :pswitch_9
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;->eCLOCK_ITEM_TIME_HOURS_TENS:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;

    goto :goto_0

    .line 109
    :pswitch_a
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;->eCLOCK_ITEM_TIME_HOURS_PARTIAL:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;

    goto :goto_0

    .line 112
    :pswitch_b
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;->eCLOCK_ITEM_TIME_AMPM:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;

    goto :goto_0

    .line 115
    :pswitch_c
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;->eCLOCK_ITEM_DATE_DAY_OF_WEEK:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;

    goto :goto_0

    .line 117
    :pswitch_d
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;->eCLOCK_ITEM_DATE_DAY:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;

    goto :goto_0

    .line 119
    :pswitch_e
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;->eCLOCK_ITEM_DATE_DAY_ONES:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;

    goto :goto_0

    .line 121
    :pswitch_f
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;->eCLOCK_ITEM_DATE_DAY_TENS:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;

    goto :goto_0

    .line 123
    :pswitch_10
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;->eCLOCK_ITEM_DATE_YEARDAY:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;

    goto :goto_0

    .line 125
    :pswitch_11
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;->eCLOCK_ITEM_DATE_YEARDAY_HUNDREDS:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;

    goto :goto_0

    .line 127
    :pswitch_12
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;->eCLOCK_ITEM_DATE_YEARDAY_TENS:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;

    goto :goto_0

    .line 129
    :pswitch_13
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;->eCLOCK_ITEM_DATE_YEARDAY_ONES:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;

    goto :goto_0

    .line 132
    :pswitch_14
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;->eCLOCK_ITEM_DATE_MONTH:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;

    goto :goto_0

    .line 134
    :pswitch_15
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;->eCLOCK_ITEM_DATE_MONTH_ONES:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;

    goto :goto_0

    .line 136
    :pswitch_16
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;->eCLOCK_ITEM_DATE_MONTH_TENS:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;

    goto :goto_0

    .line 139
    :pswitch_17
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;->eCLOCK_ITEM_DATE_YEAR_ONES:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;

    goto :goto_0

    .line 141
    :pswitch_18
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;->eCLOCK_ITEM_DATE_YEAR_TENS:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;

    goto :goto_0

    .line 143
    :pswitch_19
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;->eCLOCK_ITEM_DATE_YEAR_HUNDREDS:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;

    goto :goto_0

    .line 145
    :pswitch_1a
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;->eCLOCK_ITEM_DATE_YEAR_THOUSANDS:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
    .end packed-switch
.end method

.method private getUpdateInterval(Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;)I
    .locals 2
    .param p1, "type"    # Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;

    .prologue
    .line 71
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeControl$1;->$SwitchMap$com$sonymobile$smartconnect$hostapp$protocol$ResourceClockItem$ClockItemTypes:[I

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 79
    const v0, 0xea60

    :goto_0
    return v0

    .line 73
    :pswitch_0
    const v0, 0x7fffffff

    goto :goto_0

    .line 77
    :pswitch_1
    const/16 v0, 0x3e8

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public allowUpdatesEverySecondInLowPowerMode(Z)V
    .locals 0
    .param p1, "allowSecondlyUpdates"    # Z

    .prologue
    .line 162
    invoke-super {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TextControl;->allowUpdatesEverySecondInLowPowerMode(Z)V

    .line 163
    return-void
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
    .line 35
    .local p2, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    .local p3, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p4, "subScreens":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeControl;->generateTouchControl(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 37
    iget-boolean v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeControl;->mIsDirty:Z

    if-eqz v1, :cond_0

    .line 38
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;

    invoke-direct {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;-><init>()V

    .line 39
    .local v0, "clockItem":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeControl;->mTimeView:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->getTimeType()Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeControl;->getItemType(Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;)Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;->setType(Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;)V

    .line 40
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeControl;->mTimeView:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->getTimeStateCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 41
    invoke-virtual {p0, p2, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeControl;->getPositionedCid(Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;->setCid(I)V

    .line 45
    :goto_0
    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeControl;->mClockItem:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;

    .line 46
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;->getType()Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeControl;->getUpdateInterval(Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeControl;->setUpdateInterval(I)V

    .line 48
    .end local v0    # "clockItem":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;
    :cond_0
    return-void

    .line 43
    .restart local v0    # "clockItem":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeControl;->getTargetColorMode()Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;

    move-result-object v1

    invoke-virtual {p1, p2, p0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->getImageRange(Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeControl;Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;->setCid(I)V

    goto :goto_0
.end method

.method public getClockItem()Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeControl;->mClockItem:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;

    return-object v0
.end method

.method protected getTargetColorMode()Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;
    .locals 3

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeControl;->getTargetState()Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

    move-result-object v0

    .line 53
    .local v0, "state":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;
    iget-boolean v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeControl;->mIsSecondlyUpdatesAllowedInLpMode:Z

    if-nez v1, :cond_0

    .line 54
    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeControl$1;->$SwitchMap$com$sonymobile$smartconnect$hostapp$extensions$widget$TimeView$TimeType:[I

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeControl;->mTimeView:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->getTimeType()Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 67
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TextControl;->getTargetColorMode()Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;

    move-result-object v1

    :goto_1
    return-object v1

    .line 58
    :pswitch_0
    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeControl$1;->$SwitchMap$com$sonymobile$smartconnect$hostapp$costanza$uicontrol$WidgetControl$AccessoryState:[I

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 61
    :pswitch_1
    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;->Transparent:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;

    goto :goto_1

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 58
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getTimeView()Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeControl;->mTimeView:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;

    return-object v0
.end method
