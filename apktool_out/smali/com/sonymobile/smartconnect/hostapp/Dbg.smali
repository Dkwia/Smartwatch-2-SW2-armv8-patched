.class public final Lcom/sonymobile/smartconnect/hostapp/Dbg;
.super Ljava/lang/Object;
.source "Dbg.java"


# static fields
.field private static final DEBUG_FILE:Ljava/lang/String; = "costanza_debug"

.field public static final DEBUG_SHARED_PREFS_DISABLE_AUTOMATIC_FOTA_KEY:Ljava/lang/String; = "DISABLE_AUTOMATIC_FOTA"

.field public static final DEBUG_SHARED_PREFS_NAME:Ljava/lang/String; = "DebugPreferences"

.field private static final LOG_TAG:Ljava/lang/String; = "Costanza"

.field private static sDebug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "protocol"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sonymobile/smartconnect/hostapp/Dbg;->sDebug:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "msgFormat"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 171
    sget-boolean v0, Lcom/sonymobile/smartconnect/hostapp/Dbg;->sDebug:Z

    if-eqz v0, :cond_0

    .line 172
    const-string v0, "Costanza"

    invoke-static {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    return-void
.end method

.method public static d()Z
    .locals 1

    .prologue
    .line 105
    sget-boolean v0, Lcom/sonymobile/smartconnect/hostapp/Dbg;->sDebug:Z

    return v0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 151
    sget-boolean v0, Lcom/sonymobile/smartconnect/hostapp/Dbg;->sDebug:Z

    if-eqz v0, :cond_0

    .line 152
    const-string v0, "Costanza"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    sget-boolean v0, Lcom/sonymobile/smartconnect/hostapp/Dbg;->sDebug:Z

    return v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 158
    sget-boolean v0, Lcom/sonymobile/smartconnect/hostapp/Dbg;->sDebug:Z

    if-eqz v0, :cond_0

    .line 159
    const-string v0, "Costanza"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    :cond_0
    sget-boolean v0, Lcom/sonymobile/smartconnect/hostapp/Dbg;->sDebug:Z

    return v0
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "msgFormat"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 189
    sget-boolean v0, Lcom/sonymobile/smartconnect/hostapp/Dbg;->sDebug:Z

    if-eqz v0, :cond_0

    .line 190
    const-string v0, "Costanza"

    invoke-static {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    return-void
.end method

.method public static varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p1, "msgFormat"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 183
    sget-boolean v0, Lcom/sonymobile/smartconnect/hostapp/Dbg;->sDebug:Z

    if-eqz v0, :cond_0

    .line 184
    const-string v0, "Costanza"

    invoke-static {p1, p2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    :cond_0
    return-void
.end method

.method public static e()Z
    .locals 1

    .prologue
    .line 97
    sget-boolean v0, Lcom/sonymobile/smartconnect/hostapp/Dbg;->sDebug:Z

    return v0
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 116
    sget-boolean v0, Lcom/sonymobile/smartconnect/hostapp/Dbg;->sDebug:Z

    if-eqz v0, :cond_0

    .line 117
    const-string v0, "Costanza"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    sget-boolean v0, Lcom/sonymobile/smartconnect/hostapp/Dbg;->sDebug:Z

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 130
    sget-boolean v0, Lcom/sonymobile/smartconnect/hostapp/Dbg;->sDebug:Z

    if-eqz v0, :cond_0

    .line 131
    const-string v0, "Costanza"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    :cond_0
    sget-boolean v0, Lcom/sonymobile/smartconnect/hostapp/Dbg;->sDebug:Z

    return v0
.end method

.method public static e(Ljava/lang/Throwable;)Z
    .locals 2
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 123
    sget-boolean v0, Lcom/sonymobile/smartconnect/hostapp/Dbg;->sDebug:Z

    if-eqz v0, :cond_0

    .line 124
    const-string v0, "Costanza"

    const-string v1, ""

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    :cond_0
    sget-boolean v0, Lcom/sonymobile/smartconnect/hostapp/Dbg;->sDebug:Z

    return v0
.end method

.method private static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "arguments"    # [Ljava/lang/Object;

    .prologue
    .line 208
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLogHeader()Ljava/lang/String;
    .locals 4

    .prologue
    .line 195
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 196
    .local v0, "currentThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 200
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static initDebugFlag(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sonymobile/smartconnect/hostapp/Dbg;->sDebug:Z

    .line 58
    return-void
.end method

.method public static isDebugMode()Z
    .locals 1

    .prologue
    .line 89
    sget-boolean v0, Lcom/sonymobile/smartconnect/hostapp/Dbg;->sDebug:Z

    return v0
.end method

.method static native setDebugLogsEnabled(Z)V
.end method

.method public static setDebugMode(Z)V
    .locals 0
    .param p0, "debug"    # Z

    .prologue
    .line 85
    sput-boolean p0, Lcom/sonymobile/smartconnect/hostapp/Dbg;->sDebug:Z

    .line 86
    return-void
.end method

.method public static varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "msgFormat"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 165
    sget-boolean v0, Lcom/sonymobile/smartconnect/hostapp/Dbg;->sDebug:Z

    if-eqz v0, :cond_0

    .line 166
    const-string v0, "Costanza"

    invoke-static {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    return-void
.end method

.method public static v()Z
    .locals 1

    .prologue
    .line 93
    sget-boolean v0, Lcom/sonymobile/smartconnect/hostapp/Dbg;->sDebug:Z

    return v0
.end method

.method public static v(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 109
    sget-boolean v0, Lcom/sonymobile/smartconnect/hostapp/Dbg;->sDebug:Z

    if-eqz v0, :cond_0

    .line 110
    const-string v0, "Costanza"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    sget-boolean v0, Lcom/sonymobile/smartconnect/hostapp/Dbg;->sDebug:Z

    return v0
.end method

.method public static varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "msgFormat"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 177
    sget-boolean v0, Lcom/sonymobile/smartconnect/hostapp/Dbg;->sDebug:Z

    if-eqz v0, :cond_0

    .line 178
    const-string v0, "Costanza"

    invoke-static {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
    return-void
.end method

.method public static w()Z
    .locals 1

    .prologue
    .line 101
    sget-boolean v0, Lcom/sonymobile/smartconnect/hostapp/Dbg;->sDebug:Z

    return v0
.end method

.method public static w(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 137
    sget-boolean v0, Lcom/sonymobile/smartconnect/hostapp/Dbg;->sDebug:Z

    if-eqz v0, :cond_0

    .line 138
    const-string v0, "Costanza"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    sget-boolean v0, Lcom/sonymobile/smartconnect/hostapp/Dbg;->sDebug:Z

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 144
    sget-boolean v0, Lcom/sonymobile/smartconnect/hostapp/Dbg;->sDebug:Z

    if-eqz v0, :cond_0

    .line 145
    const-string v0, "Costanza"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    :cond_0
    sget-boolean v0, Lcom/sonymobile/smartconnect/hostapp/Dbg;->sDebug:Z

    return v0
.end method
