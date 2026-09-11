.class Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$FontCache;
.super Ljava/lang/Object;
.source "TimeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/extras/liveware/aef/widget/TimeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FontCache"
.end annotation


# instance fields
.field private final fontMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$FontCache;->fontMap:Ljava/util/HashMap;

    .line 84
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$1;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$FontCache;-><init>()V

    return-void
.end method


# virtual methods
.method public getFont(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "fontPath"    # Ljava/lang/String;

    .prologue
    .line 87
    iget-object v1, p0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$FontCache;->fontMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    .line 88
    .local v0, "typeface":Landroid/graphics/Typeface;
    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView$FontCache;->fontMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_0
    return-object v0
.end method
