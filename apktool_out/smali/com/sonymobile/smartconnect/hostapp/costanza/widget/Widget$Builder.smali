.class Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;
.super Ljava/lang/Object;
.source "Widget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final w:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->mContext:Landroid/content/Context;

    .line 43
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->createWidget()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->w:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    .line 44
    return-void
.end method


# virtual methods
.method public build()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->w:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    return-object v0
.end method

.method category(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;
    .locals 1
    .param p1, "category"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->w:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->setCategory(I)V

    .line 67
    return-object p0
.end method

.method columns(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;
    .locals 2
    .param p1, "columns"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->w:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    mul-int/lit8 v1, p1, 0x2b

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->setWidth(I)V

    .line 87
    return-object p0
.end method

.method protected createWidget()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    invoke-direct {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;-><init>()V

    return-object v0
.end method

.method extensionCid(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;
    .locals 1
    .param p1, "extensionCid"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->w:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->setExtensionCid(I)V

    .line 52
    return-object p0
.end method

.method extensionCid(Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;
    .locals 2
    .param p1, "cidKey"    # Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->w:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    invoke-static {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids;->get(Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->setExtensionCid(I)V

    .line 57
    return-object p0
.end method

.method height(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->w:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->setHeight(I)V

    .line 102
    return-object p0
.end method

.method key(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->w:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->setKey(Ljava/lang/String;)V

    .line 131
    return-object p0
.end method

.method listPreview(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;
    .locals 1
    .param p1, "listPreviewResId"    # I

    .prologue
    .line 123
    if-eqz p1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->w:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->setListPreviewResource(I)V

    .line 126
    :cond_0
    return-object p0
.end method

.method name(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->w:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->setNameResource(Landroid/content/Context;I)V

    .line 82
    return-object p0
.end method

.method name(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->w:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->setName(Ljava/lang/String;)V

    .line 77
    return-object p0
.end method

.method packageName(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->w:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->setPackageName(Ljava/lang/String;)V

    .line 136
    return-object p0
.end method

.method preview(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->w:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/sonymobile/smartconnect/hostapp/util/UriUtil;->resIdtoUriString(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->setPreviewImageUriString(Ljava/lang/String;)V

    .line 107
    return-object p0
.end method

.method preview(Landroid/net/Uri;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 111
    if-eqz p1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->w:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->setPreviewImageUriString(Ljava/lang/String;)V

    .line 114
    :cond_0
    return-object p0
.end method

.method preview(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;
    .locals 1
    .param p1, "uriString"    # Ljava/lang/String;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->w:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->setPreviewImageUriString(Ljava/lang/String;)V

    .line 119
    return-object p0
.end method

.method rows(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;
    .locals 2
    .param p1, "rows"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->w:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    mul-int/lit8 v1, p1, 0x22

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->setHeight(I)V

    .line 97
    return-object p0
.end method

.method tag(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;
    .locals 1
    .param p1, "tag"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->w:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->setTag(I)V

    .line 62
    return-object p0
.end method

.method tag(Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;
    .locals 2
    .param p1, "cidKey"    # Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->w:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    invoke-static {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids;->get(Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->setTag(I)V

    .line 72
    return-object p0
.end method

.method width(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->w:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->setWidth(I)V

    .line 92
    return-object p0
.end method
