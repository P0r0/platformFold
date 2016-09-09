.class public Lmobisocial/omlib/model/RawIdentity;
.super Ljava/lang/Object;
.source "RawIdentity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlib/model/RawIdentity$IdentityType;
    }
.end annotation


# instance fields
.field public final type:Lmobisocial/omlib/model/RawIdentity$IdentityType;

.field public final unknownType:Ljava/lang/String;

.field public final value:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "unknownType"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lmobisocial/omlib/model/RawIdentity;->unknownType:Ljava/lang/String;

    .line 88
    iput-object p2, p0, Lmobisocial/omlib/model/RawIdentity;->value:Ljava/lang/String;

    .line 89
    sget-object v0, Lmobisocial/omlib/model/RawIdentity$IdentityType;->Unknown:Lmobisocial/omlib/model/RawIdentity$IdentityType;

    iput-object v0, p0, Lmobisocial/omlib/model/RawIdentity;->type:Lmobisocial/omlib/model/RawIdentity$IdentityType;

    .line 90
    return-void
.end method

.method private constructor <init>(Lmobisocial/omlib/model/RawIdentity$IdentityType;Ljava/lang/String;)V
    .registers 4
    .param p1, "type"    # Lmobisocial/omlib/model/RawIdentity$IdentityType;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lmobisocial/omlib/model/RawIdentity;->type:Lmobisocial/omlib/model/RawIdentity$IdentityType;

    .line 82
    iput-object p2, p0, Lmobisocial/omlib/model/RawIdentity;->value:Ljava/lang/String;

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lmobisocial/omlib/model/RawIdentity;->unknownType:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public static create(Ljava/lang/String;)Lmobisocial/omlib/model/RawIdentity;
    .registers 2
    .param p0, "principal"    # Ljava/lang/String;

    .prologue
    .line 155
    sget-object v0, Lmobisocial/omlib/model/RawIdentity$IdentityType;->Unknown:Lmobisocial/omlib/model/RawIdentity$IdentityType;

    invoke-static {p0, v0}, Lmobisocial/omlib/model/RawIdentity;->create(Ljava/lang/String;Lmobisocial/omlib/model/RawIdentity$IdentityType;)Lmobisocial/omlib/model/RawIdentity;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lmobisocial/omlib/model/RawIdentity;
    .registers 4
    .param p0, "principal"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 162
    invoke-static {p1}, Lmobisocial/omlib/model/RawIdentity;->typeForString(Ljava/lang/String;)Lmobisocial/omlib/model/RawIdentity$IdentityType;

    move-result-object v0

    .line 163
    .local v0, "identityType":Lmobisocial/omlib/model/RawIdentity$IdentityType;
    if-nez v0, :cond_c

    .line 164
    new-instance v1, Lmobisocial/omlib/model/RawIdentity;

    invoke-direct {v1, p1, p0}, Lmobisocial/omlib/model/RawIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :goto_b
    return-object v1

    :cond_c
    new-instance v1, Lmobisocial/omlib/model/RawIdentity;

    invoke-direct {v1, v0, p0}, Lmobisocial/omlib/model/RawIdentity;-><init>(Lmobisocial/omlib/model/RawIdentity$IdentityType;Ljava/lang/String;)V

    goto :goto_b
.end method

.method public static create(Ljava/lang/String;Lmobisocial/omlib/model/RawIdentity$IdentityType;)Lmobisocial/omlib/model/RawIdentity;
    .registers 7
    .param p0, "principal"    # Ljava/lang/String;
    .param p1, "idType"    # Lmobisocial/omlib/model/RawIdentity$IdentityType;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 170
    sget-object v2, Lmobisocial/omlib/model/RawIdentity$IdentityType;->Longdan:Lmobisocial/omlib/model/RawIdentity$IdentityType;

    if-ne p1, v2, :cond_1a

    .line 171
    const-string v2, "system"

    if-ne p0, v2, :cond_12

    .line 172
    new-instance v2, Lmobisocial/omlib/model/RawIdentity;

    sget-object v3, Lmobisocial/omlib/model/RawIdentity$IdentityType;->Server:Lmobisocial/omlib/model/RawIdentity$IdentityType;

    invoke-direct {v2, v3, v4}, Lmobisocial/omlib/model/RawIdentity;-><init>(Lmobisocial/omlib/model/RawIdentity$IdentityType;Ljava/lang/String;)V

    .line 204
    :goto_11
    return-object v2

    .line 173
    :cond_12
    new-instance v2, Lmobisocial/omlib/model/RawIdentity;

    sget-object v3, Lmobisocial/omlib/model/RawIdentity$IdentityType;->Longdan:Lmobisocial/omlib/model/RawIdentity$IdentityType;

    invoke-direct {v2, v3, p0}, Lmobisocial/omlib/model/RawIdentity;-><init>(Lmobisocial/omlib/model/RawIdentity$IdentityType;Ljava/lang/String;)V

    goto :goto_11

    .line 175
    :cond_1a
    sget-object v2, Lmobisocial/omlib/model/RawIdentity$IdentityType;->Hashed:Lmobisocial/omlib/model/RawIdentity$IdentityType;

    if-ne p1, v2, :cond_26

    .line 176
    new-instance v2, Lmobisocial/omlib/model/RawIdentity;

    sget-object v3, Lmobisocial/omlib/model/RawIdentity$IdentityType;->Hashed:Lmobisocial/omlib/model/RawIdentity$IdentityType;

    invoke-direct {v2, v3, p0}, Lmobisocial/omlib/model/RawIdentity;-><init>(Lmobisocial/omlib/model/RawIdentity$IdentityType;Ljava/lang/String;)V

    goto :goto_11

    .line 178
    :cond_26
    sget-object v2, Lmobisocial/omlib/model/RawIdentity$IdentityType;->Server:Lmobisocial/omlib/model/RawIdentity$IdentityType;

    if-ne p1, v2, :cond_32

    .line 179
    new-instance v2, Lmobisocial/omlib/model/RawIdentity;

    sget-object v3, Lmobisocial/omlib/model/RawIdentity$IdentityType;->Server:Lmobisocial/omlib/model/RawIdentity$IdentityType;

    invoke-direct {v2, v3, v4}, Lmobisocial/omlib/model/RawIdentity;-><init>(Lmobisocial/omlib/model/RawIdentity$IdentityType;Ljava/lang/String;)V

    goto :goto_11

    .line 181
    :cond_32
    sget-object v2, Lmobisocial/omlib/model/RawIdentity$IdentityType;->Facebook:Lmobisocial/omlib/model/RawIdentity$IdentityType;

    if-ne p1, v2, :cond_41

    .line 182
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 183
    new-instance v2, Lmobisocial/omlib/model/RawIdentity;

    sget-object v3, Lmobisocial/omlib/model/RawIdentity$IdentityType;->Facebook:Lmobisocial/omlib/model/RawIdentity$IdentityType;

    invoke-direct {v2, v3, p0}, Lmobisocial/omlib/model/RawIdentity;-><init>(Lmobisocial/omlib/model/RawIdentity$IdentityType;Ljava/lang/String;)V

    goto :goto_11

    .line 186
    :cond_41
    sget-object v2, Lmobisocial/omlib/model/RawIdentity$IdentityType;->Email:Lmobisocial/omlib/model/RawIdentity$IdentityType;

    if-eq p1, v2, :cond_61

    sget-object v2, Lmobisocial/omlib/model/RawIdentity$IdentityType;->Unknown:Lmobisocial/omlib/model/RawIdentity$IdentityType;

    if-ne p1, v2, :cond_6d

    const-string v2, "@"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .local v0, "i":I
    if-eq v0, v3, :cond_6d

    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_6d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_6d

    .line 187
    .end local v0    # "i":I
    :cond_61
    new-instance v2, Lmobisocial/omlib/model/RawIdentity;

    sget-object v3, Lmobisocial/omlib/model/RawIdentity$IdentityType;->Email:Lmobisocial/omlib/model/RawIdentity$IdentityType;

    invoke-static {p0}, Lmobisocial/omlib/model/RawIdentity;->normalizeEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lmobisocial/omlib/model/RawIdentity;-><init>(Lmobisocial/omlib/model/RawIdentity$IdentityType;Ljava/lang/String;)V

    goto :goto_11

    .line 189
    :cond_6d
    sget-object v2, Lmobisocial/omlib/model/RawIdentity$IdentityType;->PhoneNumber:Lmobisocial/omlib/model/RawIdentity$IdentityType;

    if-eq p1, v2, :cond_75

    sget-object v2, Lmobisocial/omlib/model/RawIdentity$IdentityType;->Unknown:Lmobisocial/omlib/model/RawIdentity$IdentityType;

    if-ne p1, v2, :cond_85

    .line 191
    :cond_75
    :try_start_75
    invoke-static {p0}, Lmobisocial/omlib/model/RawIdentity;->normalizePhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, "phone":Ljava/lang/String;
    if-nez v1, :cond_7c

    .line 194
    move-object v1, p0

    .line 195
    :cond_7c
    new-instance v2, Lmobisocial/omlib/model/RawIdentity;

    sget-object v3, Lmobisocial/omlib/model/RawIdentity$IdentityType;->PhoneNumber:Lmobisocial/omlib/model/RawIdentity$IdentityType;

    invoke-direct {v2, v3, v1}, Lmobisocial/omlib/model/RawIdentity;-><init>(Lmobisocial/omlib/model/RawIdentity$IdentityType;Ljava/lang/String;)V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_83} :catch_84

    goto :goto_11

    .line 196
    .end local v1    # "phone":Ljava/lang/String;
    :catch_84
    move-exception v2

    .line 199
    :cond_85
    sget-object v2, Lmobisocial/omlib/model/RawIdentity$IdentityType;->OmletId:Lmobisocial/omlib/model/RawIdentity$IdentityType;

    if-ne p1, v2, :cond_91

    .line 204
    new-instance v2, Lmobisocial/omlib/model/RawIdentity;

    sget-object v3, Lmobisocial/omlib/model/RawIdentity$IdentityType;->OmletId:Lmobisocial/omlib/model/RawIdentity$IdentityType;

    invoke-direct {v2, v3, p0}, Lmobisocial/omlib/model/RawIdentity;-><init>(Lmobisocial/omlib/model/RawIdentity$IdentityType;Ljava/lang/String;)V

    goto :goto_11

    .line 206
    :cond_91
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not deduce identity type for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static create(Lmobisocial/longdan/LDProtocols$LDIdentity;)Lmobisocial/omlib/model/RawIdentity;
    .registers 3
    .param p0, "identity"    # Lmobisocial/longdan/LDProtocols$LDIdentity;

    .prologue
    .line 151
    iget-object v0, p0, Lmobisocial/longdan/LDProtocols$LDIdentity;->Principal:Ljava/lang/String;

    iget-object v1, p0, Lmobisocial/longdan/LDProtocols$LDIdentity;->Type:Ljava/lang/String;

    invoke-static {v0, v1}, Lmobisocial/omlib/model/RawIdentity;->create(Ljava/lang/String;Ljava/lang/String;)Lmobisocial/omlib/model/RawIdentity;

    move-result-object v0

    return-object v0
.end method

.method static normalizeEmail(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "email"    # Ljava/lang/String;

    .prologue
    .line 210
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static normalizePhone(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "phone"    # Ljava/lang/String;

    .prologue
    .line 214
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lmobisocial/util/PlatformUtils;->normalizePhoneNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static typeForString(Ljava/lang/String;)Lmobisocial/omlib/model/RawIdentity$IdentityType;
    .registers 3
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 50
    if-nez p0, :cond_4

    .line 71
    :cond_3
    :goto_3
    return-object v0

    .line 52
    :cond_4
    sget-object v1, Lmobisocial/omlib/model/RawIdentity$IdentityType;->Unknown:Lmobisocial/omlib/model/RawIdentity$IdentityType;

    invoke-virtual {v1}, Lmobisocial/omlib/model/RawIdentity$IdentityType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 53
    sget-object v0, Lmobisocial/omlib/model/RawIdentity$IdentityType;->Unknown:Lmobisocial/omlib/model/RawIdentity$IdentityType;

    goto :goto_3

    .line 54
    :cond_13
    sget-object v1, Lmobisocial/omlib/model/RawIdentity$IdentityType;->Server:Lmobisocial/omlib/model/RawIdentity$IdentityType;

    invoke-virtual {v1}, Lmobisocial/omlib/model/RawIdentity$IdentityType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 55
    sget-object v0, Lmobisocial/omlib/model/RawIdentity$IdentityType;->Server:Lmobisocial/omlib/model/RawIdentity$IdentityType;

    goto :goto_3

    .line 56
    :cond_22
    sget-object v1, Lmobisocial/omlib/model/RawIdentity$IdentityType;->Email:Lmobisocial/omlib/model/RawIdentity$IdentityType;

    invoke-virtual {v1}, Lmobisocial/omlib/model/RawIdentity$IdentityType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 57
    sget-object v0, Lmobisocial/omlib/model/RawIdentity$IdentityType;->Email:Lmobisocial/omlib/model/RawIdentity$IdentityType;

    goto :goto_3

    .line 58
    :cond_31
    sget-object v1, Lmobisocial/omlib/model/RawIdentity$IdentityType;->PhoneNumber:Lmobisocial/omlib/model/RawIdentity$IdentityType;

    invoke-virtual {v1}, Lmobisocial/omlib/model/RawIdentity$IdentityType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 59
    sget-object v0, Lmobisocial/omlib/model/RawIdentity$IdentityType;->PhoneNumber:Lmobisocial/omlib/model/RawIdentity$IdentityType;

    goto :goto_3

    .line 60
    :cond_40
    sget-object v1, Lmobisocial/omlib/model/RawIdentity$IdentityType;->Subscription:Lmobisocial/omlib/model/RawIdentity$IdentityType;

    invoke-virtual {v1}, Lmobisocial/omlib/model/RawIdentity$IdentityType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 61
    sget-object v0, Lmobisocial/omlib/model/RawIdentity$IdentityType;->Subscription:Lmobisocial/omlib/model/RawIdentity$IdentityType;

    goto :goto_3

    .line 62
    :cond_4f
    sget-object v1, Lmobisocial/omlib/model/RawIdentity$IdentityType;->OmletId:Lmobisocial/omlib/model/RawIdentity$IdentityType;

    invoke-virtual {v1}, Lmobisocial/omlib/model/RawIdentity$IdentityType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 63
    sget-object v0, Lmobisocial/omlib/model/RawIdentity$IdentityType;->OmletId:Lmobisocial/omlib/model/RawIdentity$IdentityType;

    goto :goto_3

    .line 66
    :cond_5e
    sget-object v1, Lmobisocial/omlib/model/RawIdentity$IdentityType;->Longdan:Lmobisocial/omlib/model/RawIdentity$IdentityType;

    invoke-virtual {v1}, Lmobisocial/omlib/model/RawIdentity$IdentityType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 67
    sget-object v0, Lmobisocial/omlib/model/RawIdentity$IdentityType;->Longdan:Lmobisocial/omlib/model/RawIdentity$IdentityType;

    goto :goto_3

    .line 68
    :cond_6d
    sget-object v1, Lmobisocial/omlib/model/RawIdentity$IdentityType;->Hashed:Lmobisocial/omlib/model/RawIdentity$IdentityType;

    invoke-virtual {v1}, Lmobisocial/omlib/model/RawIdentity$IdentityType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 69
    sget-object v0, Lmobisocial/omlib/model/RawIdentity$IdentityType;->Hashed:Lmobisocial/omlib/model/RawIdentity$IdentityType;

    goto :goto_3
.end method


# virtual methods
.method public asKey()[B
    .registers 2

    .prologue
    .line 121
    invoke-virtual {p0}, Lmobisocial/omlib/model/RawIdentity;->toHashedIdentity()Lmobisocial/longdan/LDProtocols$LDIdentityHash;

    move-result-object v0

    invoke-virtual {v0}, Lmobisocial/longdan/LDProtocols$LDIdentityHash;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public asLdIdentity()Lmobisocial/longdan/LDProtocols$LDIdentity;
    .registers 3

    .prologue
    .line 93
    new-instance v0, Lmobisocial/longdan/LDProtocols$LDIdentity;

    invoke-direct {v0}, Lmobisocial/longdan/LDProtocols$LDIdentity;-><init>()V

    .line 94
    .local v0, "id":Lmobisocial/longdan/LDProtocols$LDIdentity;
    iget-object v1, p0, Lmobisocial/omlib/model/RawIdentity;->value:Ljava/lang/String;

    iput-object v1, v0, Lmobisocial/longdan/LDProtocols$LDIdentity;->Principal:Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Lmobisocial/omlib/model/RawIdentity;->getWireType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmobisocial/longdan/LDProtocols$LDIdentity;->Type:Ljava/lang/String;

    .line 96
    return-object v0
.end method

.method public getWireType()Ljava/lang/String;
    .registers 3

    .prologue
    .line 100
    iget-object v0, p0, Lmobisocial/omlib/model/RawIdentity;->type:Lmobisocial/omlib/model/RawIdentity$IdentityType;

    sget-object v1, Lmobisocial/omlib/model/RawIdentity$IdentityType;->Unknown:Lmobisocial/omlib/model/RawIdentity$IdentityType;

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lmobisocial/omlib/model/RawIdentity;->unknownType:Ljava/lang/String;

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lmobisocial/omlib/model/RawIdentity;->type:Lmobisocial/omlib/model/RawIdentity$IdentityType;

    invoke-virtual {v0}, Lmobisocial/omlib/model/RawIdentity$IdentityType;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public toHashedIdentity()Lmobisocial/longdan/LDProtocols$LDIdentityHash;
    .registers 7

    .prologue
    .line 104
    iget-object v4, p0, Lmobisocial/omlib/model/RawIdentity;->type:Lmobisocial/omlib/model/RawIdentity$IdentityType;

    sget-object v5, Lmobisocial/omlib/model/RawIdentity$IdentityType;->Hashed:Lmobisocial/omlib/model/RawIdentity$IdentityType;

    if-ne v4, v5, :cond_11

    .line 105
    iget-object v4, p0, Lmobisocial/omlib/model/RawIdentity;->value:Ljava/lang/String;

    const-class v5, Lmobisocial/longdan/LDProtocols$LDIdentityHash;

    invoke-static {v4, v5}, Lmobisocial/serialization/SerializationUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmobisocial/longdan/LDProtocols$LDIdentityHash;

    .line 117
    :goto_10
    return-object v4

    .line 108
    :cond_11
    :try_start_11
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_16
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_11 .. :try_end_16} :catch_37

    move-result-object v2

    .line 112
    .local v2, "md5":Ljava/security/MessageDigest;
    iget-object v4, p0, Lmobisocial/omlib/model/RawIdentity;->value:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 113
    .local v3, "valueBytes":[B
    const/4 v4, 0x0

    array-length v5, v3

    invoke-virtual {v2, v3, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    .line 114
    new-instance v1, Lmobisocial/longdan/LDProtocols$LDIdentityHash;

    invoke-direct {v1}, Lmobisocial/longdan/LDProtocols$LDIdentityHash;-><init>()V

    .line 115
    .local v1, "idHash":Lmobisocial/longdan/LDProtocols$LDIdentityHash;
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    iput-object v4, v1, Lmobisocial/longdan/LDProtocols$LDIdentityHash;->Hash:[B

    .line 116
    iget-object v4, p0, Lmobisocial/omlib/model/RawIdentity;->type:Lmobisocial/omlib/model/RawIdentity$IdentityType;

    invoke-virtual {v4}, Lmobisocial/omlib/model/RawIdentity$IdentityType;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lmobisocial/longdan/LDProtocols$LDIdentityHash;->Type:Ljava/lang/String;

    move-object v4, v1

    .line 117
    goto :goto_10

    .line 109
    .end local v1    # "idHash":Lmobisocial/longdan/LDProtocols$LDIdentityHash;
    .end local v2    # "md5":Ljava/security/MessageDigest;
    .end local v3    # "valueBytes":[B
    :catch_37
    move-exception v0

    .line 110
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 126
    sget-object v0, Lmobisocial/omlib/model/RawIdentity$1;->$SwitchMap$mobisocial$omlib$model$RawIdentity$IdentityType:[I

    iget-object v1, p0, Lmobisocial/omlib/model/RawIdentity;->type:Lmobisocial/omlib/model/RawIdentity$IdentityType;

    invoke-virtual {v1}, Lmobisocial/omlib/model/RawIdentity$IdentityType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_ca

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmobisocial/omlib/model/RawIdentity;->unknownType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmobisocial/omlib/model/RawIdentity;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_28
    return-object v0

    .line 128
    :pswitch_29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "email:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmobisocial/omlib/model/RawIdentity;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    .line 130
    :pswitch_3f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fb:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmobisocial/omlib/model/RawIdentity;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    .line 132
    :pswitch_55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "phone:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmobisocial/omlib/model/RawIdentity;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    .line 134
    :pswitch_6b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sub:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmobisocial/omlib/model/RawIdentity;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    .line 136
    :pswitch_81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "omlet:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmobisocial/omlib/model/RawIdentity;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    .line 139
    :pswitch_97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hashed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmobisocial/omlib/model/RawIdentity;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_28

    .line 141
    :pswitch_ae
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ld:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmobisocial/omlib/model/RawIdentity;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_28

    .line 143
    :pswitch_c5
    const-string v0, "ld:system"

    goto/16 :goto_28

    .line 126
    nop

    :pswitch_data_ca
    .packed-switch 0x1
        :pswitch_29
        :pswitch_3f
        :pswitch_55
        :pswitch_6b
        :pswitch_81
        :pswitch_97
        :pswitch_ae
        :pswitch_c5
    .end packed-switch
.end method
