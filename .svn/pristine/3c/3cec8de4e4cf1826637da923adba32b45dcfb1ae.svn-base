.class public Lmobisocial/omlib/model/RealtimePushObject;
.super Ljava/lang/Object;
.source "RealtimePushObject.java"


# instance fields
.field public action:Ljava/lang/String;

.field public expiration:J

.field public feedId:J

.field public senderName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 17
    if-nez p1, :cond_5

    .line 24
    :cond_4
    :goto_4
    return v2

    .line 19
    :cond_5
    if-ne p1, p0, :cond_9

    move v2, v1

    .line 20
    goto :goto_4

    .line 21
    :cond_9
    instance-of v3, p1, Lmobisocial/omlib/model/RealtimePushObject;

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 23
    check-cast v0, Lmobisocial/omlib/model/RealtimePushObject;

    .line 24
    .local v0, "other":Lmobisocial/omlib/model/RealtimePushObject;
    iget-wide v4, v0, Lmobisocial/omlib/model/RealtimePushObject;->expiration:J

    iget-wide v6, p0, Lmobisocial/omlib/model/RealtimePushObject;->expiration:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3c

    iget-wide v4, v0, Lmobisocial/omlib/model/RealtimePushObject;->feedId:J

    iget-wide v6, p0, Lmobisocial/omlib/model/RealtimePushObject;->feedId:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3c

    iget-object v3, v0, Lmobisocial/omlib/model/RealtimePushObject;->action:Ljava/lang/String;

    if-nez v3, :cond_32

    iget-object v3, p0, Lmobisocial/omlib/model/RealtimePushObject;->action:Ljava/lang/String;

    if-nez v3, :cond_3c

    :cond_28
    iget-object v3, v0, Lmobisocial/omlib/model/RealtimePushObject;->senderName:Ljava/lang/String;

    if-nez v3, :cond_3e

    iget-object v3, p0, Lmobisocial/omlib/model/RealtimePushObject;->senderName:Ljava/lang/String;

    if-nez v3, :cond_3c

    :goto_30
    move v2, v1

    goto :goto_4

    :cond_32
    iget-object v3, v0, Lmobisocial/omlib/model/RealtimePushObject;->action:Ljava/lang/String;

    iget-object v4, p0, Lmobisocial/omlib/model/RealtimePushObject;->action:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    :cond_3c
    move v1, v2

    goto :goto_30

    :cond_3e
    iget-object v3, v0, Lmobisocial/omlib/model/RealtimePushObject;->senderName:Ljava/lang/String;

    iget-object v4, p0, Lmobisocial/omlib/model/RealtimePushObject;->senderName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    goto :goto_30
.end method

.method public hashCode()I
    .registers 8

    .prologue
    const/16 v6, 0x20

    .line 29
    iget-wide v2, p0, Lmobisocial/omlib/model/RealtimePushObject;->expiration:J

    iget-wide v4, p0, Lmobisocial/omlib/model/RealtimePushObject;->expiration:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v0, v2

    .line 30
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lmobisocial/omlib/model/RealtimePushObject;->feedId:J

    iget-wide v4, p0, Lmobisocial/omlib/model/RealtimePushObject;->feedId:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 31
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lmobisocial/omlib/model/RealtimePushObject;->action:Ljava/lang/String;

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lmobisocial/omlib/model/RealtimePushObject;->action:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_20
    add-int v0, v2, v1

    .line 32
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lmobisocial/omlib/model/RealtimePushObject;->senderName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 33
    return v0

    .line 31
    :cond_2d
    const/4 v1, 0x0

    goto :goto_20
.end method
