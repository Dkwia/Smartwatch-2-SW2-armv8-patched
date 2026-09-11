.class Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity$6;
.super Ljava/lang/Object;
.source "StartupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;->onConnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity$6;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 278
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity$6;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;

    const v2, 0x7f0d006d

    invoke-virtual {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 279
    .local v0, "textView":Landroid/widget/TextView;
    const v1, 0x7f070008

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 280
    return-void
.end method
