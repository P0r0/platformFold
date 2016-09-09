.class Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$4;
.super Ljava/lang/Object;
.source "ClientMessagingUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->notifyBlobTransferComplete([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;

.field final synthetic val$interested:Ljava/util/List;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;Ljava/util/List;)V
    .registers 3
    .param p1, "this$1"    # Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;

    .prologue
    .line 342
    iput-object p1, p0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$4;->this$1:Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;

    iput-object p2, p0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$4;->val$interested:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 346
    iget-object v2, p0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$4;->val$interested:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$InterestedListeners;

    .line 347
    .local v0, "il":Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$InterestedListeners;
    iget-object v3, v0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$InterestedListeners;->listeners:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_18
    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobisocial/omlib/interfaces/MessageDeliveryListener;

    .line 348
    .local v1, "m":Lmobisocial/omlib/interfaces/MessageDeliveryListener;
    iget-object v4, v0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$InterestedListeners;->sendableReference:Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$SendableReference;

    iget-wide v4, v4, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$SendableReference;->objectId:J

    iget v6, v0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$InterestedListeners;->blobIndex:I

    iget v7, v0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$InterestedListeners;->blobCount:I

    invoke-interface {v1, v4, v5, v6, v7}, Lmobisocial/omlib/interfaces/MessageDeliveryListener;->onAttachmentTransferComplete(JII)V

    .line 349
    iget-object v4, v0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$InterestedListeners;->sendableReference:Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$SendableReference;

    iget v5, v4, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$SendableReference;->blobTransfersComplete:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$SendableReference;->blobTransfersComplete:I

    .line 350
    iget-object v4, v0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$InterestedListeners;->sendableReference:Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$SendableReference;

    iget-object v4, v4, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$SendableReference;->attachments:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, v0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$InterestedListeners;->sendableReference:Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$SendableReference;

    iget v5, v5, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$SendableReference;->blobTransfersComplete:I

    if-ne v4, v5, :cond_18

    .line 351
    iget-object v4, p0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$4;->this$1:Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;

    iget-object v5, v0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$InterestedListeners;->sendableReference:Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$SendableReference;

    iget-wide v6, v5, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$SendableReference;->objectId:J

    # invokes: Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->checkDeliveryComplete(J)V
    invoke-static {v4, v6, v7}, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->access$200(Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;J)V

    goto :goto_18

    .line 355
    .end local v0    # "il":Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$InterestedListeners;
    .end local v1    # "m":Lmobisocial/omlib/interfaces/MessageDeliveryListener;
    :cond_4f
    return-void
.end method
