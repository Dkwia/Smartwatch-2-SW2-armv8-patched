.class Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity$2;
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
    .line 148
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 151
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 152
    return-void
.end method
