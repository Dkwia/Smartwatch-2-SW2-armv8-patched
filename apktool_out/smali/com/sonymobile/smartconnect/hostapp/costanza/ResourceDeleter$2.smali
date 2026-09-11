.class Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$2;
.super Ljava/lang/Object;
.source "ResourceDeleter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;->deleteResource(ILcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;

.field final synthetic val$cid:I

.field final synthetic val$cidRefTracker:Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;

.field final synthetic val$operations:Ljava/util/ArrayList;

.field final synthetic val$resCache:Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;ILcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;

    iput p2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$2;->val$cid:I

    iput-object p3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$2;->val$resCache:Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;

    iput-object p4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$2;->val$cidRefTracker:Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;

    iput-object p5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$2;->val$operations:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 163
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;->access$608(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;)I

    move-result v1

    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$2;->val$cid:I

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$2;->val$resCache:Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$2;->val$cidRefTracker:Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;->access$700(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;IILcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;I)V

    .line 166
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;

    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$2;->val$cid:I

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$2;->val$operations:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;->access$800(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;ILjava/util/ArrayList;)V

    .line 168
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;->access$000(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;->access$300(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;)V

    .line 171
    :cond_0
    return-void
.end method
