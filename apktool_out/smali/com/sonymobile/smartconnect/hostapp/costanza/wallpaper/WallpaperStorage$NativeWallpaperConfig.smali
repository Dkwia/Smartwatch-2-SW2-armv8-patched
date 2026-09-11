.class public final enum Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;
.super Ljava/lang/Enum;
.source "WallpaperStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NativeWallpaperConfig"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;

.field public static final enum WALLPAPER_00:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;

.field public static final enum WALLPAPER_01:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;

.field public static final enum WALLPAPER_02:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;

.field public static final enum WALLPAPER_03:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;

.field public static final enum WALLPAPER_04:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;

.field public static final enum WALLPAPER_05:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;

.field public static final enum WALLPAPER_06:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;


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

    .line 47
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;

    const-string v1, "WALLPAPER_01"

    sget-object v3, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->WALLPAPER_01:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    const v4, 0x7f020064

    const v5, 0x7f0700c1

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;-><init>(Ljava/lang/String;ILcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;II)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;->WALLPAPER_01:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;

    .line 49
    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;

    const-string v4, "WALLPAPER_02"

    sget-object v6, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->WALLPAPER_02:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    const v7, 0x7f020065

    const v8, 0x7f0700c2

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;-><init>(Ljava/lang/String;ILcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;II)V

    sput-object v3, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;->WALLPAPER_02:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;

    .line 51
    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;

    const-string v4, "WALLPAPER_03"

    sget-object v6, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->WALLPAPER_03:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    const v7, 0x7f020066

    const v8, 0x7f0700c3

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;-><init>(Ljava/lang/String;ILcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;II)V

    sput-object v3, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;->WALLPAPER_03:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;

    .line 53
    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;

    const-string v4, "WALLPAPER_04"

    sget-object v6, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->WALLPAPER_04:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    const v7, 0x7f020067

    const v8, 0x7f0700c4

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;-><init>(Ljava/lang/String;ILcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;II)V

    sput-object v3, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;->WALLPAPER_04:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;

    .line 55
    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;

    const-string v4, "WALLPAPER_05"

    sget-object v6, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->WALLPAPER_05:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    const v7, 0x7f020068

    const v8, 0x7f0700c5

    move v5, v12

    invoke-direct/range {v3 .. v8}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;-><init>(Ljava/lang/String;ILcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;II)V

    sput-object v3, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;->WALLPAPER_05:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;

    .line 57
    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;

    const-string v4, "WALLPAPER_06"

    const/4 v5, 0x5

    sget-object v6, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->WALLPAPER_06:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    const v7, 0x7f020069

    const v8, 0x7f0700c6

    invoke-direct/range {v3 .. v8}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;-><init>(Ljava/lang/String;ILcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;II)V

    sput-object v3, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;->WALLPAPER_06:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;

    .line 59
    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;

    const-string v4, "WALLPAPER_00"

    const/4 v5, 0x6

    sget-object v6, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->WALLPAPER_00:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    const v7, 0x7f020063

    const v8, 0x7f0700c0

    invoke-direct/range {v3 .. v8}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;-><init>(Ljava/lang/String;ILcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;II)V

    sput-object v3, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;->WALLPAPER_00:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;

    .line 46
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;->WALLPAPER_01:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;->WALLPAPER_02:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;

    aput-object v1, v0, v9

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;->WALLPAPER_03:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;

    aput-object v1, v0, v10

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;->WALLPAPER_04:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;

    aput-object v1, v0, v11

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;->WALLPAPER_05:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;->WALLPAPER_06:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;->WALLPAPER_00:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;->$VALUES:[Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;

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
    .line 68
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;-><init>(Ljava/lang/String;ILcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;I)V

    .line 69
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
    .line 72
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;-><init>(Ljava/lang/String;ILcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;II)V

    .line 73
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
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 76
    iput p4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;->mPreviewResId:I

    .line 77
    invoke-static {p3}, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids;->get(Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;->mStandbyDefinitionCid:I

    .line 78
    iput p5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;->mNameResId:I

    .line 79
    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;

    .prologue
    .line 46
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;->mPreviewResId:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    const-class v0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;->$VALUES:[Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;

    invoke-virtual {v0}, [Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;

    return-object v0
.end method


# virtual methods
.method public getCid()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;->mStandbyDefinitionCid:I

    return v0
.end method

.method public getPreviewResId()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;->mPreviewResId:I

    return v0
.end method

.method public getTextResId()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;->mNameResId:I

    return v0
.end method
