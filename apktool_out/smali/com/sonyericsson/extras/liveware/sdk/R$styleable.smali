.class public final Lcom/sonyericsson/extras/liveware/sdk/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/extras/liveware/sdk/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final TimeLayout:[I

.field public static final TimeLayout_gravity:I = 0x0

.field public static final TimeLayout_timeOffset:I = 0x1

.field public static final TimeView:[I

.field public static final TimeView_fontPath:I = 0x4

.field public static final TimeView_template:I = 0x3

.field public static final TimeView_textArray:I = 0x1

.field public static final TimeView_textSize:I = 0x0

.field public static final TimeView_timeType:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonyericsson/extras/liveware/sdk/R$styleable;->TimeLayout:[I

    .line 63
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sonyericsson/extras/liveware/sdk/R$styleable;->TimeView:[I

    return-void

    .line 60
    nop

    :array_0
    .array-data 4
        0x7f010000
        0x7f010001
    .end array-data

    .line 63
    :array_1
    .array-data 4
        0x7f010002
        0x7f010003
        0x7f010004
        0x7f010005
        0x7f010006
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
