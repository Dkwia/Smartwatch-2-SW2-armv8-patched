.class Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences$4;
.super Ljava/lang/Object;
.source "AboutPreferences.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;->createLicenseDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences$4;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 171
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 172
    return-void
.end method
