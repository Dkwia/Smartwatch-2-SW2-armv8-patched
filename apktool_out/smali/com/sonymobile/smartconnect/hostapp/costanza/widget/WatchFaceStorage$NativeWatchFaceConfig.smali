.class public final enum Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;
.super Ljava/lang/Enum;
.source "WatchFaceStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NativeWatchFaceConfig"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

.field public static final enum ANALOGUE1_BLACK:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

.field public static final enum ANALOGUE1_WHITE:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

.field public static final enum ANALOGUE2_BLACK:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

.field public static final enum ANALOGUE2_WHITE:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

.field public static final enum ANALOGUE3:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

.field public static final enum ANALOGUE4:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

.field public static final enum ANALOGUE5:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

.field public static final enum ANALOGUE6:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

.field public static final enum ANALOGUE7:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

.field public static final enum DIGITAL1:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

.field public static final enum DIGITAL2:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

.field public static final enum DIGITAL3:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

.field public static final enum DIGITAL4:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

.field public static final enum HERO:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;


# instance fields
.field private final mNameResId:I

.field private final mPreviewResId:I

.field private final mStandbyDefinitionCid:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 50
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

    const-string v1, "HERO"

    sget-object v3, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->STANDBY_APP_HERO:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    const v4, 0x7f0200a6

    const v5, 0x7f0700ad

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;-><init>(Ljava/lang/String;ILcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;II)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;->HERO:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

    .line 52
    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

    const-string v4, "DIGITAL1"

    sget-object v6, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->STANDBY_APP_DIGITAL1:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    const v7, 0x7f0200a7

    const v8, 0x7f0700ae

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;-><init>(Ljava/lang/String;ILcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;II)V

    sput-object v3, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;->DIGITAL1:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

    .line 54
    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

    const-string v4, "DIGITAL2"

    sget-object v6, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->STANDBY_APP_DIGITAL2:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    const v7, 0x7f0200a8

    const v8, 0x7f0700af

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;-><init>(Ljava/lang/String;ILcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;II)V

    sput-object v3, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;->DIGITAL2:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

    .line 56
    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

    const-string v4, "ANALOGUE1_BLACK"

    sget-object v6, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->STANDBY_APP_ANALOGUE1_BLACK:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    const v7, 0x7f02009d

    const v8, 0x7f0700b0

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;-><init>(Ljava/lang/String;ILcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;II)V

    sput-object v3, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;->ANALOGUE1_BLACK:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

    .line 59
    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

    const-string v4, "ANALOGUE1_WHITE"

    sget-object v6, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->STANDBY_APP_ANALOGUE1_WHITE:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    const v7, 0x7f02009e

    const v8, 0x7f0700b1

    move v5, v12

    invoke-direct/range {v3 .. v8}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;-><init>(Ljava/lang/String;ILcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;II)V

    sput-object v3, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;->ANALOGUE1_WHITE:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

    .line 62
    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

    const-string v4, "ANALOGUE2_BLACK"

    const/4 v5, 0x5

    sget-object v6, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->STANDBY_APP_ANALOGUE2_BLACK:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    const v7, 0x7f02009f

    const v8, 0x7f0700b2

    invoke-direct/range {v3 .. v8}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;-><init>(Ljava/lang/String;ILcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;II)V

    sput-object v3, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;->ANALOGUE2_BLACK:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

    .line 65
    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

    const-string v4, "ANALOGUE2_WHITE"

    const/4 v5, 0x6

    sget-object v6, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->STANDBY_APP_ANALOGUE2_WHITE:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    const v7, 0x7f0200a0

    const v8, 0x7f0700b3

    invoke-direct/range {v3 .. v8}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;-><init>(Ljava/lang/String;ILcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;II)V

    sput-object v3, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;->ANALOGUE2_WHITE:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

    .line 68
    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

    const-string v4, "ANALOGUE3"

    const/4 v5, 0x7

    sget-object v6, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->STANDBY_APP_ANALOGUE3:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    const v7, 0x7f0200a1

    const v8, 0x7f0700b4

    invoke-direct/range {v3 .. v8}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;-><init>(Ljava/lang/String;ILcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;II)V

    sput-object v3, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;->ANALOGUE3:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

    .line 70
    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

    const-string v4, "ANALOGUE4"

    const/16 v5, 0x8

    sget-object v6, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->STANDBY_APP_ANALOGUE4:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    const v7, 0x7f0200a2

    const v8, 0x7f0700b5

    invoke-direct/range {v3 .. v8}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;-><init>(Ljava/lang/String;ILcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;II)V

    sput-object v3, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;->ANALOGUE4:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

    .line 72
    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

    const-string v4, "ANALOGUE5"

    const/16 v5, 0x9

    sget-object v6, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->STANDBY_APP_ANALOGUE5:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    const v7, 0x7f0200a3

    const v8, 0x7f0700b6

    invoke-direct/range {v3 .. v8}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;-><init>(Ljava/lang/String;ILcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;II)V

    sput-object v3, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;->ANALOGUE5:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

    .line 74
    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

    const-string v4, "ANALOGUE6"

    const/16 v5, 0xa

    sget-object v6, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->STANDBY_APP_ANALOGUE6:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    const v7, 0x7f0200a4

    const v8, 0x7f0700d5

    invoke-direct/range {v3 .. v8}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;-><init>(Ljava/lang/String;ILcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;II)V

    sput-object v3, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;->ANALOGUE6:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

    .line 76
    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

    const-string v4, "DIGITAL3"

    const/16 v5, 0xb

    sget-object v6, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->STANDBY_APP_DIGITAL_YELLOW:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    const v7, 0x7f0200a9

    const v8, 0x7f0700d6

    invoke-direct/range {v3 .. v8}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;-><init>(Ljava/lang/String;ILcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;II)V

    sput-object v3, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;->DIGITAL3:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

    .line 78
    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

    const-string v4, "ANALOGUE7"

    const/16 v5, 0xc

    sget-object v6, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->STANDBY_APP_ANALOGUE7:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    const v7, 0x7f0200a5

    const v8, 0x7f0700d7

    invoke-direct/range {v3 .. v8}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;-><init>(Ljava/lang/String;ILcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;II)V

    sput-object v3, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;->ANALOGUE7:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

    .line 80
    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

    const-string v4, "DIGITAL4"

    const/16 v5, 0xd

    sget-object v6, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->STANDBY_APP_DIGITAL_PINK:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    const v7, 0x7f0200aa

    const v8, 0x7f0700d8

    invoke-direct/range {v3 .. v8}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;-><init>(Ljava/lang/String;ILcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;II)V

    sput-object v3, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;->DIGITAL4:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

    .line 49
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;->HERO:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;->DIGITAL1:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

    aput-object v1, v0, v9

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;->DIGITAL2:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

    aput-object v1, v0, v10

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;->ANALOGUE1_BLACK:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

    aput-object v1, v0, v11

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;->ANALOGUE1_WHITE:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;->ANALOGUE2_BLACK:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;->ANALOGUE2_WHITE:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;->ANALOGUE3:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;->ANALOGUE4:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;->ANALOGUE5:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;->ANALOGUE6:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;->DIGITAL3:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;->ANALOGUE7:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;->DIGITAL4:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;->$VALUES:[Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;)V
    .locals 1
    .param p3, "defCidKey"    # Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;",
            ")V"
        }
    .end annotation

    .prologue
    .line 88
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;-><init>(Ljava/lang/String;ILcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;I)V

    .line 89
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;I)V
    .locals 6
    .param p3, "defCidKey"    # Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;
    .param p4, "previewResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 92
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;-><init>(Ljava/lang/String;ILcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;II)V

    .line 93
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;II)V
    .locals 1
    .param p3, "cidKey"    # Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;
    .param p4, "previewResId"    # I
    .param p5, "nameResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 96
    iput p4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;->mPreviewResId:I

    .line 97
    invoke-static {p3}, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids;->get(Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;->mStandbyDefinitionCid:I

    .line 98
    iput p5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;->mNameResId:I

    .line 99
    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

    .prologue
    .line 49
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;->mPreviewResId:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 49
    const-class v0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;->$VALUES:[Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

    invoke-virtual {v0}, [Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

    return-object v0
.end method


# virtual methods
.method public getCid()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;->mStandbyDefinitionCid:I

    return v0
.end method

.method public getPreviewResId()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;->mPreviewResId:I

    return v0
.end method

.method public getTextResId()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;->mNameResId:I

    return v0
.end method
