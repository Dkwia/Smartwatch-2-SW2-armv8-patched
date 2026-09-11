.class public Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;
.super Ljava/lang/Object;
.source "LogMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDump:Ljava/io/File;

.field private mMessage:Ljava/lang/String;

.field private mTime:Landroid/text/format/Time;

.field private mType:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 134
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$1;

    invoke-direct {v0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$1;-><init>()V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->mMessage:Ljava/lang/String;

    .line 151
    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->mType:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;

    .line 152
    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->mTime:Landroid/text/format/Time;

    .line 153
    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->mDump:Ljava/io/File;

    .line 154
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->mMessage:Ljava/lang/String;

    .line 163
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->mTime:Landroid/text/format/Time;

    .line 164
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->mTime:Landroid/text/format/Time;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;->getTypeForId(I)Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->mType:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "dumpName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 168
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->mDump:Ljava/io/File;

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->mDump:Ljava/io/File;

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$1;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->mMessage:Ljava/lang/String;

    .line 183
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->mType:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->mDump:Ljava/io/File;

    .line 185
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->mTime:Landroid/text/format/Time;

    .line 186
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 187
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;Landroid/text/format/Time;Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;
    .param p3, "time"    # Landroid/text/format/Time;
    .param p4, "dumpName"    # Ljava/lang/String;

    .prologue
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->mMessage:Ljava/lang/String;

    .line 240
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->mType:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;

    .line 241
    iput-object p3, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->mTime:Landroid/text/format/Time;

    .line 242
    invoke-direct {p0, p4}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->setDumpFile(Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;[B)V
    .locals 7
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;
    .param p3, "data"    # [B

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    sget-object v4, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;->DUMP:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;

    if-ne p2, v4, :cond_0

    .line 198
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "Analytics: Got a dump."

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z

    .line 200
    :cond_0
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->mMessage:Ljava/lang/String;

    .line 201
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->mType:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;

    .line 202
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    iput-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->mTime:Landroid/text/format/Time;

    .line 203
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->mTime:Landroid/text/format/Time;

    invoke-virtual {v4}, Landroid/text/format/Time;->setToNow()V

    .line 204
    if-eqz p3, :cond_3

    .line 205
    new-instance v0, Ljava/io/File;

    sget-object v4, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogDbHelper;->DUMP_DIRECTORY:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 206
    .local v0, "dumpdir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 207
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    .line 208
    .local v2, "isCreated":Z
    if-nez v2, :cond_2

    .line 209
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not create directory:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 213
    .end local v2    # "isCreated":Z
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_2

    .line 214
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not a directory:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 217
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dump_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->mTime:Landroid/text/format/Time;

    const-string v6, "%F_%H_%M_%S"

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->setDumpFile(Ljava/lang/String;)V

    .line 218
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->mDump:Ljava/io/File;

    if-eqz v4, :cond_3

    .line 220
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->mDump:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 221
    .local v3, "out":Ljava/io/FileOutputStream;
    invoke-virtual {v3, p3}, Ljava/io/FileOutputStream;->write([B)V

    .line 222
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .end local v0    # "dumpdir":Ljava/io/File;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    :cond_3
    :goto_0
    return-void

    .line 223
    .restart local v0    # "dumpdir":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 224
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private setDumpFile(Ljava/lang/String;)V
    .locals 3
    .param p1, "dumpName"    # Ljava/lang/String;

    .prologue
    .line 358
    if-eqz p1, :cond_0

    .line 359
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogDbHelper;->DUMP_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->mDump:Ljava/io/File;

    .line 363
    :goto_0
    return-void

    .line 361
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->mDump:Ljava/io/File;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method public getDumpFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->mDump:Ljava/io/File;

    return-object v0
.end method

.method public getDumpFileAbsoluteName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->mDump:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->mDump:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 268
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDumpFileName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 278
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->mDump:Ljava/io/File;

    if-eqz v2, :cond_1

    .line 279
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->mDump:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, "name":Ljava/lang/String;
    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 281
    .local v0, "lastSlash":I
    if-ltz v0, :cond_0

    .line 282
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 286
    .end local v0    # "lastSlash":I
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeAsMillis()J
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->mTime:Landroid/text/format/Time;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeAsStringLong()Ljava/lang/String;
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->mTime:Landroid/text/format/Time;

    const-string v1, "%F_%T"

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeAsStringTwoLines()Ljava/lang/String;
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->mTime:Landroid/text/format/Time;

    const-string v1, "%y-%m-%d\n%T"

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->mType:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;

    return-object v0
.end method

.method public populateView(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 342
    const v3, 0x7f0d0065

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 343
    .local v0, "date":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->getTimeAsStringTwoLines()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    const v3, 0x7f0d0067

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 346
    .local v2, "msg":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->mMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    const v3, 0x7f0d0066

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 349
    .local v1, "image":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->mType:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 350
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->mMessage:Ljava/lang/String;

    .line 373
    return-void
.end method

.method public setTime(Landroid/text/format/Time;)V
    .locals 0
    .param p1, "time"    # Landroid/text/format/Time;

    .prologue
    .line 381
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->mTime:Landroid/text/format/Time;

    .line 382
    return-void
.end method

.method public setType(Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;)V
    .locals 0
    .param p1, "type"    # Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;

    .prologue
    .line 390
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->mType:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;

    .line 391
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 395
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s - %c: %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->getTimeAsStringLong()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->mType:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;

    invoke-virtual {v5}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;->getTypeChar()C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->mMessage:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "str":Ljava/lang/String;
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 402
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->mTime:Landroid/text/format/Time;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 404
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->mType:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;->getTypeId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->mDump:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->mDump:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 410
    :goto_0
    return-void

    .line 408
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method
