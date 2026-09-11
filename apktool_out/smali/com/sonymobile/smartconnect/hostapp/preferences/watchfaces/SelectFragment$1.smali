.class Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/SelectFragment$1;
.super Ljava/lang/Object;
.source "SelectFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/SelectFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/SelectFragment;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/SelectFragment;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/SelectFragment$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/SelectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/SelectFragment$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/SelectFragment;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/SelectFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0d0035

    new-instance v2, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/ClockListFragment;

    invoke-direct {v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/ClockListFragment;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 33
    return-void
.end method
