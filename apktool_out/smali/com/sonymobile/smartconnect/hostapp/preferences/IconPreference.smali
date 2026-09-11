.class public Lcom/sonymobile/smartconnect/hostapp/preferences/IconPreference;
.super Landroid/preference/Preference;
.source "IconPreference.java"


# static fields
.field private static final XMLNS:Ljava/lang/String; = "http://schemas.android.com/apk/res/com.sonymobile.smartconnect.smartwatch2"


# instance fields
.field private mAlternativeLink:Ljava/lang/String;

.field private mFilter:Ljava/lang/String;

.field private mIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/IconPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/IconPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    const v1, 0x7f030024

    invoke-virtual {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/IconPreference;->setLayoutResource(I)V

    .line 53
    if-eqz p2, :cond_0

    .line 54
    const-string v1, "http://schemas.android.com/apk/res/com.sonymobile.smartconnect.smartwatch2"

    const-string v2, "icon"

    const/4 v3, 0x0

    invoke-interface {p2, v1, v2, v3}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 55
    .local v0, "iconResId":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/IconPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 56
    const-string v1, "http://schemas.android.com/apk/res/com.sonymobile.smartconnect.smartwatch2"

    const-string v2, "filter"

    invoke-interface {p2, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/IconPreference;->mFilter:Ljava/lang/String;

    .line 57
    const-string v1, "http://schemas.android.com/apk/res/com.sonymobile.smartconnect.smartwatch2"

    const-string v2, "altLink"

    invoke-interface {p2, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/IconPreference;->mAlternativeLink:Ljava/lang/String;

    .line 59
    .end local v0    # "iconResId":I
    :cond_0
    return-void
.end method


# virtual methods
.method public getAlternativeLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/IconPreference;->mAlternativeLink:Ljava/lang/String;

    return-object v0
.end method

.method public getFilter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/IconPreference;->mFilter:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/IconPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 64
    const v1, 0x7f0d0041

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 65
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/IconPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/IconPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 77
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/IconPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/IconPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 78
    :cond_1
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/IconPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 79
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/IconPreference;->notifyChanged()V

    .line 81
    :cond_2
    return-void
.end method
