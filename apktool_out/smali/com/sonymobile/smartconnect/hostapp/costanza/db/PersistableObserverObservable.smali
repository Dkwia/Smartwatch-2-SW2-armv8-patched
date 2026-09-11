.class public Lcom/sonymobile/smartconnect/hostapp/costanza/db/PersistableObserverObservable;
.super Landroid/database/Observable;
.source "PersistableObserverObservable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/Observable",
        "<",
        "Lcom/sonymobile/smartconnect/hostapp/costanza/PersistableObserver;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/database/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyObservers(Lcom/sonymobile/smartconnect/hostapp/costanza/db/Persistable;)V
    .locals 3
    .param p1, "p"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/Persistable;

    .prologue
    .line 15
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/PersistableObserverObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/costanza/PersistableObserver;

    .line 16
    .local v1, "observer":Lcom/sonymobile/smartconnect/hostapp/costanza/PersistableObserver;
    invoke-interface {v1, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/PersistableObserver;->update(Lcom/sonymobile/smartconnect/hostapp/costanza/db/Persistable;)V

    goto :goto_0

    .line 18
    .end local v1    # "observer":Lcom/sonymobile/smartconnect/hostapp/costanza/PersistableObserver;
    :cond_0
    return-void
.end method
