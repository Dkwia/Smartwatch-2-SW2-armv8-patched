.class Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$1;
.super Ljava/lang/Object;
.source "ResourceDeleter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;->onDeleteResponse(IILcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources$DeleteStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;

.field final synthetic val$cidRangeFirst:I

.field final synthetic val$cidRangeLast:I

.field final synthetic val$status:Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources$DeleteStatus;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources$DeleteStatus;II)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;

    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$1;->val$status:Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources$DeleteStatus;

    iput p3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$1;->val$cidRangeFirst:I

    iput p4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$1;->val$cidRangeLast:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 98
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$1;->val$status:Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources$DeleteStatus;

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources$DeleteStatus;->SUCCESS:Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources$DeleteStatus;

    if-ne v0, v1, :cond_1

    .line 99
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;

    invoke-static {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;->access$002(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;Z)Z

    .line 100
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;

    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$1;->val$cidRangeFirst:I

    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$1;->val$cidRangeLast:I

    invoke-static {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;->access$100(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;II)V

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;->access$200(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;)I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_2

    .line 104
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;->access$208(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;)I

    .line 105
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;->access$400(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$1$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$1$1;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$1;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;

    invoke-static {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;->access$002(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;Z)Z

    .line 114
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;

    invoke-static {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;->access$202(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;I)I

    .line 115
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;

    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$1;->val$cidRangeFirst:I

    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$1;->val$cidRangeLast:I

    invoke-static {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;->access$100(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;II)V

    .line 117
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const-string v0, "Aborted deleting resource on accessory, removed it from host."

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    goto :goto_0
.end method
