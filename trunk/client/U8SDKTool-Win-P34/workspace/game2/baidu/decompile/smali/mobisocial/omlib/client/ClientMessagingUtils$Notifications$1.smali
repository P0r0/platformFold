.class Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$1;
.super Ljava/lang/Object;
.source "ClientMessagingUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->notifyDeliveryScheduled(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;

.field final synthetic val$attachmentCount:I

.field final synthetic val$ls:Ljava/util/List;

.field final synthetic val$objectId:J


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;Ljava/util/List;JI)V
    .registers 7
    .param p1, "this$1"    # Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;

    .prologue
    .line 288
    iput-object p1, p0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$1;->this$1:Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;

    iput-object p2, p0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$1;->val$ls:Ljava/util/List;

    iput-wide p3, p0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$1;->val$objectId:J

    iput p5, p0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$1;->val$attachmentCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 292
    iget-object v1, p0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$1;->val$ls:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/interfaces/MessageDeliveryListener;

    .line 293
    .local v0, "l":Lmobisocial/omlib/interfaces/MessageDeliveryListener;
    iget-wide v2, p0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$1;->val$objectId:J

    iget v4, p0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$1;->val$attachmentCount:I

    invoke-interface {v0, v2, v3, v4}, Lmobisocial/omlib/interfaces/MessageDeliveryListener;->onObjectDeliveryScheduled(JI)V

    goto :goto_6

    .line 295
    .end local v0    # "l":Lmobisocial/omlib/interfaces/MessageDeliveryListener;
    :cond_1a
    return-void
.end method
