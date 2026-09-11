.class Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment$5;
.super Ljava/lang/Object;
.source "LogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;->askAndDeleteDumps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment$5;->this$0:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 230
    new-instance v2, Ljava/io/File;

    sget-object v7, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogDbHelper;->DUMP_DIRECTORY:Ljava/lang/String;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 232
    .local v2, "dumpDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 233
    .local v3, "dumps":[Ljava/io/File;
    if-eqz v3, :cond_1

    .line 234
    move-object v0, v3

    .local v0, "arr$":[Ljava/io/File;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v1, v0, v4

    .line 235
    .local v1, "dump":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v5

    .line 236
    .local v5, "isDeleted":Z
    if-nez v5, :cond_0

    .line 237
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to delete file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 234
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 243
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "dump":Ljava/io/File;
    .end local v4    # "i$":I
    .end local v5    # "isDeleted":Z
    .end local v6    # "len$":I
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 244
    return-void
.end method
