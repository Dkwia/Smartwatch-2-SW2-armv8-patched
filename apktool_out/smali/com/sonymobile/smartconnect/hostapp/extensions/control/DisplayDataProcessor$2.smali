.class synthetic Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor$2;
.super Ljava/lang/Object;
.source "DisplayDataProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonymobile$smartconnect$hostapp$extensions$LayoutData$DeviceScreenTranslation:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 99
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->values()[Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor$2;->$SwitchMap$com$sonymobile$smartconnect$hostapp$extensions$LayoutData$DeviceScreenTranslation:[I

    :try_start_0
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor$2;->$SwitchMap$com$sonymobile$smartconnect$hostapp$extensions$LayoutData$DeviceScreenTranslation:[I

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->NEWMAN_TO_COSTANZA:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
