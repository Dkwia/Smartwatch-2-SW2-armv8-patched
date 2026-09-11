.class public Lcom/sonymobile/smartconnect/hostapp/config/ConfigReader;
.super Ljava/lang/Object;
.source "ConfigReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized readPreConfiguredHostApps(Landroid/content/Context;I)Ljava/util/List;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    monitor-enter p0

    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .local v4, "hostApps":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 21
    .local v3, "hostAppNames":[Ljava/lang/String;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v2, v0, v5

    .line 22
    .local v2, "hostAppName":Ljava/lang/String;
    new-instance v7, Lcom/sonymobile/smartconnect/hostapp/config/RegistrationParser;

    invoke-direct {v7, p1}, Lcom/sonymobile/smartconnect/hostapp/config/RegistrationParser;-><init>(Landroid/content/Context;)V

    .line 23
    .local v7, "parser":Lcom/sonymobile/smartconnect/hostapp/config/RegistrationParser;
    invoke-virtual {v7, v2}, Lcom/sonymobile/smartconnect/hostapp/config/RegistrationParser;->parse(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;

    move-result-object v1

    .line 24
    .local v1, "hostApp":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;
    if-eqz v1, :cond_0

    .line 25
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 28
    .end local v1    # "hostApp":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;
    .end local v2    # "hostAppName":Ljava/lang/String;
    .end local v7    # "parser":Lcom/sonymobile/smartconnect/hostapp/config/RegistrationParser;
    :cond_1
    monitor-exit p0

    return-object v4

    .line 19
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "hostAppNames":[Ljava/lang/String;
    .end local v4    # "hostApps":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;>;"
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method
