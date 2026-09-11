.class public Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProviderImpl;
.super Ljava/lang/Object;
.source "MessageIdProviderImpl.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;


# static fields
.field private static final MESSAGE_ID_MAX_VALUE:I = 0x3b9ac9ff


# instance fields
.field private mNextMessageId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProviderImpl;->mNextMessageId:I

    return-void
.end method


# virtual methods
.method public declared-synchronized getNewMessageId()I
    .locals 3

    .prologue
    .line 25
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProviderImpl;->mNextMessageId:I

    .line 27
    .local v0, "messageId":I
    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProviderImpl;->mNextMessageId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProviderImpl;->mNextMessageId:I

    .line 28
    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProviderImpl;->mNextMessageId:I

    const v2, 0x3b9ac9ff

    if-le v1, v2, :cond_0

    .line 29
    const/4 v1, 0x0

    iput v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProviderImpl;->mNextMessageId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :cond_0
    monitor-exit p0

    return v0

    .line 25
    .end local v0    # "messageId":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
