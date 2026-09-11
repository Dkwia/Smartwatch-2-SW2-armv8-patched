.class Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity$3;
.super Ljava/lang/Object;
.source "ExtensionsListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;->createCategoryDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 158
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;->access$100(Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;->access$000(Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;)I

    move-result v2

    aget-object v0, v1, v2

    .line 159
    .local v0, "cats":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;->sendMarketExtensionsSearchIntentSmartWatch2([Ljava/lang/String;)V

    .line 161
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 162
    return-void
.end method
