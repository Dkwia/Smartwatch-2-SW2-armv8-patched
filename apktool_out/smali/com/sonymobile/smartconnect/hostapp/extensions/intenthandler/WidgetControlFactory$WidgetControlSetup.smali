.class Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory$WidgetControlSetup;
.super Ljava/lang/Object;
.source "WidgetControlFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WidgetControlSetup"
.end annotation


# instance fields
.field private final mAccessoryState:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

.field private final mColorMode:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;

.field private final mLayoutId:I


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;ILcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)V
    .locals 0
    .param p1, "accessoryState"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;
    .param p2, "layoutId"    # I
    .param p3, "colorMode"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory$WidgetControlSetup;->mAccessoryState:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

    .line 35
    iput p2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory$WidgetControlSetup;->mLayoutId:I

    .line 36
    iput-object p3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory$WidgetControlSetup;->mColorMode:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory$WidgetControlSetup;)Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory$WidgetControlSetup;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory$WidgetControlSetup;->mAccessoryState:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory$WidgetControlSetup;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory$WidgetControlSetup;

    .prologue
    .line 27
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory$WidgetControlSetup;->mLayoutId:I

    return v0
.end method

.method static synthetic access$200(Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory$WidgetControlSetup;)Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory$WidgetControlSetup;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory$WidgetControlSetup;->mColorMode:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;

    return-object v0
.end method
