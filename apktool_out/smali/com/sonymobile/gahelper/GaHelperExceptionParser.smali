.class public Lcom/sonymobile/gahelper/GaHelperExceptionParser;
.super Ljava/lang/Object;
.source "GaHelperExceptionParser.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MAX_CAUSE_DEPTH:I = 0x2

.field private static final MAX_MESSAGE_LENGTH:I = 0x28

.field private static final MAX_STACK_DEPTH:I = 0xa

.field private static final RESERVED_NAMESPACE_PREFIXES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sEnabledExceptionTracking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 29
    const-class v0, Lcom/sonymobile/gahelper/GaHelperExceptionParser;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/gahelper/GaHelperExceptionParser;->LOG_TAG:Ljava/lang/String;

    .line 31
    sput-boolean v2, Lcom/sonymobile/gahelper/GaHelperExceptionParser;->sEnabledExceptionTracking:Z

    .line 43
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android."

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "com.android"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.google.android"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "java."

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "javax."

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "sun."

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/gahelper/GaHelperExceptionParser;->RESERVED_NAMESPACE_PREFIXES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Throwable;I)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # I

    .prologue
    .line 27
    invoke-static {p0, p1}, Lcom/sonymobile/gahelper/GaHelperExceptionParser;->createThrowableDescription(Ljava/lang/Throwable;I)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private static createThrowableDescription(Ljava/lang/Throwable;I)Ljava/lang/StringBuilder;
    .locals 4
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p1, "depth"    # I

    .prologue
    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .local v1, "retval":Ljava/lang/StringBuilder;
    const/4 v2, 0x2

    if-gt p1, v2, :cond_1

    .line 132
    invoke-static {p0}, Lcom/sonymobile/gahelper/GaHelperExceptionParser;->createThrowableDescriptionShort(Ljava/lang/Throwable;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 135
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 136
    .local v0, "cause":Ljava/lang/Throwable;
    if-eqz v0, :cond_0

    .line 138
    const-string v2, " Cause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 139
    add-int/lit8 v2, p1, 0x1

    invoke-static {v0, v2}, Lcom/sonymobile/gahelper/GaHelperExceptionParser;->createThrowableDescription(Ljava/lang/Throwable;I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 150
    .end local v0    # "cause":Ljava/lang/Throwable;
    :goto_0
    return-object v1

    .line 142
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_0
    invoke-static {p0}, Lcom/sonymobile/gahelper/GaHelperExceptionParser;->createThrowableDescriptionStackTrace(Ljava/lang/Throwable;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    goto :goto_0

    .line 147
    .end local v0    # "cause":Ljava/lang/Throwable;
    :cond_1
    const-string v2, "... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/sonymobile/gahelper/GaHelperExceptionParser;->createThrowableDescriptionStackTrace(Ljava/lang/Throwable;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    goto :goto_0
.end method

.method private static createThrowableDescriptionShort(Ljava/lang/Throwable;)Ljava/lang/StringBuilder;
    .locals 6
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 161
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "className":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .local v2, "retval":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "message":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 171
    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x28

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 172
    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 175
    :cond_0
    return-object v2
.end method

.method private static createThrowableDescriptionStackTrace(Ljava/lang/Throwable;)Ljava/lang/StringBuilder;
    .locals 7
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    const/16 v6, 0xa

    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .local v2, "retval":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 191
    .local v4, "stackTraceIndex":I
    const/4 v1, 0x0

    .line 192
    .local v1, "done":Z
    :goto_0
    if-nez v1, :cond_2

    if-ge v4, v6, :cond_2

    .line 193
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    aget-object v3, v5, v4

    .line 195
    .local v3, "stackTrace":Ljava/lang/StackTraceElement;
    if-eqz v3, :cond_1

    .line 198
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "classname":Ljava/lang/String;
    invoke-static {v0}, Lcom/sonymobile/gahelper/GaHelperExceptionParser;->packageNameIsReserved(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 202
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 205
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 209
    .end local v0    # "classname":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 215
    .end local v3    # "stackTrace":Ljava/lang/StackTraceElement;
    :cond_2
    if-ne v4, v6, :cond_3

    .line 216
    const/4 v4, 0x0

    .line 219
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    aget-object v3, v5, v4

    .line 221
    .restart local v3    # "stackTrace":Ljava/lang/StackTraceElement;
    if-eqz v3, :cond_4

    .line 222
    const-string v5, " F:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " M:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " L:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 230
    :goto_1
    return-object v2

    .line 227
    :cond_4
    const-string v5, " ?"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_1
.end method

.method public static declared-synchronized enableExceptionParsing(Lcom/google/analytics/tracking/android/Tracker;Landroid/content/Context;)V
    .locals 4
    .param p0, "tracker"    # Lcom/google/analytics/tracking/android/Tracker;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    const-class v2, Lcom/sonymobile/gahelper/GaHelperExceptionParser;

    monitor-enter v2

    :try_start_0
    sget-boolean v1, Lcom/sonymobile/gahelper/GaHelperExceptionParser;->sEnabledExceptionTracking:Z

    if-nez v1, :cond_1

    .line 77
    if-nez p0, :cond_0

    .line 78
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "tracker is not allowed to be null"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 81
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    sput-boolean v1, Lcom/sonymobile/gahelper/GaHelperExceptionParser;->sEnabledExceptionTracking:Z

    .line 83
    new-instance v0, Lcom/google/analytics/tracking/android/ExceptionReporter;

    invoke-static {}, Lcom/google/analytics/tracking/android/GAServiceManager;->getInstance()Lcom/google/analytics/tracking/android/GAServiceManager;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-direct {v0, p0, v1, v3, p1}, Lcom/google/analytics/tracking/android/ExceptionReporter;-><init>(Lcom/google/analytics/tracking/android/Tracker;Lcom/google/analytics/tracking/android/ServiceManager;Ljava/lang/Thread$UncaughtExceptionHandler;Landroid/content/Context;)V

    .line 86
    .local v0, "exceptionReporter":Lcom/google/analytics/tracking/android/ExceptionReporter;
    new-instance v1, Lcom/sonymobile/gahelper/GaHelperExceptionParser$1;

    invoke-direct {v1}, Lcom/sonymobile/gahelper/GaHelperExceptionParser$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/ExceptionReporter;->setExceptionParser(Lcom/google/analytics/tracking/android/ExceptionParser;)V

    .line 117
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    .end local v0    # "exceptionReporter":Lcom/google/analytics/tracking/android/ExceptionReporter;
    :cond_1
    monitor-exit v2

    return-void
.end method

.method public static enableExceptionParsingEasyTracker(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance()Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/tracking/android/EasyTracker;->setContext(Landroid/content/Context;)V

    .line 61
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sonymobile/gahelper/GaHelperExceptionParser;->enableExceptionParsing(Lcom/google/analytics/tracking/android/Tracker;Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method private static packageNameIsReserved(Ljava/lang/String;)Z
    .locals 3
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, "found":Z
    const/4 v1, 0x0

    .line 242
    .local v1, "index":I
    :goto_0
    if-nez v0, :cond_1

    sget-object v2, Lcom/sonymobile/gahelper/GaHelperExceptionParser;->RESERVED_NAMESPACE_PREFIXES:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 243
    sget-object v2, Lcom/sonymobile/gahelper/GaHelperExceptionParser;->RESERVED_NAMESPACE_PREFIXES:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    const/4 v0, 0x1

    goto :goto_0

    .line 246
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 249
    :cond_1
    return v0
.end method
