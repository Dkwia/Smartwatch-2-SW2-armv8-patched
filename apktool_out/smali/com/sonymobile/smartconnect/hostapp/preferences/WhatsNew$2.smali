.class Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew$2;
.super Ljava/lang/Object;
.source "WhatsNew.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 78
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;->access$300(Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 83
    return-void
.end method
