.class Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$TouchResourceHasher;
.super Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$ControlResourceHasher;
.source "ControlResourceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchResourceHasher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider;Landroid/graphics/Rect;I)V
    .locals 0
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "key"    # I

    .prologue
    .line 70
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$TouchResourceHasher;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider;

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$ControlResourceHasher;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider;Landroid/graphics/Rect;I)V

    .line 72
    return-void
.end method
