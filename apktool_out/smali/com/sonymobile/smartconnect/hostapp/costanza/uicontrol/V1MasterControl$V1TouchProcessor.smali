.class Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$V1TouchProcessor;
.super Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$BaseTouchProcessor;
.source "V1MasterControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "V1TouchProcessor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;


# direct methods
.method private constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$V1TouchProcessor;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;

    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$BaseTouchProcessor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;
    .param p2, "x1"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$1;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$V1TouchProcessor;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;)V

    return-void
.end method


# virtual methods
.method protected onTouch(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;IIJ)V
    .locals 10
    .param p1, "action"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "timestamp"    # J

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 75
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$V1TouchProcessor;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;->access$100(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;)Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->NEWMAN_TO_COSTANZA:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    if-ne v0, v1, :cond_0

    .line 80
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;->Release:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

    if-ne p1, v0, :cond_5

    .line 81
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$V1TouchProcessor;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;->access$100(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;)Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    move-result-object v0

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->leftX:I

    if-ge p2, v0, :cond_4

    .line 82
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$V1TouchProcessor;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;->access$100(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;)Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    move-result-object v0

    iget p2, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->leftX:I

    .line 97
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$V1TouchProcessor;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;->getRectangle()Landroid/graphics/Rect;

    move-result-object v6

    .line 98
    .local v6, "r":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$V1TouchProcessor;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;->access$100(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;)Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    move-result-object v0

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->sourceWidth:I

    int-to-float v0, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float v7, v0, v1

    .line 99
    .local v7, "scaleFactorX":F
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$V1TouchProcessor;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;->access$100(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;)Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    move-result-object v0

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->sourceHeight:I

    int-to-float v0, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float v8, v0, v1

    .line 101
    .local v8, "scaleFactorY":F
    iget v0, v6, Landroid/graphics/Rect;->left:I

    sub-int v0, p2, v0

    int-to-float v0, v0

    mul-float/2addr v0, v7

    float-to-int v2, v0

    .line 102
    .local v2, "translatedX":I
    iget v0, v6, Landroid/graphics/Rect;->top:I

    sub-int v0, p3, v0

    int-to-float v0, v0

    mul-float/2addr v0, v8

    float-to-int v3, v0

    .line 104
    .local v3, "translatedY":I
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Touch translated x: %d."

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v5

    invoke-static {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    :cond_1
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Touch translated y: %d."

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v5

    invoke-static {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-wide v4, p4

    .line 107
    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$V1TouchProcessor;->notifyTouchEvent(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;IIJ)V

    .line 108
    .end local v2    # "translatedX":I
    .end local v3    # "translatedY":I
    .end local v6    # "r":Landroid/graphics/Rect;
    .end local v7    # "scaleFactorX":F
    .end local v8    # "scaleFactorY":F
    :cond_3
    :goto_1
    return-void

    .line 83
    :cond_4
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$V1TouchProcessor;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;->access$100(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;)Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    move-result-object v0

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->rightX:I

    if-le p2, v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$V1TouchProcessor;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;->access$100(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;)Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    move-result-object v0

    iget p2, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->rightX:I

    goto :goto_0

    .line 87
    :cond_5
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$V1TouchProcessor;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;->access$100(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;)Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    move-result-object v0

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->leftX:I

    if-lt p2, v0, :cond_6

    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$V1TouchProcessor;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;->access$100(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;)Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    move-result-object v0

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->rightX:I

    if-le p2, v0, :cond_0

    .line 88
    :cond_6
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Ignored touch, outside valid region."

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    goto :goto_1
.end method
