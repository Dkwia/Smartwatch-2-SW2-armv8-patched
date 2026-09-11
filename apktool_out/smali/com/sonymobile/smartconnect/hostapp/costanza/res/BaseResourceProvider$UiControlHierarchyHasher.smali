.class public Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$UiControlHierarchyHasher;
.super Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$BaseResourceHasher;
.source "BaseResourceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "UiControlHierarchyHasher"
.end annotation


# instance fields
.field private final mUiControl:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;)V
    .locals 0
    .param p1, "uiControl"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$BaseResourceHasher;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$UiControlHierarchyHasher;->mUiControl:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;

    .line 74
    return-void
.end method

.method private digestViewHierarchy(Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;)V
    .locals 2
    .param p1, "digester"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;
    .param p2, "uiControl"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;

    .prologue
    .line 82
    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->parent()Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;

    move-result-object v1

    instance-of v1, v1, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;

    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->parent()Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;

    .line 84
    .local v0, "parent":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;
    invoke-virtual {v0, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;->indexOf(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->update(I)V

    .line 85
    invoke-direct {p0, p1, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$UiControlHierarchyHasher;->digestViewHierarchy(Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;)V

    .line 87
    .end local v0    # "parent":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;
    :cond_0
    invoke-virtual {p2, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->getHierarchicalHint(Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;)V

    .line 88
    return-void
.end method


# virtual methods
.method protected feedDigester(Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;)V
    .locals 1
    .param p1, "digester"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$UiControlHierarchyHasher;->mUiControl:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$UiControlHierarchyHasher;->digestViewHierarchy(Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;)V

    .line 79
    return-void
.end method
