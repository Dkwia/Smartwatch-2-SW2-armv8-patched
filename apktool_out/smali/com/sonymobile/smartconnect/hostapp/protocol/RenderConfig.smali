.class public Lcom/sonymobile/smartconnect/hostapp/protocol/RenderConfig;
.super Ljava/lang/Object;
.source "RenderConfig.java"


# static fields
.field public static RENDER_MODE_OFFLINE_LOW_POWER:I

.field public static RENDER_MODE_OFFLINE_NORMAL_POWER_NO_TOUCH:I

.field public static RENDER_MODE_ONLINE_LOW_POWER:I

.field public static RENDER_MODE_ONLINE_NORMAL_POWER:I

.field public static RENDER_MODE_ONLINE_NORMAL_POWER_NO_TOUCH:I


# instance fields
.field private final mDisplayCid:I

.field private final mDisplayMode:I

.field private final mUpdateInterval:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x1

    sput v0, Lcom/sonymobile/smartconnect/hostapp/protocol/RenderConfig;->RENDER_MODE_ONLINE_NORMAL_POWER:I

    .line 20
    const/4 v0, 0x2

    sput v0, Lcom/sonymobile/smartconnect/hostapp/protocol/RenderConfig;->RENDER_MODE_ONLINE_NORMAL_POWER_NO_TOUCH:I

    .line 21
    const/4 v0, 0x4

    sput v0, Lcom/sonymobile/smartconnect/hostapp/protocol/RenderConfig;->RENDER_MODE_ONLINE_LOW_POWER:I

    .line 23
    const/16 v0, 0x10

    sput v0, Lcom/sonymobile/smartconnect/hostapp/protocol/RenderConfig;->RENDER_MODE_OFFLINE_NORMAL_POWER_NO_TOUCH:I

    .line 24
    const/16 v0, 0x20

    sput v0, Lcom/sonymobile/smartconnect/hostapp/protocol/RenderConfig;->RENDER_MODE_OFFLINE_LOW_POWER:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "displayCid"    # I
    .param p2, "displayMode"    # I
    .param p3, "updateInterval"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RenderConfig;->mDisplayCid:I

    .line 32
    iput p2, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RenderConfig;->mDisplayMode:I

    .line 33
    iput p3, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RenderConfig;->mUpdateInterval:I

    .line 34
    return-void
.end method
