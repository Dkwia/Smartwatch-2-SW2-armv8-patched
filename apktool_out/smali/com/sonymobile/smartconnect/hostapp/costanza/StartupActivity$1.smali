.class Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity$1;
.super Ljava/lang/Object;
.source "StartupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 49
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 52
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v0

    const-string v1, "ui_category"

    const-string v2, "button_click"

    check-cast p1, Landroid/widget/Button;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 55
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;->access$000(Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;)Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->sendFactoryResetMessage()V

    .line 56
    return-void
.end method
