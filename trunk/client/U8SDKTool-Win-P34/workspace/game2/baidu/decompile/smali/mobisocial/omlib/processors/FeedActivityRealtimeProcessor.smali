.class public Lmobisocial/omlib/processors/FeedActivityRealtimeProcessor;
.super Ljava/lang/Object;
.source "FeedActivityRealtimeProcessor.java"

# interfaces
.implements Lmobisocial/omlib/client/interfaces/RealtimeMessageProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlib/processors/FeedActivityRealtimeProcessor$FeedPresence;
    }
.end annotation


# static fields
.field private static final DEFAULT_DURATION:I = 0x3a98

.field public static final PUSH_OBJECT:Ljava/lang/String; = "push_object"

.field public static final REALTIME_BROADCAST_ACTION:Ljava/lang/String; = "omlib.realtime.broadcast"

.field private static final TAG:Ljava/lang/String; = "FeedActivityRealtimeProcessor"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public processMessage(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/longdan/LDProtocols$LDRealtimeMessage;)V
    .registers 12
    .param p1, "client"    # Lmobisocial/omlib/client/LongdanClient;
    .param p2, "msg"    # Lmobisocial/longdan/LDProtocols$LDRealtimeMessage;

    .prologue
    .line 31
    invoke-virtual {p1}, Lmobisocial/omlib/client/LongdanClient;->getDbHelper()Lmobisocial/omlib/db/OMSQLiteHelper;

    move-result-object v6

    const-class v7, Lmobisocial/omlib/db/entity/OMAccount;

    iget-object v8, p2, Lmobisocial/longdan/LDProtocols$LDRealtimeMessage;->Sender:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/db/entity/OMAccount;

    .line 32
    .local v0, "account":Lmobisocial/omlib/db/entity/OMAccount;
    invoke-virtual {p1}, Lmobisocial/omlib/client/LongdanClient;->getDbHelper()Lmobisocial/omlib/db/OMSQLiteHelper;

    move-result-object v6

    const-class v7, Lmobisocial/omlib/db/entity/OMFeed;

    iget-object v8, p2, Lmobisocial/longdan/LDProtocols$LDRealtimeMessage;->Feed:Lmobisocial/longdan/LDProtocols$LDFeed;

    invoke-virtual {v6, v7, v8}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v1

    check-cast v1, Lmobisocial/omlib/db/entity/OMFeed;

    .line 33
    .local v1, "feed":Lmobisocial/omlib/db/entity/OMFeed;
    if-eqz v0, :cond_20

    if-nez v1, :cond_28

    .line 35
    :cond_20
    const-string v6, "FeedActivityRealtimeProcessor"

    const-string v7, "Got a realtime push for a feed that isnt synced yet "

    invoke-static {v6, v7}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_27
    :goto_27
    return-void

    .line 38
    :cond_28
    iget-boolean v6, v0, Lmobisocial/omlib/db/entity/OMAccount;->owned:Z

    if-nez v6, :cond_27

    .line 42
    iget-object v6, p2, Lmobisocial/longdan/LDProtocols$LDRealtimeMessage;->Body:[B

    const-class v7, Lmobisocial/omlib/processors/FeedActivityRealtimeProcessor$FeedPresence;

    invoke-static {v6, v7}, Lmobisocial/serialization/SerializationUtils;->fromJson([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmobisocial/omlib/processors/FeedActivityRealtimeProcessor$FeedPresence;

    .line 43
    .local v4, "fp":Lmobisocial/omlib/processors/FeedActivityRealtimeProcessor$FeedPresence;
    new-instance v5, Lmobisocial/omlib/model/RealtimePushObject;

    invoke-direct {v5}, Lmobisocial/omlib/model/RealtimePushObject;-><init>()V

    .line 44
    .local v5, "pushObject":Lmobisocial/omlib/model/RealtimePushObject;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 45
    .local v2, "currTIme":J
    iget-object v6, v4, Lmobisocial/omlib/processors/FeedActivityRealtimeProcessor$FeedPresence;->Duration:Ljava/lang/Integer;

    if-eqz v6, :cond_68

    iget-object v6, v4, Lmobisocial/omlib/processors/FeedActivityRealtimeProcessor$FeedPresence;->Duration:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    add-long/2addr v6, v2

    :goto_4d
    iput-wide v6, v5, Lmobisocial/omlib/model/RealtimePushObject;->expiration:J

    .line 46
    iget-wide v6, v1, Lmobisocial/omlib/db/entity/OMFeed;->id:J

    iput-wide v6, v5, Lmobisocial/omlib/model/RealtimePushObject;->feedId:J

    .line 47
    iget-object v6, v4, Lmobisocial/omlib/processors/FeedActivityRealtimeProcessor$FeedPresence;->Activity:Ljava/lang/String;

    iput-object v6, v5, Lmobisocial/omlib/model/RealtimePushObject;->action:Ljava/lang/String;

    .line 48
    iget-object v6, v0, Lmobisocial/omlib/db/entity/OMAccount;->name:Ljava/lang/String;

    if-eqz v6, :cond_6c

    iget-object v6, v0, Lmobisocial/omlib/db/entity/OMAccount;->name:Ljava/lang/String;

    :goto_5d
    iput-object v6, v5, Lmobisocial/omlib/model/RealtimePushObject;->senderName:Ljava/lang/String;

    .line 49
    new-instance v6, Lmobisocial/omlib/processors/FeedActivityRealtimeProcessor$1;

    invoke-direct {v6, p0, p1, v0, v5}, Lmobisocial/omlib/processors/FeedActivityRealtimeProcessor$1;-><init>(Lmobisocial/omlib/processors/FeedActivityRealtimeProcessor;Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/entity/OMAccount;Lmobisocial/omlib/model/RealtimePushObject;)V

    invoke-static {v6}, Lmobisocial/util/PlatformUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_27

    .line 45
    :cond_68
    const-wide/16 v6, 0x3a98

    add-long/2addr v6, v2

    goto :goto_4d

    .line 48
    :cond_6c
    const-string v6, "Vanishing Kitty"

    goto :goto_5d
.end method
