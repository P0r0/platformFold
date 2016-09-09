.class public Lcom/ta/utdid2/android/utils/StringUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 12
    if-eqz p0, :cond_bc

    .line 13
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 14
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    :goto_c
    return-object v0

    .line 15
    :cond_d
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_25

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 17
    :cond_25
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_3d

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 19
    :cond_3d
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_55

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 21
    :cond_55
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_6d

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 23
    :cond_6d
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_85

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 25
    :cond_85
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_9e

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 27
    :cond_9e
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_aa

    .line 28
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 29
    :cond_aa
    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_b6

    .line 30
    check-cast p0, Ljava/lang/Character;

    invoke-virtual {p0}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 32
    :cond_b6
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 35
    :cond_bc
    const-string v0, ""

    goto/16 :goto_c
.end method

.method public static hashCode(Ljava/lang/String;)I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_17

    .line 41
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    move v1, v0

    .line 42
    :goto_c
    array-length v3, v2

    if-ge v0, v3, :cond_18

    .line 43
    mul-int/lit8 v1, v1, 0x1f

    aget-char v3, v2, v0

    add-int/2addr v1, v3

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_17
    move v1, v0

    .line 46
    :cond_18
    return v1
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 5
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    .line 6
    const/4 v0, 0x0

    .line 8
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method
