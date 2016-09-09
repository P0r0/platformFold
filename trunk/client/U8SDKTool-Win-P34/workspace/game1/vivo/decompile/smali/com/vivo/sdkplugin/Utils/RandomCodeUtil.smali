.class public Lcom/vivo/sdkplugin/Utils/RandomCodeUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSixRandomNum()Ljava/lang/String;
    .registers 6

    const-string v1, ""

    const/4 v0, 0x0

    :goto_3
    const/4 v2, 0x6

    if-lt v0, v2, :cond_7

    return-object v1

    :cond_7
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4022000000000000L    # 9.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public static get16RandomCode()Ljava/lang/String;
    .registers 3

    const-string v1, ""

    const/4 v0, 0x0

    :goto_3
    const/16 v2, 0x10

    if-lt v0, v2, :cond_c

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_c
    invoke-static {}, Lcom/vivo/sdkplugin/Utils/RandomCodeUtil;->getRandomChar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public static getRandomChar()Ljava/lang/String;
    .registers 6

    const-wide/high16 v4, 0x4039000000000000L    # 25.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    packed-switch v0, :pswitch_data_4e

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4022000000000000L    # 9.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :goto_20
    return-object v0

    :pswitch_21
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    mul-double/2addr v0, v4

    const-wide v2, 0x4050400000000000L    # 65.0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    :pswitch_37
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    mul-double/2addr v0, v4

    const-wide v2, 0x4058400000000000L    # 97.0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_21
        :pswitch_37
    .end packed-switch
.end method

.method public static getSixRandomCode()Ljava/lang/String;
    .registers 3

    const-string v1, ""

    const/4 v0, 0x0

    :goto_3
    const/4 v2, 0x6

    if-lt v0, v2, :cond_7

    return-object v1

    :cond_7
    invoke-static {}, Lcom/vivo/sdkplugin/Utils/RandomCodeUtil;->getRandomChar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public static getTwelveRandomCode()Ljava/lang/String;
    .registers 3

    const-string v1, ""

    const/4 v0, 0x0

    :goto_3
    const/16 v2, 0xc

    if-lt v0, v2, :cond_8

    return-object v1

    :cond_8
    invoke-static {}, Lcom/vivo/sdkplugin/Utils/RandomCodeUtil;->getRandomChar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public static getthreeRandomCode()Ljava/lang/String;
    .registers 3

    const-string v1, ""

    const/4 v0, 0x0

    :goto_3
    const/4 v2, 0x3

    if-lt v0, v2, :cond_b

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    invoke-static {}, Lcom/vivo/sdkplugin/Utils/RandomCodeUtil;->getRandomChar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public static main([Ljava/lang/String;)V
    .registers 5

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lcom/vivo/sdkplugin/Utils/RandomCodeUtil;->createSixRandomNum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-wide v2, 0x4020cccccccccccdL    # 8.4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintStream;->println(J)V

    return-void
.end method
