.class public Lcom/sonymobile/smartconnect/hostapp/util/UIUtils;
.super Ljava/lang/Object;
.source "UIUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAbsoluteLeft(Landroid/view/View;)I
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 42
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/View;

    if-nez v2, :cond_0

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 49
    :goto_0
    return v2

    :cond_0
    move-object v1, v0

    .line 45
    check-cast v1, Landroid/view/View;

    .line 46
    .local v1, "parentView":Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/util/UIUtils;->getAbsoluteLeft(Landroid/view/View;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0
.end method

.method public static getAbsoluteTop(Landroid/view/View;)I
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 29
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/View;

    if-nez v2, :cond_0

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    .line 36
    :goto_0
    return v2

    :cond_0
    move-object v1, v0

    .line 32
    check-cast v1, Landroid/view/View;

    .line 33
    .local v1, "parentView":Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/util/UIUtils;->getAbsoluteTop(Landroid/view/View;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0
.end method

.method public static getBundleArray(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Bundle;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/util/UIUtils;->getBundleArray([Landroid/os/Parcelable;)[Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static getBundleArray([Landroid/os/Parcelable;)[Landroid/os/Bundle;
    .locals 3
    .param p0, "parcelableList"    # [Landroid/os/Parcelable;

    .prologue
    const/4 v2, 0x0

    .line 19
    const/4 v0, 0x0

    .line 20
    .local v0, "bundleList":[Landroid/os/Bundle;
    if-eqz p0, :cond_0

    array-length v1, p0

    if-lez v1, :cond_0

    .line 21
    array-length v1, p0

    new-array v0, v1, [Landroid/os/Bundle;

    .line 22
    array-length v1, v0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    :cond_0
    return-object v0
.end method
