.class public Lcom/duoku/platform/download/utils/PinyinUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getPinYin(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    invoke-static {}, Lcom/duoku/platform/download/utils/HanziToPinyin;->getInstance()Lcom/duoku/platform/download/utils/HanziToPinyin;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/duoku/platform/download/utils/HanziToPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 25
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1f

    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_28

    .line 39
    :cond_1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 27
    :cond_28
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/utils/HanziToPinyin$Token;

    .line 29
    const/4 v3, 0x2

    iget v4, v0, Lcom/duoku/platform/download/utils/HanziToPinyin$Token;->type:I

    if-ne v3, v4, :cond_39

    .line 31
    iget-object v0, v0, Lcom/duoku/platform/download/utils/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 35
    :cond_39
    iget-object v0, v0, Lcom/duoku/platform/download/utils/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19
.end method

.method public static getPinyin(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x0

    .line 53
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 54
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 55
    if-le v1, v3, :cond_11

    .line 57
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 59
    :cond_11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v1, v0

    .line 60
    :goto_16
    if-lt v1, v3, :cond_28

    .line 81
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_23

    .line 83
    const-string v0, "#"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    :cond_23
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 64
    :cond_28
    :try_start_28
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/download/utils/PinyinUtil;->getPinYin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 66
    const/16 v4, 0x7a

    if-gt v0, v4, :cond_41

    const/16 v4, 0x61

    if-ge v0, v4, :cond_4a

    .line 68
    :cond_41
    const-string v0, "#"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    :goto_46
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_16

    .line 72
    :cond_4a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_4d} :catch_4e

    goto :goto_46

    .line 75
    :catch_4e
    move-exception v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_46
.end method
