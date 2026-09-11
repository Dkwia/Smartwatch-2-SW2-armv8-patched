.class public Lcom/sonymobile/smartconnect/hostapp/extensions/widget/StyleHelper;
.super Ljava/lang/Object;
.source "StyleHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStyledAttributes(Landroid/content/Context;[Ljava/lang/Enum;)[I
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/Enum",
            "<*>;)[I"
        }
    .end annotation

    .prologue
    .line 10
    .local p1, "attrEnumArray":[Ljava/lang/Enum;, "[Ljava/lang/Enum<*>;"
    array-length v7, p1

    new-array v2, v7, [I

    .line 11
    .local v2, "attrArray":[I
    const/4 v3, 0x0

    .line 12
    .local v3, "i":I
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Enum;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    move v4, v3

    .end local v3    # "i":I
    .local v4, "i":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v1, v0, v5

    .line 13
    .local v1, "attr":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    const-string v9, "attr"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    aput v7, v2, v4

    .line 12
    add-int/lit8 v5, v5, 0x1

    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    .line 16
    .end local v1    # "attr":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    :cond_0
    invoke-static {v2}, Ljava/util/Arrays;->sort([I)V

    .line 17
    return-object v2
.end method
