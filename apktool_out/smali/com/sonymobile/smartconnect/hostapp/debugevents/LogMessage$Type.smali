.class public final enum Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;
.super Ljava/lang/Enum;
.source "LogMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;

.field public static final enum COMMAND:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;

.field public static final enum DUMP:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;

.field public static final enum ERROR:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;

.field public static final enum FATAL:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;

.field public static final enum INFO:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;


# instance fields
.field private final mResId:I

.field private final mTypeCh:C

.field private final mTypeId:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;

    const-string v1, "INFO"

    const/16 v4, 0x49

    const v5, 0x7f020080

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;-><init>(Ljava/lang/String;IICI)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;->INFO:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;

    .line 43
    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;

    const-string v4, "ERROR"

    const/16 v7, 0x45

    const v8, 0x7f02004f

    move v5, v9

    move v6, v9

    invoke-direct/range {v3 .. v8}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;-><init>(Ljava/lang/String;IICI)V

    sput-object v3, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;->ERROR:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;

    .line 49
    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;

    const-string v4, "FATAL"

    const/16 v7, 0x46

    const v8, 0x7f020050

    move v5, v10

    move v6, v10

    invoke-direct/range {v3 .. v8}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;-><init>(Ljava/lang/String;IICI)V

    sput-object v3, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;->FATAL:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;

    .line 55
    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;

    const-string v4, "COMMAND"

    const/16 v7, 0x43

    const v8, 0x7f020021

    move v5, v11

    move v6, v11

    invoke-direct/range {v3 .. v8}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;-><init>(Ljava/lang/String;IICI)V

    sput-object v3, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;->COMMAND:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;

    .line 61
    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;

    const-string v4, "DUMP"

    const/16 v7, 0x44

    const v8, 0x7f02004d

    move v5, v12

    move v6, v12

    invoke-direct/range {v3 .. v8}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;-><init>(Ljava/lang/String;IICI)V

    sput-object v3, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;->DUMP:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;

    .line 33
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;->INFO:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;->ERROR:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;

    aput-object v1, v0, v9

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;->FATAL:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;

    aput-object v1, v0, v10

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;->COMMAND:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;

    aput-object v1, v0, v11

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;->DUMP:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;

    aput-object v1, v0, v12

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;->$VALUES:[Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IICI)V
    .locals 0
    .param p3, "id"    # I
    .param p4, "ch"    # C
    .param p5, "res"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ICI)V"
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 90
    iput p3, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;->mTypeId:I

    .line 91
    iput-char p4, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;->mTypeCh:C

    .line 92
    iput p5, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;->mResId:I

    .line 93
    return-void
.end method

.method public static getTypeForId(I)Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;
    .locals 7
    .param p0, "id"    # I

    .prologue
    .line 70
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;->values()[Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 71
    .local v3, "t":Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;
    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;->getTypeId()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 72
    return-object v3

    .line 70
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    .end local v3    # "t":Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown Type id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-class v0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;->$VALUES:[Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;

    invoke-virtual {v0}, [Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;

    return-object v0
.end method


# virtual methods
.method public getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;->mResId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getTypeChar()C
    .locals 1

    .prologue
    .line 113
    iget-char v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;->mTypeCh:C

    return v0
.end method

.method public getTypeId()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;->mTypeId:I

    return v0
.end method
