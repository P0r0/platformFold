.class public Lcom/duoku/platform/download/utils/StringUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static InputStreamToString(Ljava/io/InputStream;Z)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 140
    .line 141
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 145
    const/16 v0, 0x400

    :try_start_8
    new-array v0, v0, [B

    .line 147
    :goto_a
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_20

    .line 152
    if-eqz p1, :cond_2d

    .line 154
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/download/utils/StringUtil;->unGZip([B)[B

    move-result-object v0

    move-object v2, v0

    .line 160
    :goto_1c
    if-nez v2, :cond_33

    move-object v0, v1

    .line 172
    :goto_1f
    return-object v0

    .line 149
    :cond_20
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_24} :catch_25

    goto :goto_a

    .line 168
    :catch_25
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 170
    :goto_29
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1f

    .line 158
    :cond_2d
    :try_start_2d
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    move-object v2, v0

    goto :goto_1c

    .line 164
    :cond_33
    new-instance v0, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v0, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_3a} :catch_25

    .line 165
    :try_start_3a
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 166
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_40} :catch_41

    goto :goto_1f

    .line 168
    :catch_41
    move-exception v1

    goto :goto_29
.end method

.method public static ToDBC(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    const/16 v5, 0x3000

    const/16 v4, 0x20

    .line 407
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 408
    const/4 v0, 0x0

    :goto_9
    array-length v2, v1

    if-lt v0, v2, :cond_12

    .line 419
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    .line 410
    :cond_12
    aget-char v2, v1, v0

    if-eq v2, v5, :cond_20

    aget-char v2, v1, v0

    const/16 v3, 0x9

    if-eq v2, v3, :cond_20

    aget-char v2, v1, v0

    if-ne v2, v4, :cond_25

    .line 413
    :cond_20
    aput-char v5, v1, v0

    .line 408
    :cond_22
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 416
    :cond_25
    aget-char v2, v1, v0

    if-le v2, v4, :cond_22

    aget-char v2, v1, v0

    const/16 v3, 0x7f

    if-ge v2, v3, :cond_22

    .line 417
    aget-char v2, v1, v0

    const v3, 0xfee0

    add-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v1, v0

    goto :goto_22
.end method

.method public static checkValidFeedbackContent(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 269
    const-string v0, "\\s*|\t|\r|\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 270
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 271
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 273
    const/4 v0, 0x1

    .line 275
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_18

    .line 277
    const/4 v0, 0x0

    .line 279
    :cond_18
    return v0
.end method

.method public static checkValidMailaddress(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 248
    const-string v0, "\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*"

    .line 249
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 250
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    .line 252
    return v0
.end method

.method public static checkValidNickName(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 218
    const-string v0, "^[\\u4E00-\\u9FA5\\uF900-\\uFA2Da-z0-9A-Z]{2,12}$"

    .line 219
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 220
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    .line 222
    if-nez v0, :cond_11

    .line 231
    :goto_10
    return v0

    .line 227
    :cond_11
    const-string v0, "[#&*\uff01!\u3001/\"@,\uff0c\u3002.%<>:\uff1a\u3010\u3011 ]"

    .line 228
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 229
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    .line 231
    if-eqz v0, :cond_23

    const/4 v0, 0x0

    goto :goto_10

    :cond_23
    const/4 v0, 0x1

    goto :goto_10
.end method

.method public static checkValidPassword(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 206
    const-string v0, "^[a-z0-9A-Z]{6,16}$"

    .line 207
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 208
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    .line 210
    return v0
.end method

.method public static checkValidPhoneNum(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 238
    const-string v0, "^1[3458]\\d{9}$"

    .line 239
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 240
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    .line 242
    return v0
.end method

.method public static checkValidUserName(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 185
    const-string v0, "^[a-z0-9A-Z]{4,14}$"

    .line 186
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 187
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    .line 189
    return v0
.end method

.method public static checkValidUserName2(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 196
    const-string v0, "^1\\d{10}$"

    .line 197
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 198
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    .line 200
    if-eqz v0, :cond_12

    const/4 v0, 0x0

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public static checkValidVerifyCode(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 259
    const-string v0, "^\\d{4}$"

    .line 260
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 261
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    .line 263
    return v0
.end method

.method public static convertEscapeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 45
    const-string v0, "\\[BR\\]"

    const-string v1, "\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\[&nbsp;\\]"

    const-string v2, "    "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&nbsp;"

    const-string v2, "    "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 46
    return-object v0
.end method

.method public static formatTimes(J)Ljava/lang/String;
    .registers 4

    .prologue
    .line 27
    const-wide/16 v0, 0x2710

    div-long v0, p0, v0

    long-to-int v0, v0

    .line 28
    if-lez v0, :cond_1b

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\u4e07+\u6b21\u4e0b\u8f7d"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 34
    :goto_1a
    return-object v0

    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\u6b21\u4e0b\u8f7d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a
.end method

.method public static getColor(Ljava/lang/String;)I
    .registers 6

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x2

    const/16 v3, 0x10

    .line 177
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 178
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 179
    const/4 v2, 0x6

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 177
    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method public static getDisplayDownloadtimes(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    const-wide/32 v4, 0x5f5e100

    const-wide/16 v2, 0x2710

    .line 344
    .line 348
    :try_start_5
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 349
    cmp-long v2, v0, v2

    if-ltz v2, :cond_27

    .line 353
    cmp-long v2, v0, v4

    if-gez v2, :cond_28

    .line 355
    new-instance v2, Ljava/lang/StringBuilder;

    const-wide/16 v4, 0x2710

    div-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\u4e07+"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 368
    :cond_27
    :goto_27
    return-object p0

    .line 359
    :cond_28
    new-instance v2, Ljava/lang/StringBuilder;

    const-wide/32 v4, 0x5f5e100

    div-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\u4ebf+"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3e
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_3e} :catch_40

    move-result-object p0

    goto :goto_27

    .line 363
    :catch_40
    move-exception v0

    goto :goto_27
.end method

.method public static getDisplaySize(J)Ljava/lang/String;
    .registers 8

    .prologue
    const/high16 v4, 0x42c80000    # 100.0f

    .line 320
    const/4 v0, 0x0

    .line 322
    const-wide/16 v2, 0x400

    cmp-long v1, p0, v2

    if-gez v1, :cond_1d

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 339
    :cond_1c
    :goto_1c
    return-object v0

    .line 326
    :cond_1d
    const-wide/32 v2, 0x100000

    cmp-long v1, p0, v2

    if-gez v1, :cond_40

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    long-to-float v1, p0

    const/high16 v2, 0x44800000    # 1024.0f

    div-float/2addr v1, v2

    mul-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    .line 330
    :cond_40
    const-wide/32 v2, 0x40000000

    cmp-long v1, p0, v2

    if-gez v1, :cond_63

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    long-to-float v1, p0

    const/high16 v2, 0x49800000    # 1048576.0f

    div-float/2addr v1, v2

    mul-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    .line 334
    :cond_63
    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-gez v1, :cond_1c

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    long-to-float v1, p0

    const/high16 v2, 0x4e800000

    div-float/2addr v1, v2

    mul-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "GB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c
.end method

.method public static getDisplaySize(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    const/high16 v4, 0x42c80000    # 100.0f

    .line 284
    .line 287
    :try_start_2
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 288
    const-wide/16 v2, 0x400

    cmp-long v2, v0, v2

    if-gez v2, :cond_20

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 309
    :cond_1f
    :goto_1f
    return-object p0

    .line 292
    :cond_20
    const-wide/32 v2, 0x100000

    cmp-long v2, v0, v2

    if-gez v2, :cond_43

    .line 294
    new-instance v2, Ljava/lang/StringBuilder;

    long-to-float v0, v0

    const/high16 v1, 0x44800000    # 1024.0f

    div-float/2addr v0, v1

    mul-float/2addr v0, v4

    float-to-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "KB"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1f

    .line 296
    :cond_43
    const-wide/32 v2, 0x40000000

    cmp-long v2, v0, v2

    if-gez v2, :cond_66

    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    long-to-float v0, v0

    const/high16 v1, 0x49800000    # 1048576.0f

    div-float/2addr v0, v1

    mul-float/2addr v0, v4

    float-to-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "MB"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1f

    .line 300
    :cond_66
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1f

    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    long-to-float v0, v0

    const/high16 v1, 0x4e800000

    div-float/2addr v0, v1

    mul-float/2addr v0, v4

    float-to-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "GB"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_86
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_86} :catch_88

    move-result-object p0

    goto :goto_1f

    .line 305
    :catch_88
    move-exception v0

    goto :goto_1f
.end method

.method public static getDisplaySize2(J)Ljava/lang/String;
    .registers 4

    .prologue
    .line 314
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 315
    return-object v0
.end method

.method public static getPlayTime(J)Ljava/lang/String;
    .registers 14

    .prologue
    const-wide/16 v4, 0x3c

    .line 463
    const-wide/16 v0, 0x3e8

    .line 465
    mul-long v2, v4, v0

    .line 467
    mul-long/2addr v4, v2

    .line 469
    const-wide/16 v6, 0x18

    mul-long/2addr v6, v4

    .line 471
    const-wide/16 v8, 0x1e

    mul-long/2addr v8, v6

    .line 473
    const-wide/16 v10, 0xc

    mul-long/2addr v10, v8

    .line 475
    cmp-long v0, p0, v0

    if-ltz v0, :cond_1b

    cmp-long v0, p0, v2

    if-gez v0, :cond_1b

    .line 477
    const-string v0, "\u521a\u521a\u73a9\u8fc7"

    .line 499
    :goto_1a
    return-object v0

    .line 479
    :cond_1b
    cmp-long v0, p0, v2

    if-ltz v0, :cond_39

    cmp-long v0, p0, v4

    if-gez v0, :cond_39

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    div-long v2, p0, v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\u5206\u949f\u524d\u73a9\u8fc7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    .line 483
    :cond_39
    cmp-long v0, p0, v4

    if-ltz v0, :cond_57

    cmp-long v0, p0, v6

    if-gez v0, :cond_57

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    div-long v2, p0, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\u5c0f\u65f6\u524d\u73a9\u8fc7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    .line 487
    :cond_57
    cmp-long v0, p0, v6

    if-ltz v0, :cond_75

    cmp-long v0, p0, v8

    if-gez v0, :cond_75

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    div-long v2, p0, v6

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\u5929\u524d\u73a9\u8fc7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    .line 491
    :cond_75
    cmp-long v0, p0, v8

    if-ltz v0, :cond_93

    cmp-long v0, p0, v10

    if-gez v0, :cond_93

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    div-long v2, p0, v8

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\u6708\u524d\u73a9\u8fc7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    .line 495
    :cond_93
    cmp-long v0, p0, v10

    if-lez v0, :cond_9a

    .line 497
    const-string v0, "\u672a\u542f\u52a8\u8fc7"

    goto :goto_1a

    .line 499
    :cond_9a
    const-string v0, "\u672a\u542f\u52a8\u8fc7"

    goto/16 :goto_1a
.end method

.method public static gzip([B)[B
    .registers 5

    .prologue
    .line 84
    const/4 v1, 0x0

    .line 87
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 88
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 89
    invoke-virtual {v0, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 90
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 91
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 92
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_1c

    move-result-object v0

    .line 93
    :try_start_18
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_24

    .line 99
    :goto_1b
    return-object v0

    .line 95
    :catch_1c
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 97
    :goto_20
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1b

    .line 95
    :catch_24
    move-exception v1

    goto :goto_20
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 439
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_a

    .line 441
    :cond_8
    const/4 v0, 0x1

    .line 444
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static measureTextViewTextLength(Landroid/widget/TextView;Ljava/lang/String;)F
    .registers 4

    .prologue
    .line 455
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 456
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 457
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public static parseInt(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 373
    const/4 v0, 0x0

    .line 376
    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_6

    move-result v0

    .line 382
    :goto_5
    return v0

    .line 378
    :catch_6
    move-exception v1

    goto :goto_5
.end method

.method public static stringFilter(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 430
    const-string v0, "\u3010"

    const-string v1, "["

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u3011"

    const-string v2, "]"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\uff01"

    const-string v2, "!"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\uff1a"

    const-string v2, ":"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 431
    const-string v1, "[\u300e\u300f]"

    .line 432
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 433
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 434
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static trim(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 56
    const-string v0, "\u00a0"

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u3000"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static trimAllSpace(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 69
    if-nez p0, :cond_3

    .line 73
    :goto_2
    return-object p0

    :cond_3
    const-string v0, "^[\\s\u3000]*|[\\s\u3000]*$"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2
.end method

.method public static unGZip([B)[B
    .registers 9

    .prologue
    .line 109
    const/4 v1, 0x0

    .line 112
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 113
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 114
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 116
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 117
    :goto_14
    const/4 v5, 0x0

    array-length v6, v0

    invoke-virtual {v3, v0, v5, v6}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2e

    .line 121
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_33

    move-result-object v0

    .line 122
    :try_start_21
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 123
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 124
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 125
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2d} :catch_3b

    .line 135
    :goto_2d
    return-object v0

    .line 119
    :cond_2e
    const/4 v6, 0x0

    :try_start_2f
    invoke-virtual {v4, v0, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_33

    goto :goto_14

    .line 127
    :catch_33
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    .line 129
    :goto_37
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2d

    .line 127
    :catch_3b
    move-exception v1

    goto :goto_37
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 3

    .prologue
    .line 387
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 390
    :try_start_5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_a

    move-result-object v0

    .line 396
    :goto_9
    return-object v0

    .line 392
    :catch_a
    move-exception v1

    goto :goto_9
.end method
