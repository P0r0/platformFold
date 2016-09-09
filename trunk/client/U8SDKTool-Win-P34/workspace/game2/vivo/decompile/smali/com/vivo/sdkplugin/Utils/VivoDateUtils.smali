.class public Lcom/vivo/sdkplugin/Utils/VivoDateUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cmpCurTimeToLast(J)Ljava/lang/String;
    .registers 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    cmp-long v2, v0, v2

    if-gez v2, :cond_11

    const-string v0, "\u521a\u521a"

    :goto_10
    return-object v0

    :cond_11
    const-wide/16 v2, 0x3c

    div-long v2, v0, v2

    const-wide/16 v4, 0x3c

    cmp-long v2, v2, v4

    if-gez v2, :cond_32

    new-instance v2, Ljava/lang/StringBuilder;

    const-wide/16 v4, 0x3c

    div-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\u5206\u949f\u524d"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_32
    const-wide/16 v2, 0x3c

    div-long v2, v0, v2

    const-wide/16 v4, 0x3c

    div-long/2addr v2, v4

    const-wide/16 v4, 0x18

    cmp-long v2, v2, v4

    if-gez v2, :cond_69

    const-wide/16 v2, 0x3c

    div-long v2, v0, v2

    const-wide/16 v4, 0x3c

    rem-long/2addr v2, v4

    const-wide/16 v4, 0x3c

    div-long/2addr v0, v4

    const-wide/16 v4, 0x3c

    div-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_55

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    :cond_55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\u65f6\u524d"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_69
    const-wide/16 v2, 0x3c

    div-long v2, v0, v2

    const-wide/16 v4, 0x3c

    div-long/2addr v2, v4

    const-wide/16 v4, 0x18

    div-long/2addr v2, v4

    const-wide/16 v4, 0x1e

    cmp-long v2, v2, v4

    if-gez v2, :cond_aa

    const-wide/16 v2, 0x3c

    div-long v2, v0, v2

    const-wide/16 v4, 0x3c

    div-long/2addr v2, v4

    const-wide/16 v4, 0x18

    rem-long/2addr v2, v4

    const-wide/16 v4, 0x3c

    div-long/2addr v0, v4

    const-wide/16 v4, 0x3c

    div-long/2addr v0, v4

    const-wide/16 v4, 0x18

    div-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_95

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    :cond_95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\u5929\u524d"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_10

    :cond_aa
    const-wide/16 v2, 0x3c

    div-long v2, v0, v2

    const-wide/16 v4, 0x3c

    div-long/2addr v2, v4

    const-wide/16 v4, 0x18

    div-long/2addr v2, v4

    const-wide/16 v4, 0x1e

    div-long/2addr v2, v4

    const-wide/16 v4, 0xc

    cmp-long v2, v2, v4

    if-gez v2, :cond_f4

    const-wide/16 v2, 0x3c

    div-long v2, v0, v2

    const-wide/16 v4, 0x3c

    div-long/2addr v2, v4

    const-wide/16 v4, 0x18

    div-long/2addr v2, v4

    const-wide/16 v4, 0x1e

    rem-long/2addr v2, v4

    const-wide/16 v4, 0x3c

    div-long/2addr v0, v4

    const-wide/16 v4, 0x3c

    div-long/2addr v0, v4

    const-wide/16 v4, 0x18

    div-long/2addr v0, v4

    const-wide/16 v4, 0x1e

    div-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_df

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    :cond_df
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\u6708\u524d"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_10

    :cond_f4
    const-wide/16 v2, 0x3c

    div-long v2, v0, v2

    const-wide/16 v4, 0x3c

    div-long/2addr v2, v4

    const-wide/16 v4, 0x18

    div-long/2addr v2, v4

    const-wide/16 v4, 0x1e

    div-long/2addr v2, v4

    const-wide/16 v4, 0xc

    rem-long/2addr v2, v4

    const-wide/16 v4, 0x3c

    div-long/2addr v0, v4

    const-wide/16 v4, 0x3c

    div-long/2addr v0, v4

    const-wide/16 v4, 0x18

    div-long/2addr v0, v4

    const-wide/16 v4, 0x1e

    div-long/2addr v0, v4

    const-wide/16 v4, 0xc

    div-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_11c

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    :cond_11c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\u5e74\u524d"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_10
.end method

.method public static formatTime(J)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
