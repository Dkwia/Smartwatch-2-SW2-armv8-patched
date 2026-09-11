.class Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences$2;
.super Ljava/lang/Object;
.source "AboutPreferences.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;->onCreate(Landroid/os/Bundle;)V
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
    .line 88
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;->access$300(Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 93
    const/4 v0, 0x0

    return v0
.end method
