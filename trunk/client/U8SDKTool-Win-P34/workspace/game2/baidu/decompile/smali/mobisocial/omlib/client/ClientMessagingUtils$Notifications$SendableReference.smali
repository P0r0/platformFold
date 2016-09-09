.class Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$SendableReference;
.super Ljava/lang/Object;
.source "ClientMessagingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendableReference"
.end annotation


# instance fields
.field public attachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field blobTransfersComplete:I

.field private mBytesTransferredPerBlob:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public objectId:J

.field objectSent:Z

.field final synthetic this$1:Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;

.field totalBlobLength:J


# direct methods
.method private constructor <init>(Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;)V
    .registers 3

    .prologue
    .line 194
    iput-object p1, p0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$SendableReference;->this$1:Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$SendableReference;->mBytesTransferredPerBlob:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;Lmobisocial/omlib/client/ClientMessagingUtils$1;)V
    .registers 3
    .param p1, "x0"    # Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;
    .param p2, "x1"    # Lmobisocial/omlib/client/ClientMessagingUtils$1;

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$SendableReference;-><init>(Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;)V

    return-void
.end method


# virtual methods
.method public totalBytesTransferred()J
    .registers 7

    .prologue
    .line 213
    const-wide/16 v2, 0x0

    .line 214
    .local v2, "total":J
    iget-object v1, p0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$SendableReference;->mBytesTransferredPerBlob:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 215
    .local v0, "l":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 216
    goto :goto_c

    .line 217
    .end local v0    # "l":Ljava/lang/Long;
    :cond_1e
    return-wide v2
.end method

.method public updateBlobProgress([BJ)V
    .registers 8
    .param p1, "blobHash"    # [B
    .param p2, "bytesTransferred"    # J

    .prologue
    .line 209
    iget-object v0, p0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$SendableReference;->mBytesTransferredPerBlob:Ljava/util/Map;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    return-void
.end method
