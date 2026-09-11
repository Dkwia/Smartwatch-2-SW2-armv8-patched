.class public Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpSection$DumpFormatException;
.super Ljava/lang/Exception;
.source "DumpSection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DumpFormatException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpSection;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpSection;Ljava/lang/String;)V
    .locals 0
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpSection$DumpFormatException;->this$0:Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpSection;

    .line 16
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 17
    return-void
.end method
