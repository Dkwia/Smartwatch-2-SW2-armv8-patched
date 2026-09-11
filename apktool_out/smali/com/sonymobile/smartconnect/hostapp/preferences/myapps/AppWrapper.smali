.class public Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
.super Ljava/lang/Object;
.source "AppWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper$AppType;
    }
.end annotation


# instance fields
.field private mCid:I

.field private mData:Ljava/lang/Object;

.field private mIsEnabled:Z

.field private final mName:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;

.field private final mType:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper$AppType;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;Z)V
    .locals 1
    .param p1, "e"    # Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .param p2, "isEnabled"    # Z

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getCid()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->mCid:I

    .line 30
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->mPackageName:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getParentPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getParent()Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->mName:Ljava/lang/String;

    .line 38
    :goto_0
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper$AppType;->EXTENSION:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper$AppType;

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->mType:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper$AppType;

    .line 39
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->mData:Ljava/lang/Object;

    .line 40
    iput-boolean p2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->mIsEnabled:Z

    .line 42
    return-void

    .line 36
    :cond_0
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "nativeAppCid"    # Ljava/lang/String;
    .param p3, "nativeAppName"    # Ljava/lang/String;
    .param p4, "isEnabled"    # Z

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->mCid:I

    .line 48
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->mPackageName:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->mName:Ljava/lang/String;

    .line 50
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper$AppType;->NATIVE:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper$AppType;

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->mType:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper$AppType;

    .line 51
    iput-boolean p4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->mIsEnabled:Z

    .line 53
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 116
    if-ne p1, p0, :cond_1

    .line 128
    :cond_0
    :goto_0
    return v1

    .line 118
    :cond_1
    instance-of v3, p1, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;

    if-nez v3, :cond_2

    move v1, v2

    .line 119
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 122
    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;

    .line 124
    .local v0, "app":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->mPackageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 128
    goto :goto_0
.end method

.method public getCid()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->mCid:I

    return v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public getHostAppIconUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper$AppType;->EXTENSION:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper$AppType;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->mType:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper$AppType;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper$AppType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getHostAppIconUri()Ljava/lang/String;

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHostAppIconUri(ILandroid/content/res/Resources;)Ljava/lang/String;
    .locals 10
    .param p1, "cid"    # I
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 97
    const v7, 0x7f0a0004

    invoke-virtual {p2, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 98
    .local v6, "nativeApps":[Ljava/lang/String;
    move-object v1, v6

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v0, v1, v3

    .line 99
    .local v0, "app":Ljava/lang/String;
    const-string v7, ";"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 101
    .local v5, "nativeApp":[Ljava/lang/String;
    if-eqz v5, :cond_0

    :try_start_0
    array-length v7, v5

    const/4 v8, 0x2

    if-ge v7, v8, :cond_2

    .line 102
    :cond_0
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad format of app "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :catch_0
    move-exception v2

    .line 108
    .local v2, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    .line 98
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 104
    :cond_2
    const/4 v7, 0x1

    :try_start_1
    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ne p1, v7, :cond_1

    .line 105
    const/4 v7, 0x3

    aget-object v7, v5, v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 111
    .end local v0    # "app":Ljava/lang/String;
    .end local v5    # "nativeApp":[Ljava/lang/String;
    :goto_1
    return-object v7

    :cond_3
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public getIsEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->mIsEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper$AppType;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->mType:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper$AppType;

    return-object v0
.end method

.method public setCid(I)V
    .locals 0
    .param p1, "cid"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->mCid:I

    .line 61
    return-void
.end method

.method public setIsEnabled(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->mIsEnabled:Z

    .line 85
    return-void
.end method
