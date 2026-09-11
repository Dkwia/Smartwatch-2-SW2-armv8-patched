.class public Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory;
.super Ljava/lang/Object;
.source "WidgetControlFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory$WidgetControlSetup;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mControlFactory:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;

.field private final mExtension:Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

.field private final mInflater:Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;

.field private final mWidget:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    .param p3, "inflater"    # Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;
    .param p4, "ext"    # Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .param p5, "w"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory;->mContext:Landroid/content/Context;

    .line 50
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, p2, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory;->mControlFactory:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;

    .line 51
    iput-object p3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory;->mInflater:Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;

    .line 52
    iput-object p4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory;->mExtension:Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .line 53
    iput-object p5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory;->mWidget:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    .line 54
    return-void
.end method

.method private getWidgetControl([Landroid/os/Parcelable;Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory$WidgetControlSetup;)Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;
    .locals 8
    .param p1, "extraLayoutData"    # [Landroid/os/Parcelable;
    .param p2, "setup"    # Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory$WidgetControlSetup;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory;->mInflater:Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;

    invoke-static {p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory$WidgetControlSetup;->access$100(Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory$WidgetControlSetup;)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v3}, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;->inflateView(I[Landroid/os/Parcelable;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 91
    .local v2, "widgetView":Landroid/view/View;
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;

    invoke-static {p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory$WidgetControlSetup;->access$100(Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory$WidgetControlSetup;)I

    move-result v1

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory;->mControlFactory:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory;->mExtension:Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getCid()I

    move-result v4

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory;->mWidget:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    invoke-virtual {v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getTag()I

    move-result v5

    invoke-static {p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory$WidgetControlSetup;->access$000(Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory$WidgetControlSetup;)Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

    move-result-object v6

    invoke-static {p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory$WidgetControlSetup;->access$200(Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory$WidgetControlSetup;)Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;-><init>(ILandroid/view/View;Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;IILcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)V

    return-object v0
.end method


# virtual methods
.method public createControlsFromLayouts(III[Landroid/os/Parcelable;)[Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;
    .locals 9
    .param p1, "defaultLayout"    # I
    .param p2, "lowPowerLayout"    # I
    .param p3, "offlineLayout"    # I
    .param p4, "extraLayoutData"    # [Landroid/os/Parcelable;

    .prologue
    const/4 v8, -0x1

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;->values()[Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

    move-result-object v4

    array-length v4, v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 59
    .local v0, "ctrlSetups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory$WidgetControlSetup;>;"
    new-instance v4, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory$WidgetControlSetup;

    sget-object v5, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;->DefaultOnline:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

    sget-object v6, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;->Color16Bit:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;

    invoke-direct {v4, v5, p1, v6}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory$WidgetControlSetup;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;ILcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    if-eq p3, v8, :cond_0

    new-instance v4, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory$WidgetControlSetup;

    sget-object v5, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;->DefaultOffline:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

    sget-object v6, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;->Color16Bit:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;

    invoke-direct {v4, v5, p3, v6}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory$WidgetControlSetup;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;ILcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)V

    :goto_0
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    if-eq p3, v8, :cond_1

    new-instance v4, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory$WidgetControlSetup;

    sget-object v5, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;->LowPowerOffline:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

    sget-object v6, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;->Grayscale3Bit:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;

    invoke-direct {v4, v5, p3, v6}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory$WidgetControlSetup;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;ILcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)V

    :goto_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v5, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory$WidgetControlSetup;

    sget-object v6, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;->LowPowerOnline:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

    if-eq p2, v8, :cond_3

    move v4, p2

    :goto_2
    sget-object v7, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;->Grayscale3Bit:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;

    invoke-direct {v5, v6, v4, v7}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory$WidgetControlSetup;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;ILcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v4, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory$WidgetControlSetup;

    sget-object v5, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;->NightLightOnline:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

    if-eq p2, v8, :cond_4

    .end local p2    # "lowPowerLayout":I
    :goto_3
    sget-object v6, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;->Color16Bit:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;

    invoke-direct {v4, v5, p2, v6}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory$WidgetControlSetup;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;ILcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;->values()[Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

    move-result-object v4

    array-length v4, v4

    new-array v1, v4, [Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;

    .line 79
    .local v1, "ctrls":[Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory$WidgetControlSetup;

    .line 80
    .local v3, "setup":Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory$WidgetControlSetup;
    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory$WidgetControlSetup;->access$000(Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory$WidgetControlSetup;)Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;->ordinal()I

    move-result v4

    invoke-direct {p0, p4, v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory;->getWidgetControl([Landroid/os/Parcelable;Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory$WidgetControlSetup;)Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;

    move-result-object v5

    aput-object v5, v1, v4

    goto :goto_4

    .line 60
    .end local v1    # "ctrls":[Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "setup":Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory$WidgetControlSetup;
    .restart local p2    # "lowPowerLayout":I
    :cond_0
    new-instance v4, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory$WidgetControlSetup;

    sget-object v5, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;->DefaultOffline:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

    sget-object v6, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;->BlackAndGray8Bit:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;

    invoke-direct {v4, v5, p1, v6}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory$WidgetControlSetup;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;ILcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)V

    goto :goto_0

    .line 63
    :cond_1
    new-instance v5, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory$WidgetControlSetup;

    sget-object v6, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;->LowPowerOffline:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

    if-eq p2, v8, :cond_2

    move v4, p2

    :goto_5
    sget-object v7, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;->BlackAndGray1Bit:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;

    invoke-direct {v5, v6, v4, v7}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory$WidgetControlSetup;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;ILcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)V

    move-object v4, v5

    goto :goto_1

    :cond_2
    move v4, p1

    goto :goto_5

    :cond_3
    move v4, p1

    .line 68
    goto :goto_2

    :cond_4
    move p2, p1

    .line 72
    goto :goto_3

    .line 83
    .end local p2    # "lowPowerLayout":I
    .restart local v1    # "ctrls":[Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_5
    return-object v1
.end method
