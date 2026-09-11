.class public Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeLayout;
.super Landroid/widget/LinearLayout;
.source "TimeLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeLayout$Gravity;,
        Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeLayout$StyledAttribute;
    }
.end annotation


# instance fields
.field private mGravity:I

.field private mTimeOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeLayout;->setOrientation(I)V

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeLayout;->parseAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 57
    instance-of v0, p1, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;

    if-eqz v0, :cond_0

    .line 58
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    return-void

    .line 60
    :cond_0
    new-instance v0, Landroid/view/InflateException;

    const-string v1, "Only TimeViews are allowed as children in TimeLayout."

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeLayout;->mGravity:I

    return v0
.end method

.method public getTimeOffset()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeLayout;->mTimeOffset:I

    return v0
.end method

.method protected obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/content/res/TypedArray;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 41
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeLayout$StyledAttribute;->values()[Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeLayout$StyledAttribute;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/StyleHelper;->getStyledAttributes(Landroid/content/Context;[Ljava/lang/Enum;)[I

    move-result-object v0

    .line 42
    .local v0, "attrArray":[I
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, p2, v0, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    return-object v1
.end method

.method protected parseAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeLayout;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 48
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeLayout;->setGravity(I)V

    .line 49
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeLayout;->mTimeOffset:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    return-void

    .line 51
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method public setGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeLayout;->mGravity:I

    .line 73
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 74
    return-void
.end method
