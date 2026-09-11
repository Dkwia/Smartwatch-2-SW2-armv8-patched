.class public Lcom/sonyericsson/extras/liveware/aef/widget/TimeLayout;
.super Landroid/widget/LinearLayout;
.source "TimeLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/extras/liveware/aef/widget/TimeLayout$Gravity;
    }
.end annotation


# instance fields
.field private mGravity:I

.field private mTimeOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    invoke-virtual {p0, v3}, Lcom/sonyericsson/extras/liveware/aef/widget/TimeLayout;->setOrientation(I)V

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/extras/liveware/sdk/R$styleable;->TimeLayout:[I

    invoke-virtual {v1, p2, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 69
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v1, Lcom/sonyericsson/extras/liveware/sdk/R$styleable;->TimeLayout_gravity:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/extras/liveware/aef/widget/TimeLayout;->setGravity(I)V

    .line 70
    sget v1, Lcom/sonyericsson/extras/liveware/sdk/R$styleable;->TimeLayout_timeOffset:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeLayout;->mTimeOffset:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    return-void

    .line 72
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method


# virtual methods
.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 78
    instance-of v0, p1, Lcom/sonyericsson/extras/liveware/aef/widget/TimeView;

    if-eqz v0, :cond_0

    .line 79
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    return-void

    .line 81
    :cond_0
    new-instance v0, Landroid/view/InflateException;

    const-string v1, "Only TimeViews are allowed as children in TimeLayout."

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeLayout;->mGravity:I

    return v0
.end method

.method public getTimeOffset()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeLayout;->mTimeOffset:I

    return v0
.end method

.method public setGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/sonyericsson/extras/liveware/aef/widget/TimeLayout;->mGravity:I

    .line 94
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 95
    return-void
.end method
