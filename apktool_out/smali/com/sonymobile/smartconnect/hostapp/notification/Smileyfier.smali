.class public Lcom/sonymobile/smartconnect/hostapp/notification/Smileyfier;
.super Ljava/lang/Object;
.source "Smileyfier.java"


# static fields
.field private static final NOSE_CHARACTER:Ljava/lang/String; = "-"

.field private static mEmoticonPattern:Ljava/util/regex/Pattern;

.field private static final mEmoticons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/notification/Smileyfier;->mEmoticons:Ljava/util/HashMap;

    .line 70
    const-string v0, ":-@"

    const v1, 0x7f020022

    invoke-static {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/notification/Smileyfier;->addSmiley(Ljava/lang/String;IZ)V

    .line 71
    const-string v0, ":\'-("

    const v1, 0x7f020023

    invoke-static {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/notification/Smileyfier;->addSmiley(Ljava/lang/String;IZ)V

    .line 72
    const-string v0, ">:-)"

    const v1, 0x7f020024

    invoke-static {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/notification/Smileyfier;->addSmiley(Ljava/lang/String;IZ)V

    .line 73
    const-string v0, ":*)"

    const v1, 0x7f020025

    invoke-static {v0, v1, v3}, Lcom/sonymobile/smartconnect/hostapp/notification/Smileyfier;->addSmiley(Ljava/lang/String;IZ)V

    .line 74
    const-string v0, ":-$"

    const v1, 0x7f020026

    invoke-static {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/notification/Smileyfier;->addSmiley(Ljava/lang/String;IZ)V

    .line 75
    const-string v0, ":-!"

    const v1, 0x7f020027

    invoke-static {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/notification/Smileyfier;->addSmiley(Ljava/lang/String;IZ)V

    .line 76
    const-string v0, ":-)"

    const v1, 0x7f020028

    invoke-static {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/notification/Smileyfier;->addSmiley(Ljava/lang/String;IZ)V

    .line 77
    const-string v0, ":|"

    const v1, 0x7f020029

    invoke-static {v0, v1, v3}, Lcom/sonymobile/smartconnect/hostapp/notification/Smileyfier;->addSmiley(Ljava/lang/String;IZ)V

    .line 78
    const-string v0, "0:-)"

    const v1, 0x7f02002a

    invoke-static {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/notification/Smileyfier;->addSmiley(Ljava/lang/String;IZ)V

    .line 79
    const-string v0, ":-*"

    const v1, 0x7f02002b

    invoke-static {v0, v1, v3}, Lcom/sonymobile/smartconnect/hostapp/notification/Smileyfier;->addSmiley(Ljava/lang/String;IZ)V

    .line 80
    const-string v0, "<3"

    const v1, 0x7f02002c

    invoke-static {v0, v1, v3}, Lcom/sonymobile/smartconnect/hostapp/notification/Smileyfier;->addSmiley(Ljava/lang/String;IZ)V

    .line 81
    const-string v0, "-:)"

    const v1, 0x7f02002d

    invoke-static {v0, v1, v3}, Lcom/sonymobile/smartconnect/hostapp/notification/Smileyfier;->addSmiley(Ljava/lang/String;IZ)V

    .line 82
    const-string v0, ":-B"

    const v1, 0x7f02002e

    invoke-static {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/notification/Smileyfier;->addSmiley(Ljava/lang/String;IZ)V

    .line 83
    const-string v0, "@-}--"

    const v1, 0x7f02002f

    invoke-static {v0, v1, v3}, Lcom/sonymobile/smartconnect/hostapp/notification/Smileyfier;->addSmiley(Ljava/lang/String;IZ)V

    .line 84
    const-string v0, ":-("

    const v1, 0x7f020030

    invoke-static {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/notification/Smileyfier;->addSmiley(Ljava/lang/String;IZ)V

    .line 85
    const-string v0, ":-#"

    const v1, 0x7f020031

    invoke-static {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/notification/Smileyfier;->addSmiley(Ljava/lang/String;IZ)V

    .line 86
    const-string v0, ":-/"

    const v1, 0x7f020032

    invoke-static {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/notification/Smileyfier;->addSmiley(Ljava/lang/String;IZ)V

    .line 87
    const-string v0, ":-S"

    const v1, 0x7f020033

    invoke-static {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/notification/Smileyfier;->addSmiley(Ljava/lang/String;IZ)V

    .line 88
    const-string v0, "B-)"

    const v1, 0x7f020034

    invoke-static {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/notification/Smileyfier;->addSmiley(Ljava/lang/String;IZ)V

    .line 89
    const-string v0, ":-o"

    const v1, 0x7f020035

    invoke-static {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/notification/Smileyfier;->addSmiley(Ljava/lang/String;IZ)V

    .line 90
    const-string v0, ":-P"

    const v1, 0x7f020036

    invoke-static {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/notification/Smileyfier;->addSmiley(Ljava/lang/String;IZ)V

    .line 91
    const-string v0, ":-D"

    const v1, 0x7f020037

    invoke-static {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/notification/Smileyfier;->addSmiley(Ljava/lang/String;IZ)V

    .line 92
    const-string v0, ";-)"

    const v1, 0x7f020038

    invoke-static {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/notification/Smileyfier;->addSmiley(Ljava/lang/String;IZ)V

    .line 93
    const-string v0, "o_O"

    const v1, 0x7f020039

    invoke-static {v0, v1, v3}, Lcom/sonymobile/smartconnect/hostapp/notification/Smileyfier;->addSmiley(Ljava/lang/String;IZ)V

    .line 94
    const-string v0, ":O"

    const v1, 0x7f02003a

    invoke-static {v0, v1, v3}, Lcom/sonymobile/smartconnect/hostapp/notification/Smileyfier;->addSmiley(Ljava/lang/String;IZ)V

    .line 97
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/notification/Smileyfier;->compilePattern()V

    .line 98
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addSmiley(Ljava/lang/String;IZ)V
    .locals 5
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "resId"    # I
    .param p2, "noseSearch"    # Z

    .prologue
    .line 46
    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/notification/Smileyfier;->mEmoticons:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    if-eqz p2, :cond_0

    .line 48
    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 49
    .local v0, "noseIndex":I
    if-lez v0, :cond_0

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 52
    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/notification/Smileyfier;->mEmoticons:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .end local v0    # "noseIndex":I
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method private static compilePattern()V
    .locals 6

    .prologue
    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .local v1, "sb":Ljava/lang/StringBuilder;
    sget-object v3, Lcom/sonymobile/smartconnect/hostapp/notification/Smileyfier;->mEmoticons:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 61
    .local v2, "text":Ljava/lang/String;
    const-string v3, "(\\Q%s\\E)|"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 64
    .end local v2    # "text":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lcom/sonymobile/smartconnect/hostapp/notification/Smileyfier;->mEmoticonPattern:Ljava/util/regex/Pattern;

    .line 66
    return-void
.end method

.method public static embedSmileys(Landroid/content/Context;Ljava/lang/String;)Landroid/text/Spannable;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    sget-object v5, Lcom/sonymobile/smartconnect/hostapp/notification/Smileyfier;->mEmoticonPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 136
    .local v2, "matcher":Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 138
    if-nez v0, :cond_1

    .line 139
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .end local v0    # "builder":Landroid/text/SpannableStringBuilder;
    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 142
    .restart local v0    # "builder":Landroid/text/SpannableStringBuilder;
    :cond_1
    const/4 v1, 0x1

    .local v1, "group":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v5

    if-gt v1, v5, :cond_0

    .line 143
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->start(I)I

    move-result v4

    .line 144
    .local v4, "start":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 145
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, "smileyText":Ljava/lang/String;
    invoke-static {p1, v3, v4}, Lcom/sonymobile/smartconnect/hostapp/notification/Smileyfier;->shouldConvert(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 150
    new-instance v6, Landroid/text/style/ImageSpan;

    sget-object v5, Lcom/sonymobile/smartconnect/hostapp/notification/Smileyfier;->mEmoticons:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v6, p0, v5}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    const/16 v7, 0x21

    invoke-virtual {v0, v6, v4, v5, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 142
    .end local v3    # "smileyText":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 157
    .end local v1    # "group":I
    .end local v4    # "start":I
    :cond_3
    return-object v0
.end method

.method public static embedUnicodeSmileys(Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const v14, 0x1f603

    const v13, 0x1f62e

    const v12, 0x1f60f

    const/4 v11, 0x0

    const v10, 0x1f60e

    .line 170
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 173
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v8, "\\Q:-@\\E"

    const v9, 0x1f620

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string v8, "\\Q:@\\E"

    const v9, 0x1f620

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v8, "\\Q:\'-(\\E"

    const v9, 0x1f622

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string v8, "\\Q:\'(\\E"

    const v9, 0x1f622

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string v8, "\\Q>:-)\\E"

    const v9, 0x1f608

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v8, "\\Q>:)\\E"

    const v9, 0x1f608

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v8, "\\Q:*)\\E"

    const v9, 0x1f61c

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string v8, "\\Q:-$\\E"

    const v9, 0x1f633

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v8, "\\Q:$\\E"

    const v9, 0x1f633

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string v8, "\\Q:-!\\E"

    const v9, 0x1f635

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string v8, "\\Q:!\\E"

    const v9, 0x1f635

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v8, "\\Q:-)\\E"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v8, "\\Q:)\\E"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string v8, "\\Q:|\\E"

    const v9, 0x1f611

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v8, "\\Q0:-)\\E"

    const v9, 0x1f607

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v8, "\\Q0:)\\E"

    const v9, 0x1f607

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v8, "\\Q:-*\\E"

    const v9, 0x1f618

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v8, "\\Q<3\\E"

    const/16 v9, 0x2764

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string v8, "\\Q-:)\\E"

    const v9, 0x1f62c

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string v8, "\\Q:-B\\E"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v8, "\\Q:B\\E"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string v8, "\\Q@-}--\\E"

    const v9, 0x1f339

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string v8, "\\Q:-(\\E"

    const v9, 0x1f61e

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v8, "\\Q:(\\E"

    const v9, 0x1f61e

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string v8, "\\Q:-#\\E"

    const v9, 0x1f637

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string v8, "\\Q:#\\E"

    const v9, 0x1f637

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string v8, "\\Q:-/\\E"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string v8, "\\Q:-S\\E"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v8, "\\Q:S\\E"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string v8, "\\QB-)\\E"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v8, "\\QB)\\E"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v8, "\\Q:-o\\E"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v8, "\\Q:o\\E"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string v8, "\\Q:-P\\E"

    const v9, 0x1f60b

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string v8, "\\Q:P\\E"

    const v9, 0x1f60b

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v8, "\\Q:-D\\E"

    const v9, 0x1f604

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v8, "\\Q:D\\E"

    const v9, 0x1f604

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v8, "\\Q;-)\\E"

    const v9, 0x1f609

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string v8, "\\Q;)\\E"

    const v9, 0x1f609

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string v8, "\\Qo_O\\E"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string v8, "\\Q:O\\E"

    const v9, 0x1f606

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 217
    .local v1, "keySetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 218
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 219
    .local v6, "smiley":Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    .line 220
    .local v0, "chars":[C
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0, v6, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 221
    goto :goto_0

    .line 224
    .end local v0    # "chars":[C
    .end local v6    # "smiley":Ljava/lang/String;
    :cond_0
    const-string v3, ":/"

    .line 225
    .local v3, "skepticalSmiley":Ljava/lang/String;
    const v5, 0x1f60f

    .line 226
    .local v5, "skepticalSmileyUnicode":I
    invoke-virtual {p0, v3, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 227
    .local v4, "skepticalSmileyIndex":I
    move v7, v4

    .line 229
    .local v7, "startPos":I
    :goto_1
    const/4 v8, -0x1

    if-eq v4, v8, :cond_3

    .line 230
    add-int/lit8 v7, v7, 0x2

    .line 232
    invoke-static {v5}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    .line 234
    .restart local v0    # "chars":[C
    add-int/lit8 v8, v4, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_2

    .line 235
    add-int/lit8 v8, v4, 0x2

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2f

    if-eq v8, v9, :cond_1

    .line 236
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v4, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 242
    :cond_1
    :goto_2
    invoke-virtual {p0, v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    goto :goto_1

    .line 239
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 245
    .end local v0    # "chars":[C
    :cond_3
    return-object p0
.end method

.method public static getSmileyImages(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/notification/Smiley;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v4, "smileys":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/notification/Smiley;>;"
    sget-object v6, Lcom/sonymobile/smartconnect/hostapp/notification/Smileyfier;->mEmoticonPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 109
    .local v1, "matcher":Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 111
    const/4 v0, 0x1

    .local v0, "group":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v6

    if-gt v0, v6, :cond_0

    .line 112
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result v5

    .line 113
    .local v5, "start":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 114
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, "smileyText":Ljava/lang/String;
    invoke-static {p0, v3, v5}, Lcom/sonymobile/smartconnect/hostapp/notification/Smileyfier;->shouldConvert(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 120
    new-instance v2, Lcom/sonymobile/smartconnect/hostapp/notification/Smiley;

    invoke-direct {v2}, Lcom/sonymobile/smartconnect/hostapp/notification/Smiley;-><init>()V

    .line 121
    .local v2, "smiley":Lcom/sonymobile/smartconnect/hostapp/notification/Smiley;
    iput v5, v2, Lcom/sonymobile/smartconnect/hostapp/notification/Smiley;->position:I

    .line 122
    sget-object v6, Lcom/sonymobile/smartconnect/hostapp/notification/Smileyfier;->mEmoticons:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v2, Lcom/sonymobile/smartconnect/hostapp/notification/Smiley;->resourceId:I

    .line 123
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    iput v6, v2, Lcom/sonymobile/smartconnect/hostapp/notification/Smiley;->characterLength:I

    .line 124
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    .end local v2    # "smiley":Lcom/sonymobile/smartconnect/hostapp/notification/Smiley;
    .end local v3    # "smileyText":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 130
    .end local v0    # "group":I
    .end local v5    # "start":I
    :cond_2
    return-object v4
.end method

.method private static shouldConvert(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "smiley"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 162
    const-string v0, ":/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_0

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p2, -0x1

    if-lez v0, :cond_0

    add-int/lit8 v0, p2, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 164
    const/4 v0, 0x0

    .line 166
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
