.class Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew$1;
.super Ljava/lang/Object;
.source "WhatsNew.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;->showWhatsNewDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;

    const-string v1, "Version"

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;->access$000(Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;->access$100(Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;Ljava/lang/String;I)V

    .line 74
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;->access$200(Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;)Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 75
    return-void
.end method
