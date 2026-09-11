.class public Lcom/sonymobile/smartconnect/hostapp/extensions/control/AccessoryScreenLayout;
.super Ljava/lang/Object;
.source "AccessoryScreenLayout.java"


# instance fields
.field private final mLayoutId:I

.field private final mLayoutValues:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;",
            ">;"
        }
    .end annotation
.end field

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(ILandroid/util/SparseArray;Landroid/view/View;)V
    .locals 0
    .param p1, "layoutId"    # I
    .param p3, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, "layoutValues":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/AccessoryScreenLayout;->mLayoutId:I

    .line 26
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/AccessoryScreenLayout;->mLayoutValues:Landroid/util/SparseArray;

    .line 27
    iput-object p3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/AccessoryScreenLayout;->mView:Landroid/view/View;

    .line 28
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/AccessoryScreenLayout;->mLayoutId:I

    return v0
.end method

.method public getInflatedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/AccessoryScreenLayout;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getLayoutValues()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/AccessoryScreenLayout;->mLayoutValues:Landroid/util/SparseArray;

    return-object v0
.end method
