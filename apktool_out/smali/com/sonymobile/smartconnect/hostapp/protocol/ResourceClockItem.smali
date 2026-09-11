.class public Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;
.super Ljava/lang/Object;
.source "ResourceClockItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$HorizontalAlignment;,
        Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$VerticalAlignment;,
        Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;
    }
.end annotation


# instance fields
.field private mCid:I

.field private mGroupAlignmentHorizontal:I

.field private mGroupAlignmentVertical:I

.field private mGroupBoxBottom:I

.field private mGroupBoxLeft:I

.field private mGroupBoxRight:I

.field private mGroupBoxTop:I

.field private mGroupItemCount:I

.field private mGroupTimeOffset:I

.field private mSpacing:I

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private extractHorizontalAlignment(I)I
    .locals 2
    .param p1, "gravity"    # I

    .prologue
    .line 113
    and-int/lit8 v0, p1, 0x7

    .line 114
    .local v0, "horizontalGravity":I
    sparse-switch v0, :sswitch_data_0

    .line 121
    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$HorizontalAlignment;->Left:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$HorizontalAlignment;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$HorizontalAlignment;->ordinal()I

    move-result v1

    :goto_0
    return v1

    .line 116
    :sswitch_0
    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$HorizontalAlignment;->Center:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$HorizontalAlignment;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$HorizontalAlignment;->ordinal()I

    move-result v1

    goto :goto_0

    .line 118
    :sswitch_1
    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$HorizontalAlignment;->Right:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$HorizontalAlignment;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$HorizontalAlignment;->ordinal()I

    move-result v1

    goto :goto_0

    .line 114
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method private extractVerticalAlignment(I)I
    .locals 2
    .param p1, "gravity"    # I

    .prologue
    .line 126
    and-int/lit8 v0, p1, 0x70

    .line 127
    .local v0, "verticalGravity":I
    sparse-switch v0, :sswitch_data_0

    .line 134
    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$VerticalAlignment;->Top:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$VerticalAlignment;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$VerticalAlignment;->ordinal()I

    move-result v1

    :goto_0
    return v1

    .line 129
    :sswitch_0
    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$VerticalAlignment;->Center:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$VerticalAlignment;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$VerticalAlignment;->ordinal()I

    move-result v1

    goto :goto_0

    .line 131
    :sswitch_1
    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$VerticalAlignment;->Bottom:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$VerticalAlignment;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$VerticalAlignment;->ordinal()I

    move-result v1

    goto :goto_0

    .line 127
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public getCid()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;->mCid:I

    return v0
.end method

.method public getGroupBoxBottom()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;->mGroupBoxBottom:I

    return v0
.end method

.method public getGroupBoxLeft()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;->mGroupBoxLeft:I

    return v0
.end method

.method public getGroupBoxRight()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;->mGroupBoxRight:I

    return v0
.end method

.method public getGroupBoxTop()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;->mGroupBoxTop:I

    return v0
.end method

.method public getGroupItemCount()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;->mGroupItemCount:I

    return v0
.end method

.method public getSpacing()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;->mSpacing:I

    return v0
.end method

.method public getType()Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;
    .locals 2

    .prologue
    .line 104
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;->values()[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;->mType:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public setAlignment(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;->extractHorizontalAlignment(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;->mGroupAlignmentHorizontal:I

    .line 109
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;->extractVerticalAlignment(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;->mGroupAlignmentVertical:I

    .line 110
    return-void
.end method

.method public setCid(I)V
    .locals 0
    .param p1, "cid"    # I

    .prologue
    .line 152
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;->mCid:I

    .line 153
    return-void
.end method

.method public setGroupBoxBottom(I)V
    .locals 0
    .param p1, "groupBoxBottom"    # I

    .prologue
    .line 184
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;->mGroupBoxBottom:I

    .line 185
    return-void
.end method

.method public setGroupBoxLeft(I)V
    .locals 0
    .param p1, "groupBoxLeft"    # I

    .prologue
    .line 160
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;->mGroupBoxLeft:I

    .line 161
    return-void
.end method

.method public setGroupBoxRight(I)V
    .locals 0
    .param p1, "groupBoxRight"    # I

    .prologue
    .line 176
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;->mGroupBoxRight:I

    .line 177
    return-void
.end method

.method public setGroupBoxTop(I)V
    .locals 0
    .param p1, "groupBoxTop"    # I

    .prologue
    .line 168
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;->mGroupBoxTop:I

    .line 169
    return-void
.end method

.method public setGroupItemCount(I)V
    .locals 0
    .param p1, "groupItemCount"    # I

    .prologue
    .line 192
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;->mGroupItemCount:I

    .line 193
    return-void
.end method

.method public setSpacing(I)V
    .locals 0
    .param p1, "spacing"    # I

    .prologue
    .line 200
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;->mSpacing:I

    .line 201
    return-void
.end method

.method public setTimeOffset(I)V
    .locals 0
    .param p1, "timeOffset"    # I

    .prologue
    .line 204
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;->mGroupTimeOffset:I

    .line 205
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 144
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;->mType:I

    .line 145
    return-void
.end method

.method public setType(Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;)V
    .locals 1
    .param p1, "type"    # Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;

    .prologue
    .line 140
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;->mType:I

    .line 141
    return-void
.end method
