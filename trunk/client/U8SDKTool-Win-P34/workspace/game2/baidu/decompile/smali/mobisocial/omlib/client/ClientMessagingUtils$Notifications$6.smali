.class Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$6;
.super Ljava/lang/Object;
.source "ClientMessagingUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->notifyBlobTransferProgress([BJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;

.field final synthetic val$blobHash:[B

.field final synthetic val$bytesSent:J

.field final synthetic val$interested:Ljava/util/List;

.field final synthetic val$totalBytes:J


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;Ljava/util/List;[BJJ)V
    .registers 8
    .param p1, "this$1"    # Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;

    .prologue
    .line 381
    iput-object p1, p0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$6;->this$1:Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;

    iput-object p2, p0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$6;->val$interested:Ljava/util/List;

    iput-object p3, p0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$6;->val$blobHash:[B

    iput-wide p4, p0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$6;->val$bytesSent:J

    iput-wide p6, p0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$6;->val$totalBytes:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 19

    .prologue
    .line 385
    move-object/from16 v0, p0

    iget-object v4, v0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$6;->val$interested:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_8
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_51

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$InterestedListeners;

    .line 386
    .local v2, "il":Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$InterestedListeners;
    iget-object v4, v2, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$InterestedListeners;->sendableReference:Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$SendableReference;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$6;->val$blobHash:[B

    move-object/from16 v0, p0

    iget-wide v6, v0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$6;->val$bytesSent:J

    invoke-virtual {v4, v5, v6, v7}, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$SendableReference;->updateBlobProgress([BJ)V

    .line 387
    iget-object v4, v2, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$InterestedListeners;->listeners:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_27
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobisocial/omlib/interfaces/MessageDeliveryListener;

    .line 388
    .local v3, "m":Lmobisocial/omlib/interfaces/MessageDeliveryListener;
    iget-object v4, v2, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$InterestedListeners;->sendableReference:Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$SendableReference;

    iget-wide v4, v4, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$SendableReference;->objectId:J

    iget v6, v2, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$InterestedListeners;->blobIndex:I

    iget v7, v2, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$InterestedListeners;->blobCount:I

    move-object/from16 v0, p0

    iget-wide v8, v0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$6;->val$bytesSent:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$6;->val$totalBytes:J

    iget-object v12, v2, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$InterestedListeners;->sendableReference:Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$SendableReference;

    invoke-virtual {v12}, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$SendableReference;->totalBytesTransferred()J

    move-result-wide v12

    iget-object v14, v2, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$InterestedListeners;->sendableReference:Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$SendableReference;

    iget-wide v14, v14, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$SendableReference;->totalBlobLength:J

    invoke-interface/range {v3 .. v15}, Lmobisocial/omlib/interfaces/MessageDeliveryListener;->onAttachmentProgress(JIIJJJJ)V

    goto :goto_27

    .line 391
    .end local v2    # "il":Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$InterestedListeners;
    .end local v3    # "m":Lmobisocial/omlib/interfaces/MessageDeliveryListener;
    :cond_51
    return-void
.end method
