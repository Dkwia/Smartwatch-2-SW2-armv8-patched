.class public final enum Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;
.super Ljava/lang/Enum;
.source "TimeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/extras/liveware/aef/widget/TimeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TimeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

.field public static final enum AmPm:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

.field public static final enum Constant:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

.field public static final enum DaysOfMonth:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

.field public static final enum DaysOfMonthDigit1:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

.field public static final enum DaysOfMonthDigit2:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

.field public static final enum DaysOfWeek:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

.field public static final enum DaysOfYear:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

.field public static final enum DaysOfYearDigit1:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

.field public static final enum DaysOfYearDigit2:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

.field public static final enum DaysOfYearDigit3:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

.field public static final enum Hours:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

.field public static final enum HoursDigit1:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

.field public static final enum HoursDigit2:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

.field public static final enum HoursFine:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

.field public static final enum Minutes:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

.field public static final enum MinutesDigit1:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

.field public static final enum MinutesDigit2:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

.field public static final enum Months:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

.field public static final enum MonthsDigit1:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

.field public static final enum MonthsDigit2:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

.field public static final enum Seconds:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

.field public static final enum SecondsDigit1:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

.field public static final enum SecondsDigit2:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

.field public static final enum YearsDigit1:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

.field public static final enum YearsDigit2:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

.field public static final enum YearsDigit3:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

.field public static final enum YearsDigit4:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 101
    new-instance v0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    const-string v1, "Constant"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;->Constant:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    .line 102
    new-instance v0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    const-string v1, "Seconds"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;->Seconds:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    .line 103
    new-instance v0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    const-string v1, "SecondsDigit2"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;->SecondsDigit2:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    .line 104
    new-instance v0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    const-string v1, "SecondsDigit1"

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;->SecondsDigit1:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    .line 105
    new-instance v0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    const-string v1, "Minutes"

    invoke-direct {v0, v1, v7}, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;->Minutes:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    .line 106
    new-instance v0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    const-string v1, "MinutesDigit2"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;->MinutesDigit2:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    .line 107
    new-instance v0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    const-string v1, "MinutesDigit1"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;->MinutesDigit1:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    .line 108
    new-instance v0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    const-string v1, "Hours"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;->Hours:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    .line 109
    new-instance v0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    const-string v1, "HoursDigit2"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;->HoursDigit2:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    .line 110
    new-instance v0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    const-string v1, "HoursDigit1"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;->HoursDigit1:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    .line 111
    new-instance v0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    const-string v1, "DaysOfWeek"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;->DaysOfWeek:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    .line 112
    new-instance v0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    const-string v1, "DaysOfMonth"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;->DaysOfMonth:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    .line 113
    new-instance v0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    const-string v1, "DaysOfMonthDigit2"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;->DaysOfMonthDigit2:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    .line 114
    new-instance v0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    const-string v1, "DaysOfMonthDigit1"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;->DaysOfMonthDigit1:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    .line 115
    new-instance v0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    const-string v1, "DaysOfYear"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;->DaysOfYear:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    .line 116
    new-instance v0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    const-string v1, "DaysOfYearDigit3"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;->DaysOfYearDigit3:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    .line 117
    new-instance v0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    const-string v1, "DaysOfYearDigit2"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;->DaysOfYearDigit2:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    .line 118
    new-instance v0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    const-string v1, "DaysOfYearDigit1"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;->DaysOfYearDigit1:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    .line 119
    new-instance v0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    const-string v1, "Months"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;->Months:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    .line 120
    new-instance v0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    const-string v1, "MonthsDigit2"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;->MonthsDigit2:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    .line 121
    new-instance v0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    const-string v1, "MonthsDigit1"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;->MonthsDigit1:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    .line 122
    new-instance v0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    const-string v1, "YearsDigit4"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;->YearsDigit4:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    .line 123
    new-instance v0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    const-string v1, "YearsDigit3"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;->YearsDigit3:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    .line 124
    new-instance v0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    const-string v1, "YearsDigit2"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;->YearsDigit2:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    .line 125
    new-instance v0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    const-string v1, "YearsDigit1"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;->YearsDigit1:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    .line 126
    new-instance v0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    const-string v1, "AmPm"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;->AmPm:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    .line 127
    new-instance v0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    const-string v1, "HoursFine"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;->HoursFine:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    .line 100
    const/16 v0, 0x1b

    new-array v0, v0, [Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    sget-object v1, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;->Constant:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;->Seconds:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;->SecondsDigit2:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;->SecondsDigit1:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;->Minutes:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;->MinutesDigit2:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;->MinutesDigit1:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;->Hours:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;->HoursDigit2:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;->HoursDigit1:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;->DaysOfWeek:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;->DaysOfMonth:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;->DaysOfMonthDigit2:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;->DaysOfMonthDigit1:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;->DaysOfYear:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;->DaysOfYearDigit3:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;->DaysOfYearDigit2:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;->DaysOfYearDigit1:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;->Months:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;->MonthsDigit2:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;->MonthsDigit1:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;->YearsDigit4:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;->YearsDigit3:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;->YearsDigit2:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;->YearsDigit1:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;->AmPm:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;->HoursFine:Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;->$VALUES:[Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 100
    const-class v0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;->$VALUES:[Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    invoke-virtual {v0}, [Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$TimeType;

    return-object v0
.end method
