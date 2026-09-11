.class Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity$7;
.super Ljava/lang/Object;
.source "StartupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;->onOldFirmwareAccessoryConnected()V
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
    .line 286
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity$7;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 289
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity$7;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;

    const v2, 0x7f0d006d

    invoke-virtual {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 290
    .local v0, "textView":Landroid/widget/TextView;
    const v1, 0x7f07000b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 291
    return-void
.end method
